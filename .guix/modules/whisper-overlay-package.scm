;;; SPDX-License-Identifier: GPL-3.0-or-later
;;; Copyright © 2025 Nicolas Graves <ngraves@ngraves.fr>

(define-module (whisper-overlay-package)
  #:use-module (gnu packages)
  #:use-module (gnu packages audio)
  #:use-module (gnu packages check)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages machine-learning)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages python)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-science)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages terminals)
  #:use-module (gnu packages vulkan)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages xml)
  #:use-module (guix build-system cargo)
  #:use-module (guix build-system meson)
  #:use-module (guix build-system pyproject)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module ((guix licenses) #:prefix license:))

(define-public python-openwakeword
  (package
    (name "python-openwakeword")
    (version "0.6.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/dscripka/openWakeWord")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0cv85qv31kkhfcdss1ycqf0pxpqs7vjndma7cgsd678027sxbia2"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      ;; XXX: Tests require unclearly-licensed model weights.
      #:tests? #f))
    (propagated-inputs (list (list onnxruntime "python")
                             python-requests
                             python-scikit-learn
                             python-scipy
                             python-tqdm
                             (list tensorflow-lite "python")))
    (native-inputs (list
                    ;; XXX: Those are required if some tests are run.
                    ;; python-mock
                    ;; python-pytest
                    ;; python-pytest-cov
                    ;; python-pytest-flake8
                    ;; python-pytest-mypy
                    python-setuptools
                    python-wheel))
    (home-page "https://github.com/dscripka/openWakeWord")
    (synopsis "Wake word (or phrase) detection framework")
    (description
     "This package provides an open-source audio wake word (or phrase)
detection framework with a focus on performance and simplicity.")
    (license license:asl2.0)))

(define-public python-openwakeword-minimal
  (package/inherit python-openwakeword
    (name "python-openwakeword-minimal")
    (arguments
     (substitute-keyword-arguments (package-arguments python-openwakeword)
       ((#:phases phases #~%standard-phases)
        #~(modify-phases #$phases
            (add-after 'unpack 'relax-requirements
              (lambda _
                (substitute* "setup.py"
                  (("^ *'onnxruntime>=.*")
                   ""))
                (delete-file "openwakeword/vad.py")
                (substitute* "openwakeword/__init__.py"
                  (("^from openwakeword\\.vad import VAD.*")
                   "")
                  (("'VAD',")
                   ""))))))))
    (propagated-inputs
     (modify-inputs (package-propagated-inputs python-openwakeword)
       (delete "onnxruntime:python")))
    (description
     (string-append (package-description python-openwakeword) "\n\
Note: This minimal variant doesn't provide the additional Voice Activity
Detection."))))

(define-public python-realtimestt
  (package
    (name "python-realtimestt")
    (version "0.3.104")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
              (url "https://github.com/KoljaB/RealTimeSTT")
              (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1455z2m86qdldap211rp1z9zdwjvmxhdv49cg7bci37190yh1r3h"))
       (patches
        (search-patches "/home/graves/spheres/info/dots/channels/nonguix/nongnu/packages/patches/python-realtimestt-remove-pvporcupine.patch"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      ;; XXX: Tests require sibling package realtimetts
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'unpack 'switch-default-to-tflite
            (lambda _
              (substitute* "audio_recorder.py"
                (("\"onnx\"")
                 "\"tflite\""))))
          (add-after 'unpack 'relax-requirements
            (lambda _
              (substitute* "requirements.txt"
                (("^(scipy|websockets)==.*" all target)
                 (string-append target "\n"))))))))
    (propagated-inputs
     (list python-faster-whisper
           python-halo
           python-openwakeword-minimal
           python-pyaudio
           python-scipy
           python-soundfile
           python-pytorch
           python-torchaudio
           python-webrtcvad-wheels
           python-websocket-client
           python-websockets))
    (native-inputs
     (list ;; python-pyqt python-pytest  ; required for tests.
      python-setuptools python-wheel))
    (home-page "https://github.com/KoljaB/RealTimeSTT")
    (synopsis "Voice Activity Detection and Transcription System")
    (description
     "This package provides a fast Voice Activity Detection and Transcription System.
Note: This package default on the tensorflow-lite backend.")
    (license license:expat)))

(define-public python-realtimestt-onnx
  (package/inherit python-realtimestt
    (name "python-realtimestt-onnx")
    (arguments
     (substitute-keyword-arguments (package-arguments python-realtimestt)
       ((#:phases phases #~%standard-phases)
        #~(modify-phases #$phases
            (delete 'switch-default-to-tflite)))))
    (propagated-inputs
     (modify-inputs (package-propagated-inputs python-realtimestt)
       (replace "python-openwakeword-minimal" python-openwakeword)))
    (description
     "This package provides a fast Voice Activity Detection and Transcription System.
Note: This package default on the onnxruntime backend.")))

(define-public python-realtimestt-for-whisper-overlay
  (package/inherit python-realtimestt
    (name "python-realtimestt")
    (version "0.3.104")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
              (url "https://github.com/oddlama/RealTimeSTT")
              (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1455z2m86qdldap211rp1z9zdwjvmxhdv49cg7bci37190yh1r3h"))
       ;; (patches
       ;;  (search-patches "python-realtimestt-remove-pvporcupine.patch"))
       ))
    (description
     "This package provides a fast Voice Activity Detection and Transcription System.
Note: This package variant is a fork for whisper-overlay.")))

(define-public gtk4-layer-shell
  (package
    (name "gtk4-layer-shell")
    (version "1.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/wmww/gtk4-layer-shell")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1m5ihzqngj5jgfs71hkngq81nv3ppd1c12hwjhplrbw3jbplym6l"))))
    (build-system meson-build-system)
    (arguments
     (list
      #:configure-flags #~(list "-Dtests=true"
                                "-Dsmoke-tests=false")
      #:phases
      #~(modify-phases %standard-phases
          (add-before 'configure 'configure-check
            (lambda _
              (setenv "HOME" (canonicalize-path ".."))
              (define (test-regex tests)
                (string-append ".*(" (string-join tests "|") ")',"))
              (substitute* "test/layer-tests/meson.build"
                (((test-regex '("test-layer-surface-popup"
                                "test-popup-configure-delay"))
                  all)
                 (string-append "# " all)))
              (substitute* "test/lock-tests/meson.build"
                (((test-regex '("test-async-failure")) all)
                 (string-append "# " all))))))))
    (native-inputs
     (list gobject-introspection pkg-config python python-pygobject vala))
    (inputs (list wayland gtk))
    (home-page "https://github.com/wmww/gtk-layer-shell")
    (synopsis "Library to create Wayland desktop components using the Layer
Shell protocol")
    (description "Layer Shell is a Wayland protocol for desktop shell
components, such as panels, notifications and wallpapers.  It can be used to
anchor windows to a corner or edge of the output, or stretch them across the
entire output.  It supports all Layer Shell features including popups and
popovers.")
    (license license:expat)))

(define-public whisper-overlay
  (let ((commit "b851520617887f09be614a990b2d50caba093525")
        (revision "0"))
    (package
      (name "whisper-overlay")
      (version (git-version "0.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
                (url "https://github.com/oddlama/whisper-overlay")
                (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1z4h040rbz2sb5g0cqs0895ldzpa1b81lxzzn7rf0l6x532wc1xb"))))
      (build-system cargo-build-system)
      ;; (arguments
      ;;  (list
      ;;   #:modules '((guix build utils)
      ;;               (guix build cargo-build-system)
      ;;               (ice-9 ftw)
      ;;               (srfi srfi-1)
      ;;               (srfi srfi-26))
      ;;   #:phases
      ;;   #~(modify-phases %standard-phases
      ;;       (add-after 'install 'wrap-program
      ;;         (lambda _
      ;;           (wrap-program (string-append #$output "/bin/whisper-overlay")
      ;;             `("XDG_DATA_DIRS" ":" prefix
      ;;               ,(pk 'r (filter-map
      ;;                        (lambda (file)
      ;;                          (find (negate (cut member <> '("." "..")))
      ;;                                (or (scandir file) '())))
      ;;                        (list #$(file-append (this-package-input "gtk")
      ;;                                             "/share/gsettings-schema")
      ;;                              #$(file-append (this-package-input
      ;;                                              "gsettings-desktop-schemas")
      ;;                                             "/share/gsettings-schema")))))))))))
      (native-inputs
       (list pkg-config))
      (inputs
       (cons* gtk
              gtk4-layer-shell
              wayland
              pango
              glib
              cairo
              graphene
              gdk-pixbuf
              harfbuzz
              vulkan-loader
              alsa-lib
              libxkbcommon
              gsettings-desktop-schemas
              ((@ (guix import crate) cargo-inputs-from-lockfile)
               "../../Cargo.lock")
              ;; (cargo-inputs 'whisper-overlay
              ;;               #:module '(whisper-overlay-crates))
              ))
      (synopsis "Wayland overlay providing speech-to-text functionality")
      (description "A wayland overlay providing speech-to-text functionality for
any application via a global push-to-talk hotkey.")
      (home-page "https://github.com/oddlama/whisper-overlay")
      (license license:expat))))


(use-modules (guix profiles))

(packages->manifest (list python-realtimestt python))
