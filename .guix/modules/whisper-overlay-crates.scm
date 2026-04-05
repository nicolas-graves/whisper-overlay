;; SPDX-License-Identifier: GPL-3.0-or-later
;; Copyright © 2025 Nicolas Graves <ngraves@ngraves.fr>

(define-module (whisper-overlay-crates)
  #:use-module (guix build-system cargo)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix gexp)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages base)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages image)
  #:use-module (gnu packages rust-crates)
  #:export (lookup-cargo-inputs))

(define-syntax crates*
  (syntax-rules ()
    ((_ name ...)
     (list (@@ (gnu packages rust-crates) name) ...))))

(define rust-block2-0.4.0
  (crate-source "block2" "0.4.0"
                "0bzjjlqa7jmis1zlzciq7g9r8hzjwn5z3x9qc71zrnyqb47ad2p5"))

(define rust-bytemuck-1.16.0
  (crate-source "bytemuck" "1.16.0"
                "19dwdvjri09mhgrngy0737965pchm25ix2yma8sgwpjxrcalr0vq"))

(define rust-clap-4.5.7
  (crate-source "clap" "4.5.7"
                "0gs31zd9gma5vwdyvb4y4gfqnnd9zvbm1wir9x3ssf26sg73vf2x"))

(define rust-clap-builder-4.5.7
  (crate-source "clap_builder" "4.5.7"
                "0py0m2ixnrjc0vssj59ypicz27ajj4hn2wgq52zkzsw54ibh9qpp"))

(define rust-clap-derive-4.5.5
  (crate-source "clap_derive" "4.5.5"
                "1ih6pwg3h74gjjjjyc7csgqi7lffd0g0i8d7p8lndcjgrw62k067"))

(define rust-colorgrad-0.6.2
  (crate-source "colorgrad" "0.6.2"
                "1dkzc72il8iam904pa2p3d32dgz9fw715lwkl3h0b7ab8xfl0pva"))

(define rust-core-foundation-sys-0.8.2
  (crate-source "core-foundation-sys" "0.8.2"
                "06wq7yb7mlkc4h2kbc0yjfi0xv44z4snzdpr7c1l0zm4hi91n8pa"))

(define rust-enigo-0.2.1
  (crate-source "enigo" "0.2.1"
                "1yvh7xhcd37jg9qa9w43rj1kc62szdwm6018gm21f4jrr0gs11q0"))

(define rust-futures-util-0.3.30
  (crate-source "futures-util" "0.3.30"
                "0j0xqhcir1zf2dcbpd421kgw6wvsk0rpxflylcysn1rlp3g02r1x"))

(define rust-futures-macro-0.3.30
  (crate-source "futures-macro" "0.3.30"
                "1b49qh9d402y8nka4q6wvvj0c88qq91wbr192mdn5h54nzs0qxc7"))

(define rust-futures-task-0.3.30
  (crate-source "futures-task" "0.3.30"
                "013h1724454hj8qczp8vvs10qfiqrxr937qsrv6rhii68ahlzn1q"))

(define rust-gdk-pixbuf-0.19.8
  (crate-source "gdk-pixbuf" "0.19.8"
                "16c6kznkh3vi82843ays8awdm37fwjd1fblv6g3h64824shsnkk2"))

(define rust-gdk-pixbuf-sys-0.19.8
  (crate-source "gdk-pixbuf-sys" "0.19.8"
                "0y93g24mdgskvyhva46xv3qyb1cvj5xpi0yqnh7cb31wz2j0byjf"))

(define rust-gdk4-0.8.2
  (crate-source "gdk4" "0.8.2"
                "01qak43mrlszsy9cfsmqk1ql4228m2rylbg514g3fsidsjfmq9nv"))

(define rust-gdk4-sys-0.8.2
  (crate-source "gdk4-sys" "0.8.2"
                "1pb6vklx9ik7jx9cmrw2vywlx9ssqhll8q77ky8p8w56x2s8yhf9"))

(define rust-gdk4-wayland-0.8.2
  (crate-source "gdk4-wayland" "0.8.2"
                "0w8kkdgwj0s5r92r4ml1k8dwn6gyrvmnpvvbxhzlwmscpvna087n"))

(define rust-gdk4-wayland-sys-0.8.2
  (crate-source "gdk4-wayland-sys" "0.8.2"
                "00qqwqkwd3jzha64cpb4kf8g1ixxpbp289kix2q88wcigj9d6pvs"))

(define rust-gl-0.14.0
  (crate-source "gl" "0.14.0"
                "015lgy3qpzdw7mnh59a4y4hdjq1fhv7nkqlmh1h6fzc212qxlkm9"))

(define rust-graphene-rs-0.19.8
  (crate-source "graphene-rs" "0.19.8"
                "1krblj6kbnixgkmz2b3494jmlm2xlv3qz5qm585frn943l1qdyzm"))

(define rust-graphene-sys-0.19.8
  (crate-source "graphene-sys" "0.19.8"
                "01dg4wgqxaqkdv0vl7hr14b6kbbm96gwdsb5a2ss9jxw8h4hwlrg"))

(define rust-gsk4-0.8.2
  (crate-source "gsk4" "0.8.2"
                "1gi1f9s2nd5m2zfwb91vijpzr6nxbfa58inrwml497wkyr5qhqvm"))

(define rust-gsk4-sys-0.8.2
  (crate-source "gsk4-sys" "0.8.2"
                "1p5kf912s8qs38lhzzwnm26v498wkp68mx92z38vnf3ccgr4n0i3"))

(define rust-gtk4-0.8.2
  (crate-source "gtk4" "0.8.2"
                "1avinslgnsz3wywf4dfaza8w9c29krd10hxmi8si3bq8kcqi2kmh"))

(define rust-gtk4-layer-shell-0.3.0
  (crate-source "gtk4-layer-shell" "0.3.0"
                "1fmnlv07i7isql2x32s6946j93jqdixvdsrw4qbyn23jdni3gnnf"))

(define rust-gtk4-layer-shell-sys-0.2.0
  (crate-source "gtk4-layer-shell-sys" "0.2.0"
                "0a2fihd4r38xwfyy374k84ib21sd8sb2ipm8nr9franhprm5pjb7"))

(define rust-gtk4-macros-0.8.2
  (crate-source "gtk4-macros" "0.8.2"
                "0214a8y68kknxcnihsfxwsqvll7ss2rbiplr51cyk34dz1z5lrgc"))

(define rust-gtk4-sys-0.8.2
  (crate-source "gtk4-sys" "0.8.2"
                "1dapgvbkhf0kcm2jfmj8r98wzyhwmr5iv358dvb73sl5gxmsi2lc"))

(define rust-harfbuzz-rs-2.0.1
  (crate-source "harfbuzz_rs" "2.0.1"
                "07ajympxragq504fdw5lpkyjv2gqlm065f1pfq7h23cj4gy8rhaq"))

(define rust-icrate-0.1.2
  (crate-source "icrate" "0.1.2"
                "0hh6wdjv858y2crmfkq0zk7xv7rxywkxvgcp8s3fn9k9hacr3diz"))

(define rust-libc-0.2.149
  (crate-source "libc" "0.2.149"
                "16z2zqswcbk1qg5yigfyr0d44v0974amdaj564dmv5dpi2y770d0"))

(define rust-libc-0.2.150
  (crate-source "libc" "0.2.150"
                "0g10n8c830alndgjb8xk1i9kz5z727np90z1z81119pr8d3jmnc9"))

(define rust-owo-colors-3.2.0
  (crate-source "owo-colors" "3.2.0"
                "1x7b8kf3854zlix6cpai065fjrdgfil4gq5v2pmfc17cg3b8yi10"))

(define rust-parking-2.2.0
  (crate-source "parking" "2.2.0"
                "1blwbkq6im1hfxp5wlbr475mw98rsyc0bbr2d5n16m38z253p0dv"))

(define rust-parking-lot-0.12.0
  (crate-source "parking_lot" "0.12.0"
                "0n7gp0cnfghglc370cxhawwfijvhj3wrjh8gdi8c06m6jcjfrxc7"))

(define rust-tokio-1.38.0
  (crate-source "tokio" "1.38.0"
                "0jjsb2c9dqi93yij3rqzsh9bk0z3qyasmw1n8qkny3d8lw14lkxs"))

(define rust-tokio-macros-2.3.0
  (crate-source "tokio-macros" "2.3.0"
                "16nkan0x9b62hnqmjqcyd71j1mgpda2sv7gfm2mvbm39l2cfjnjz"))

(define rust-wayland-protocols-misc-0.2.0
  (crate-source "wayland-protocols-misc" "0.2.0"
                "07nyfxx16kllf6qjq3fysxac3s0jh8dn0f2ckf61h05j80vr79dz"))

(define rust-wayland-protocols-plasma-0.2.0
  (crate-source "wayland-protocols-plasma" "0.2.0"
                "0yglbxd4ka8284k0j0ssh9hf6wd9qp2n0s2qrsdymyaz258kb013"))

(define rust-wayland-protocols-wlr-0.2.0
  (crate-source "wayland-protocols-wlr" "0.2.0"
                "1mjww9psk2nc5hm2q4s3qas30rbzfg1sb6qgw518fbbcdfvn27xd"))

(define-cargo-inputs lookup-cargo-inputs
  (whisper-overlay
   => '(("addr2line" "0.21.0" "1jx0k3iwyqr8klqbzk6kjvr496yd94aspis10vwsj5wy7gib4c4a")
        ("adler" "1.0.2" "1zim79cvzd5yrkzl3nyfx0avijwgk9fqv3yrscdy1cc79ih02qpj")
        ("aho-corasick" "1.1.3" "05mrpkvdgp5d20y2p989f187ry9diliijgwrs254fs9s1m1x6q4f")
        ("alsa" "0.9.0" "1klxza8bn23qbyqs7bg3kls1wk9h82zc7ihsq248lf1mjdvn1zip")
        ("alsa-sys" "0.3.1" "09qmmnpmlcj23zcgx2xsi4phcgm5i02g9xaf801y7i067mkfx3yv")
        ("anstream" "0.6.14" "0nx1vnfs2lil1sl14l49i6jvp6zpjczn85wxx4xw1ycafvx7b321")
        ("anstyle" "1.0.7" "06qxmrba0xbhv07jpdvrdrhw1hjlb9icj88bqvlnissz9bqgr383")
        ("anstyle-parse"
         "0.2.4"
         "1m121pa4plpcb4g7xali2kv9njmgb3713q3fxf60b4jd0fli2fn0")
        ("anstyle-query"
         "1.1.0"
         "14a3h3k541jmqm5s8hbdw8l0dcgkrryqwxgicm8x6623fvxnw65d")
        ("anstyle-wincon"
         "3.0.3"
         "06gv2vbj4hvwb8fxqjmvabp5kx2w01cjgh86pd98y1mpzr4q98v1")
        ("async-channel"
         "2.3.1"
         "0skvwxj6ysfc6d7bhczz9a2550260g62bm5gl0nmjxxyn007id49")
        ("autocfg" "1.3.0" "1c3njkfzpil03k92q0mij5y1pkhhfr4j3bf0h53bgl2vs85lsjqc")
        ("backtrace" "0.3.71" "17bgd7pbjb9gc8q47qwsg2lmy9i62x3bsjmmnjrwh5z8s805ic16")
        ("bindgen" "0.69.4" "18194611hn3k1dkxlha7a52sr8vmfhl9blc54xhj08cahd8wh3d0")
        ("bitflags" "1.3.2" "12ki6w8gn1ldq7yz9y680llwk5gmrhrzszaa17g1sbrw2r2qvwxy")
        ("bitflags" "2.5.0" "1h91vdx1il069vdiiissj8ymzj130rbiic0dbs77yxjgjim9sjyg")
        ("bitvec" "1.0.1" "173ydyj2q5vwj88k6xgjnfsshs4x9wbvjjv7sm0h36r34hn87hhv")
        ("block-sys" "0.2.1" "1rzp0218mwigdmfd5rhmj5h7c1vp0bq0nxaklhsvi8vydrls11df")
        ("block2" "0.4.0" "0bzjjlqa7jmis1zlzciq7g9r8hzjwn5z3x9qc71zrnyqb47ad2p5")
        ("bumpalo" "3.16.0" "0b015qb4knwanbdlp1x48pkb4pm57b8gidbhhhxr900q2wb6fabr")
        ("bytemuck" "1.16.0" "19dwdvjri09mhgrngy0737965pchm25ix2yma8sgwpjxrcalr0vq")
        ("bytes" "1.6.0" "1jf2awc1fywpk15m6pxay3wqcg65ararg9xi4b08vnszwiyy2kai")
        ("cairo-rs" "0.19.4" "0qp5rixgipdj9d8yd5458hzfxam1rgpzcxi90vq6q0v91r6jmb5j")
        ("cairo-sys-rs"
         "0.19.2"
         "0r0yp0lph77lm4blrn6fvdmz2i3r8ibkkjg6nmwbvvv4jq8v6fzx")
        ("cc" "1.0.99" "15gnhjiyl323b6lmm05sn8rasyckjqf4n2w7gym4y4j4zmki1icn")
        ("cesu8" "1.1.0" "0g6q58wa7khxrxcxgnqyi9s1z2cjywwwd3hzr5c55wskhx6s0hvd")
        ("cexpr" "0.6.0" "0rl77bwhs5p979ih4r0202cn5jrfsrbgrksp40lkfz5vk1x3ib3g")
        ("cfg-expr" "0.15.8" "00lgf717pmf5qd2qsxxzs815v6baqg38d6m5i6wlh235p14asryh")
        ("cfg-if" "1.0.0" "1za0vb97n4brpzpv8lsbnzmq5r8f2b0cpqqr0sy8h5bn751xxwds")
        ("clang-sys" "1.8.1" "1x1r9yqss76z8xwpdanw313ss6fniwc1r7dzb5ycjn0ph53kj0hb")
        ("clap" "4.5.7" "0gs31zd9gma5vwdyvb4y4gfqnnd9zvbm1wir9x3ssf26sg73vf2x")
        ("clap_builder"
         "4.5.7"
         "0py0m2ixnrjc0vssj59ypicz27ajj4hn2wgq52zkzsw54ibh9qpp")
        ("clap_derive" "4.5.5" "1ih6pwg3h74gjjjjyc7csgqi7lffd0g0i8d7p8lndcjgrw62k067")
        ("clap_lex" "0.7.1" "0w0fci2zp1bi2kqjnp14vdxsa0r34yjd35i845c8bmfvmc5wz0jb")
        ("color-eyre" "0.6.3" "1m9shifr9sdw0drszzyhvaq5jysrsiki44bl7m1gfdzj8rg6y52m")
        ("color-spantrace"
         "0.2.1"
         "1hkjgaqixrishwiq3lxxy1d4c3mvlv6avcj3ifwy50p3lyrf2syd")
        ("colorchoice" "1.0.1" "08h4jsrd2j5k6lp1b9v5p1f1g7cmyzm4djsvb3ydywdb4hmqashb")
        ("colorgrad" "0.6.2" "1dkzc72il8iam904pa2p3d32dgz9fw715lwkl3h0b7ab8xfl0pva")
        ("combine" "4.6.7" "1z8rh8wp59gf8k23ar010phgs0wgf5i8cx4fg01gwcnzfn5k0nms")
        ("concurrent-queue"
         "2.5.0"
         "0wrr3mzq2ijdkxwndhf79k952cp4zkz35ray8hvsxl96xrx1k82c")
        ("core-foundation"
         "0.9.4"
         "13zvbbj07yk3b61b8fhwfzhy35535a583irf23vlcg59j7h9bqci")
        ("core-foundation-sys"
         "0.8.6"
         "13w6sdf06r0hn7bx2b45zxsg1mm2phz34jikm6xc5qrbr6djpsh6")
        ("core-graphics"
         "0.23.2"
         "10dhv3gk4kmbzl14xxkrhhky4fdp8h6nzff6h0019qgr6nz84xy0")
        ("core-graphics-types"
         "0.1.3"
         "1bxg8nxc8fk4kxnqyanhf36wq0zrjr552c58qy6733zn2ihhwfa5")
        ("coreaudio-rs"
         "0.11.3"
         "1kmssby4rqhv2iq1a8zmaav5p3bl40qs0wah9zv65ikr5lbpf41j")
        ("coreaudio-sys"
         "0.2.15"
         "1agmf1idf5m08rgkvsdxqni985acmrs629xzlpqgazq54x85h0bz")
        ("cpal" "0.15.3" "0yd7d51kcf8ml0bfkjrac12zgfjzk21wa97maxg0fhzpr03sngc7")
        ("crossbeam-channel"
         "0.5.13"
         "1wkx45r34v7g3wyi3lg2wz536lrrrab4h4hh741shfhr8rlhsj1k")
        ("crossbeam-utils"
         "0.8.20"
         "100fksq5mm1n7zj242cclkw6yf7a4a8ix3lvpfkhxvdhbda9kv12")
        ("csscolorparser"
         "0.6.2"
         "1gxh11hajx96mf5sd0az6mfsxdryfqvcfcphny3yfbfscqq7sapb")
        ("dasp_sample"
         "0.11.0"
         "0zzw35akm3qs2rixbmlijk6h0l4g9ry6g74qc59zv1q8vs1f31qc")
        ("dlib" "0.5.2" "04m4zzybx804394dnqs1blz241xcy480bdwf3w9p4k6c3l46031k")
        ("downcast-rs" "1.2.1" "1lmrq383d1yszp7mg5i7i56b17x2lnn3kb91jwsq0zykvg2jbcvm")
        ("either" "1.12.0" "12xmhlrv5gfsraimh6xaxcmb0qh6cc7w7ap4sw40ky9wfm095jix")
        ("enigo" "0.2.1" "1yvh7xhcd37jg9qa9w43rj1kc62szdwm6018gm21f4jrr0gs11q0")
        ("equivalent" "1.0.1" "1malmx5f4lkfvqasz319lq6gb3ddg19yzf9s8cykfsgzdmyq0hsl")
        ("errno" "0.3.9" "1fi0m0493maq1jygcf1bya9cymz2pc1mqxj26bdv7yjd37v5qk2k")
        ("evdev" "0.12.2" "19qh6r1z4v8ja6qqigjbg9vckbhlycc6wkqgzfz9fcln7almaq5b")
        ("event-listener"
         "5.3.1"
         "1fkm6q4hjn61wl52xyqyyxai0x9w0ngrzi0wf1qsf8vhsadvwck0")
        ("event-listener-strategy"
         "0.5.2"
         "18f5ri227khkayhv3ndv7yl4rnasgwksl2jhwgafcxzr7324s88g")
        ("eyre" "0.6.12" "1v1a3vb9gs5zkwp4jzkcfnpg0gvyp4ifydzx37f4qy14kzcibnbw")
        ("fastrand" "2.1.0" "06p5d0rxq7by260m4ym9ial0bwgi0v42lrvhl6nm2g7h0h2m3h4z")
        ("field-offset"
         "0.3.6"
         "0zq5sssaa2ckmcmxxbly8qgz3sxpb8g1lwv90sdh1z74qif2gqiq")
        ("filetime" "0.2.23" "1za0sbq7fqidk8aaq9v7m9ms0sv8mmi49g6p5cphpan819q4gr0y")
        ("foreign-types"
         "0.5.0"
         "0rfr2zfxnx9rz3292z5nyk8qs2iirznn5ff3rd4vgdwza6mdjdyp")
        ("foreign-types-macros"
         "0.2.3"
         "0hjpii8ny6l7h7jpns2cp9589016l8mlrpaigcnayjn9bdc6qp0s")
        ("foreign-types-shared"
         "0.3.1"
         "0nykdvv41a3d4py61bylmlwjhhvdm0b3bcj9vxhqgxaxnp5ik6ma")
        ("fsevent-sys" "4.1.0" "1liz67v8b0gcs8r31vxkvm2jzgl9p14i78yfqx81c8sdv817mvkn")
        ("funty" "2.0.0" "177w048bm0046qlzvp33ag3ghqkqw4ncpzcm5lq36gxf2lla7mg6")
        ("futures-channel"
         "0.3.30"
         "0y6b7xxqdjm9hlcjpakcg41qfl7lihf6gavk8fyqijsxhvbzgj7a")
        ("futures-core"
         "0.3.30"
         "07aslayrn3lbggj54kci0ishmd1pr367fp7iks7adia1p05miinz")
        ("futures-executor"
         "0.3.30"
         "07dh08gs9vfll2h36kq32q9xd86xm6lyl9xikmmwlkqnmrrgqxm5")
        ("futures-io" "0.3.30" "1hgh25isvsr4ybibywhr4dpys8mjnscw4wfxxwca70cn1gi26im4")
        ("futures-macro"
         "0.3.30"
         "1b49qh9d402y8nka4q6wvvj0c88qq91wbr192mdn5h54nzs0qxc7")
        ("futures-sink"
         "0.3.30"
         "1dag8xyyaya8n8mh8smx7x6w2dpmafg2din145v973a3hw7f1f4z")
        ("futures-task"
         "0.3.30"
         "013h1724454hj8qczp8vvs10qfiqrxr937qsrv6rhii68ahlzn1q")
        ("futures-util"
         "0.3.30"
         "0j0xqhcir1zf2dcbpd421kgw6wvsk0rpxflylcysn1rlp3g02r1x")
        ("gdk-pixbuf" "0.19.2" "14lvcyiw2f582m893lwdcz68d0rz8qnnc929s17lk42h1f53z8pn")
        ("gdk-pixbuf-sys"
         "0.19.5"
         "13sa8khz2vvgz1lpqha58vz159xnybjxd9lyzcq9xldrz0hz1nqz")
        ("gdk4" "0.8.2" "01qak43mrlszsy9cfsmqk1ql4228m2rylbg514g3fsidsjfmq9nv")
        ("gdk4-sys" "0.8.2" "1pb6vklx9ik7jx9cmrw2vywlx9ssqhll8q77ky8p8w56x2s8yhf9")
        ("gdk4-wayland"
         "0.8.2"
         "0w8kkdgwj0s5r92r4ml1k8dwn6gyrvmnpvvbxhzlwmscpvna087n")
        ("gdk4-wayland-sys"
         "0.8.2"
         "00qqwqkwd3jzha64cpb4kf8g1ixxpbp289kix2q88wcigj9d6pvs")
        ("gimli" "0.28.1" "0lv23wc8rxvmjia3mcxc6hj9vkqnv1bqq0h8nzjcgf71mrxx6wa2")
        ("gio" "0.19.5" "19wlwgw7aszinn915sm3pkwpmfw014hwd2dv7cfx6pg423l8nm5y")
        ("gio-sys" "0.19.5" "0h6v13xms4gi7idfhdfmn75gmmgbdg68fabngwg3dw5ha7sbxgfl")
        ("gl" "0.14.0" "015lgy3qpzdw7mnh59a4y4hdjq1fhv7nkqlmh1h6fzc212qxlkm9")
        ("gl_generator"
         "0.14.0"
         "0k8j1hmfnff312gy7x1aqjzcm8zxid7ij7dlb8prljib7b1dz58s")
        ("glib" "0.19.7" "1414l4nhv71kp87gczp2fkni2ycwcqazc0badg8pw77jdlb5a8z5")
        ("glib-macros"
         "0.19.7"
         "0bi08pzld0k3kli44cz6hxfy3nkhcax1fcqwag8gfp17l6zms0kh")
        ("glib-sys" "0.19.5" "10i2bq9ld5c0dwbrrxkvvqyx39r8h5f1ab14qaqwppxvv7m26zbn")
        ("glob" "0.3.1" "16zca52nglanv23q5qrwd5jinw3d3as5ylya6y1pbx47vkxvrynj")
        ("gobject-sys"
         "0.19.5"
         "0nwl9k0x4cnkfscs4sb4dslf9xz9pq6jp0lgbyr2p8fcz85pny63")
        ("graphene-rs"
         "0.19.2"
         "149c49949cyk9vwq5lnnm382dy6x5794aw7nnbi2jpvcx64d7r4r")
        ("graphene-sys"
         "0.19.5"
         "17d5msivdbq56nvqsfnapfm65la1cwxrva0hpm1vxmzx38wffq1a")
        ("gsk4" "0.8.2" "1gi1f9s2nd5m2zfwb91vijpzr6nxbfa58inrwml497wkyr5qhqvm")
        ("gsk4-sys" "0.8.2" "1p5kf912s8qs38lhzzwnm26v498wkp68mx92z38vnf3ccgr4n0i3")
        ("gtk4" "0.8.2" "1avinslgnsz3wywf4dfaza8w9c29krd10hxmi8si3bq8kcqi2kmh")
        ("gtk4-layer-shell"
         "0.3.0"
         "1fmnlv07i7isql2x32s6946j93jqdixvdsrw4qbyn23jdni3gnnf")
        ("gtk4-layer-shell-sys"
         "0.2.0"
         "0a2fihd4r38xwfyy374k84ib21sd8sb2ipm8nr9franhprm5pjb7")
        ("gtk4-macros" "0.8.2" "0214a8y68kknxcnihsfxwsqvll7ss2rbiplr51cyk34dz1z5lrgc")
        ("gtk4-sys" "0.8.2" "1dapgvbkhf0kcm2jfmj8r98wzyhwmr5iv358dvb73sl5gxmsi2lc")
        ("hashbrown" "0.14.5" "1wa1vy1xs3mp11bn3z9dv0jricgr6a2j0zkf1g19yz3vw4il89z5")
        ("heck" "0.5.0" "1sjmpsdl8czyh9ywl3qcsfsq9a307dg4ni2vnlwgnzzqhc4y0113")
        ("hermit-abi" "0.3.9" "092hxjbjnq5fmz66grd9plxd0sh6ssg5fhgwwwqbrzgzkjwdycfj")
        ("icrate" "0.1.2" "0hh6wdjv858y2crmfkq0zk7xv7rxywkxvgcp8s3fn9k9hacr3diz")
        ("indenter" "0.3.3" "10y6i6y4ls7xsfsc1r3p5j2hhbxhaqnk5zzk8aj52b14v05ba8yf")
        ("indexmap" "2.2.6" "09hgwi2ig0wyj5rjziia76zmhgfj95k0jb4ic3iiawm4vlavg3qn")
        ("inotify" "0.9.6" "1zxb04c4qccp8wnr3v04l503qpxzxzzzph61amlqbsslq4z9s1pq")
        ("inotify-sys" "0.1.5" "1syhjgvkram88my04kv03s0zwa66mdwa5v7ddja3pzwvx2sh4p70")
        ("is_terminal_polyfill"
         "1.70.0"
         "0018q5cf3rifbnzfc1w1z1xcx9c6i7xlywp2n0fw4limq1vqaizq")
        ("itertools" "0.12.1" "0s95jbb3ndj1lvfxyq5wanc0fm0r6hg6q4ngb92qlfdxvci10ads")
        ("itoa" "1.0.11" "0nv9cqjwzr3q58qz84dcz63ggc54yhf1yqar1m858m1kfd4g3wa9")
        ("jni" "0.21.1" "15wczfkr2r45slsljby12ymf2hij8wi5b104ghck9byjnwmsm1qs")
        ("jni-sys" "0.3.0" "0c01zb9ygvwg9wdx2fii2d39myzprnpqqhy7yizxvjqp5p04pbwf")
        ("jobserver" "0.1.31" "0vnyfxr5gm03j3lpnd1zswnyvqa40kbssy08pz2m35salfm9kc6j")
        ("js-sys" "0.3.69" "0v99rz97asnzapb0jsc3jjhvxpfxr7h7qd97yqyrf9i7viimbh99")
        ("khronos_api" "3.1.0" "1p0xj5mlbagqyvvnv8wmv3cr7l9y1m153888pxqwg3vk3mg5inz2")
        ("kqueue" "1.0.8" "033x2knkbv8d3jy6i9r32jcgsq6zm3g97zh5la43amkv3g5g2ivl")
        ("kqueue-sys" "1.0.4" "12w3wi90y4kwis4k9g6fp0kqjdmc6l00j16g8mgbhac7vbzjb5pd")
        ("lazy_static" "1.4.0" "0in6ikhw8mgl33wjv6q6xfrb5b9jr16q8ygjy803fay4zcisvaz2")
        ("lazycell" "1.3.0" "0m8gw7dn30i0zjjpjdyf6pc16c34nl71lpv461mix50x3p70h3c3")
        ("libc" "0.2.155" "0z44c53z54znna8n322k5iwg80arxxpdzjj5260pxxzc9a58icwp")
        ("libloading" "0.8.3" "06awqx9glr3i7mcs6csscr8d6dbd9rrk6yglilmdmsmhns7ijahc")
        ("linux-raw-sys"
         "0.4.14"
         "12gsjgbhhjwywpqcrizv80vrp7p7grsz5laqq773i33wphjsxcvq")
        ("lock_api" "0.4.12" "05qvxa6g27yyva25a5ghsg85apdxkvr77yhkyhapj6r8vnf8pbq7")
        ("log" "0.4.21" "074hldq1q8rlzq2s2qa8f25hj4s3gpw71w64vdwzjd01a4g8rvch")
        ("mach2" "0.4.2" "02gpyq89rcrqdbz4hgp5bpjas21dllxfc70jgw8vj0iaxg6mbf8r")
        ("memchr" "2.7.4" "18z32bhxrax0fnjikv475z7ii718hq457qwmaryixfxsl2qrmjkq")
        ("memmap2" "0.8.0" "1vf3djv9s917fbvw5vclllpl22g12iph6cz11gn57ndhxwya19a3")
        ("memoffset" "0.6.5" "1kkrzll58a3ayn5zdyy9i1f1v3mx0xgl29x0chq614zazba638ss")
        ("memoffset" "0.9.1" "12i17wh9a9plx869g7j4whf62xw68k5zd4k0k5nh6ys5mszid028")
        ("minimal-lexical"
         "0.2.1"
         "16ppc5g84aijpri4jzv14rvcnslvlpphbszc7zzp6vfkddf4qdb8")
        ("miniz_oxide" "0.7.3" "1bndap8kj8ihlaz23a5cq0ihc09xh3c1m4ip5dbnpilmw4gx1pw7")
        ("mio" "0.8.11" "034byyl0ardml5yliy1hmvx8arkmn9rv479pid794sm07ia519m4")
        ("ndk" "0.8.0" "1dx5yyqh32bi161mipg4br4i33syjidw81qrq0w7mc8hf0ds6xi0")
        ("ndk-context" "0.1.1" "12sai3dqsblsvfd1l1zab0z6xsnlha3xsfl7kagdnmj3an3jvc17")
        ("ndk-sys"
         "0.5.0+25.2.9519653"
         "14bnxww0f17xl8pyn6j5kpkl98snjl9lin8i7qv4zzb0vmlnf6cc")
        ("nix" "0.23.2" "0p5kxhm5d8lry0szqbsllpcb5i3z7lg1dkglw0ni2l011b090dwg")
        ("nom" "7.1.3" "0jha9901wxam390jcf5pfa0qqfrgh8li787jx2ip0yk5b8y9hwyj")
        ("notify" "6.1.1" "0bad98r0ilkhhq2jg3zs11zcqasgbvxia8224wpasm74n65vs1b2")
        ("num-derive" "0.4.2" "00p2am9ma8jgd2v6xpsz621wc7wbn1yqi71g15gc3h67m7qmafgd")
        ("num-traits" "0.2.19" "0h984rhdkkqd4ny9cif7y2azl3xdfb7768hb9irhpsch4q3gq787")
        ("num_cpus" "1.16.0" "0hra6ihpnh06dvfvz9ipscys0xfqa9ca9hzp384d5m02ssvgqqa1")
        ("num_enum" "0.7.2" "0i88m682kk45fa1yxm02738mf8p770dib5zqk48p8lvjxr29fcq2")
        ("num_enum_derive"
         "0.7.2"
         "0awqpdw8bbzwrq0mgim99axzxar6dl9ram8qdj83c2k06ylk0438")
        ("objc-sys" "0.3.5" "0423gry7s3rmz8s3pzzm1zy5mdjif75g6dbzc2lf2z0c77fipffd")
        ("objc2" "0.5.2" "015qa2d3vh7c1j2736h5wjrznri7x5ic35vl916c22gzxva8b9s6")
        ("objc2-encode"
         "4.0.3"
         "1y7hjg4k828zhn4fjnbidrz3vzw4llk9ldy92drj47ydjc9yg4bq")
        ("object" "0.32.2" "0hc4cjwyngiy6k51hlzrlsxgv5z25vv7c2cp0ky1lckfic0259m6")
        ("oboe" "0.6.1" "1yv7x06mwk61nsy3ckcmqwgg9q0n3j4y4zncz3sl6pcyskmipdp8")
        ("oboe-sys" "0.6.1" "17g7yb4kk6bakc4rhv1izfcqjgqhpkasgq6gf20nc79b9adb12vc")
        ("once_cell" "1.19.0" "14kvw7px5z96dk4dwdm1r9cqhhy2cyj1l5n5b29mynbb8yr15nrz")
        ("owo-colors" "3.5.0" "0vyvry6ba1xmpd45hpi6savd8mbx09jpmvnnwkf6z62pk6s4zc61")
        ("pango" "0.19.5" "03cjj82k7g0d8ny48b7q5qdhrnp3z1zgws0ig73a57j30plfck2h")
        ("pango-sys" "0.19.5" "019mbncgdzqrfr7smv75660mq0idzcknjnmgvqnnk0xvpmarb0p4")
        ("parking" "2.2.0" "1blwbkq6im1hfxp5wlbr475mw98rsyc0bbr2d5n16m38z253p0dv")
        ("parking_lot"
         "0.12.2"
         "1ys2dzz6cysjmwyivwxczl1ljpcf5cj4qmhdj07d5bkc9z5g0jky")
        ("parking_lot_core"
         "0.9.10"
         "1y3cf9ld9ijf7i4igwzffcn0xl16dxyn4c5bwgjck1dkgabiyh0y")
        ("phf" "0.11.2" "1p03rsw66l7naqhpgr1a34r9yzi1gv9jh16g3fsk6wrwyfwdiqmd")
        ("phf_generator" "0.11.2" "1c14pjyxbcpwkdgw109f7581cc5fa3fnkzdq1ikvx7mdq9jcrr28")
        ("phf_macros" "0.11.2" "0js61lc0bhzzrbd9vhpcqp11vvwckdkz3g7k95z5h1k651p68i1l")
        ("phf_shared" "0.11.2" "0azphb0a330ypqx3qvyffal5saqnks0xvl8rj73jlk3qxxgbkz4h")
        ("pin-project-lite" "0.2.14" "00nx3f04agwjlsmd3mc5rx5haibj2v8q9b52b0kwn63wcv4nz9mx")
        ("pin-utils" "0.1.0" "117ir7vslsl2z1a7qzhws4pd01cg2d3338c47swjyvqv2n60v1wb")
        ("pkg-config" "0.3.30" "1v07557dj1sa0aly9c90wsygc0i8xv5vnmyv0g94lpkvj8qb4cfj")
        ("proc-macro-crate" "3.1.0" "110jcl9vnj92ihbhjqmkp19m8rzxc14a7i60knlmv99qlwfcadvd")
        ("proc-macro2" "1.0.85" "08zwg5l5f3czp62g4cvzgjwnk176lsrwq6kdi4x0arm9bbhlq912")
        ("quick-xml" "0.31.0" "0cravqanylzh5cq2v6hzlfqgxcid5nrp2snnb3pf4m0and2a610h")
        ("quote" "1.0.36" "19xcmh445bg6simirnnd4fvkmp6v2qiwxh5f6rw4a70h76pnm9qg")
        ("radium" "0.7.0" "02cxfi3ky3c4yhyqx9axqwhyaca804ws46nn4gc1imbk94nzycyw")
        ("rand" "0.8.5" "013l6931nn7gkc23jz5mm3qdhf93jjf0fg64nz2lp4i51qd8vbrl")
        ("rand_core" "0.6.4" "0b4j2v4cb5krak1pv6kakv4sz6xcwbrmy2zckc32hsigbrwy82zc")
        ("redox_syscall" "0.4.1" "1aiifyz5dnybfvkk4cdab9p2kmphag1yad6iknc7aszlxxldf8j7")
        ("redox_syscall" "0.5.1" "0zja6y3av9z50gg1hh0vsc053941wng21r43whhk8mfb9n4m5426")
        ("regex" "1.10.5" "0zsiqk2sxc1kd46qw0yp87s2a14ialwyxinpl0k266ddkm1i64mr")
        ("regex-automata" "0.4.7" "1pwjdi4jckpbaivpl6x4v5g4crb37zr2wac93wlfsbzgqn6gbjiq")
        ("regex-syntax" "0.8.4" "16r0kjy20vx33dr4mhasj5l1f87czas714x2fz6zl0f8wwxa0rks")
        ("rustc-demangle" "0.1.24" "07zysaafgrkzy2rjgwqdj2a8qdpsm6zv6f5pgpk9x0lm40z9b6vi")
        ("rustc-hash" "1.1.0" "1qkc5khrmv5pqi5l5ca9p5nl5hs742cagrndhbrlk3dhlrx3zm08")
        ("rustc_version" "0.4.0" "0rpk9rcdk405xhbmgclsh4pai0svn49x35aggl4nhbkd4a2zb85z")
        ("rustix" "0.38.34" "03vkqa2ism7q56rkifyy8mns0wwqrk70f4i4fd53r97p8b05xp3h")
        ("ryu" "1.0.18" "17xx2s8j1lln7iackzd9p0sv546vjq71i779gphjq923vjh5pjzk")
        ("same-file" "1.0.6" "00h5j1w87dmhnvbv9l8bic3y7xxsnjmssvifw2ayvgx9mb1ivz4k")
        ("scoped-tls" "1.0.1" "15524h04mafihcvfpgxd8f4bgc3k95aclz8grjkg9a0rxcvn9kz1")
        ("scopeguard" "1.2.0" "0jcz9sd47zlsgcnm1hdw0664krxwb5gczlif4qngj2aif8vky54l")
        ("semver" "1.0.23" "12wqpxfflclbq4dv8sa6gchdh92ahhwn4ci1ls22wlby3h57wsb1")
        ("serde" "1.0.203" "1500ghq198n6py5anvz5qbqagd9h1hq04f4qpsvjzrvix56snlvj")
        ("serde_derive" "1.0.203" "1fmmqmfza3mwxb1v80737dj01gznrh8mhgqgylkndx5npq7bq32h")
        ("serde_json" "1.0.117" "1hxziifjlc0kn1cci9d4crmjc7qwnfi20lxwyj9lzca2c7m84la5")
        ("serde_spanned" "0.6.6" "1839b6m5p9ijjmcwamiya2r612ks2vg6w2pp95yg76lr3zh79rkr")
        ("sharded-slab" "0.1.7" "1xipjr4nqsgw34k7a2cgj9zaasl2ds6jwn89886kww93d32a637l")
        ("shlex" "1.3.0" "0r1y6bv26c1scpxvhg2cabimrmwgbp4p3wy6syj9n0c4s3q2znhg")
        ("signal-hook-registry" "1.4.2" "1cb5akgq8ajnd5spyn587srvs4n26ryq0p78nswffwhv46sf1sd9")
        ("siphasher" "0.3.11" "03axamhmwsrmh0psdw3gf7c0zc4fyl5yjxfifz9qfka6yhkqid9q")
        ("slab" "0.4.9" "0rxvsgir0qw5lkycrqgb1cxsvxzjv9bmx73bk5y42svnzfba94lg")
        ("smallvec" "1.13.2" "0rsw5samawl3wsw6glrsb127rx6sh89a8wyikicw6dkdcjd1lpiw")
        ("socket2" "0.5.7" "070r941wbq76xpy039an4pyiy3rfj7mp7pvibf1rcri9njq5wc6f")
        ("strsim" "0.11.1" "0kzvqlw8hxqb7y598w1s0hxlnmi84sg5vsipp3yg5na5d1rvba3x")
        ("syn" "2.0.66" "1xfgrprsbz8j31kabvfinb4fyhajlk2q7lxa18fb006yl90kyby4")
        ("system-deps" "6.2.2" "0j93ryw031n3h8b0nfpj5xwh3ify636xmv8kxianvlyyipmkbrd3")
        ("tap" "1.0.1" "0sc3gl4nldqpvyhqi3bbd0l9k7fngrcl4zs47n314nqqk4bpx4sm")
        ("target-lexicon" "0.12.14" "0bzzr5cq1n56nmjp5fkf2h1g9a27lmkbld3qqfvwy6x2j4w41z71")
        ("tempfile" "3.10.1" "1wdzz35ri168jn9al4s1g2rnsrr5ci91khgarc2rvpb3nappzdw5")
        ("thiserror" "1.0.61" "028prh962l16cmjivwb1g9xalbpqip0305zhq006mg74dc6whin5")
        ("thiserror-impl" "1.0.61" "0cvm37hp0kbcyk1xac1z0chpbd9pbn2g456iyid6sah0a113ihs6")
        ("thread_local" "1.1.8" "173i5lyjh011gsimk21np9jn8al18rxsrkjli20a7b8ks2xgk7lb")
        ("tokio" "1.38.0" "0jjsb2c9dqi93yij3rqzsh9bk0z3qyasmw1n8qkny3d8lw14lkxs")
        ("tokio-macros" "2.3.0" "16nkan0x9b62hnqmjqcyd71j1mgpda2sv7gfm2mvbm39l2cfjnjz")
        ("tokio-util" "0.7.11" "1qcz30db6m8lxkl61b3nic4bim1symi636nhbb3rmi3i6xxv9xlw")
        ("toml" "0.8.14" "0dgk8bacrza09npifba1xsx7wyjjvhz3igxpdnyjcbqxn8mfnjbg")
        ("toml_datetime" "0.6.6" "1grcrr3gh7id3cy3j700kczwwfbn04p5ncrrj369prjaj9bgvbab")
        ("toml_edit" "0.21.1" "1qch02syrd9c8krcimfl72gyjz11fmjssh03hrg41dbqgzyk91ba")
        ("toml_edit" "0.22.14" "0f2fw0viqvisjhqwjavgypz5mgbldh53przrsjlrrggijyppl77j")
        ("tracing" "0.1.40" "1vv48dac9zgj9650pg2b4d0j3w6f3x9gbggf43scq5hrlysklln3")
        ("tracing-core" "0.1.32" "0m5aglin3cdwxpvbg6kz0r9r0k31j48n0kcfwsp6l49z26k3svf0")
        ("tracing-error" "0.2.0" "0vi0rns7r8iny2milg0kikz1mhgcl9wz5clpy1vi4jrq1wffr1nn")
        ("tracing-subscriber" "0.3.18" "12vs1bwk4kig1l2qqjbbn2nm5amwiqmkcmnznylzmnfvjy6083xd")
        ("unicode-ident" "1.0.12" "0jzf1znfpb2gx8nr8mvmyqs1crnv79l57nxnbiszc7xf7ynbjm1k")
        ("utf8parse" "0.2.2" "088807qwjq46azicqwbhlmzwrbkz7l4hpw43sdkdyyk524vdxaq6")
        ("valuable" "0.1.0" "0v9gp3nkjbl30z0fd56d8mx7w1csk86wwjhfjhr400wh9mfpw2w3")
        ("version-compare" "0.2.0" "12y9262fhjm1wp0aj3mwhads7kv0jz8h168nn5fb8b43nwf9abl5")
        ("walkdir" "2.5.0" "0jsy7a710qv8gld5957ybrnc07gavppp963gs32xk4ag8130jy99")
        ("wasi" "0.11.0+wasi-snapshot-preview1" "08z4hxwkpdpalxjps1ai9y7ihin26y9f476i53dv98v45gkqg3cw")
        ("wasm-bindgen" "0.2.92" "1a4mcw13nsk3fr8fxjzf9kk1wj88xkfsmnm0pjraw01ryqfm7qjb")
        ("wasm-bindgen-backend" "0.2.92" "1nj7wxbi49f0rw9d44rjzms26xlw6r76b2mrggx8jfbdjrxphkb1")
        ("wasm-bindgen-futures" "0.4.42" "1h322zjvpjllcpj7dahfxjsv6inkr6y0baw7nkdwivr1c4v19g3n")
        ("wasm-bindgen-macro" "0.2.92" "09npa1srjjabd6nfph5yc03jb26sycjlxhy0c2a1pdrpx4yq5y51")
        ("wasm-bindgen-macro-support" "0.2.92" "1dqv2xs8zcyw4kjgzj84bknp2h76phmsb3n7j6hn396h4ssifkz9")
        ("wasm-bindgen-shared" "0.2.92" "15kyavsrna2cvy30kg03va257fraf9x00ny554vxngvpyaa0q6dg")
        ("wayland-backend" "0.3.4" "01yzpx5pm4gc4m6sh0w5vka9afwjqwshngj3d5z4xfx2sjvfds9l")
        ("wayland-client" "0.31.3" "0cqikb0r1d6k7q8sqx2pziqzb7srm55sgzvck0gl72imhlf80qqy")
        ("wayland-protocols" "0.31.2" "1x310l1p6p3p3l76nl1l2yava9408dy77s605917zadlp1jz70cg")
        ("wayland-protocols-misc" "0.2.0" "07nyfxx16kllf6qjq3fysxac3s0jh8dn0f2ckf61h05j80vr79dz")
        ("wayland-protocols-plasma" "0.2.0" "0yglbxd4ka8284k0j0ssh9hf6wd9qp2n0s2qrsdymyaz258kb013")
        ("wayland-protocols-wlr" "0.2.0" "1mjww9psk2nc5hm2q4s3qas30rbzfg1sb6qgw518fbbcdfvn27xd")
        ("wayland-scanner" "0.31.2" "0rd5rq8505qahq0lpqkcpms7b7pg4hzc24acxb0dwn81z2wm1nk7")
        ("wayland-sys" "0.31.2" "04lwwxmp16769jpn4pc0b9s7yyw9f8hjljn14qazjm35v911hnqh")
        ("web-sys" "0.3.69" "1vqkxk935xa8zcnsi4bd88sb267ly2i24xl1yiq26d1n32hskbvp")
        ("winapi-util" "0.1.8" "0svcgddd2rw06mj4r76gj655qsa1ikgz3d3gzax96fz7w62c6k2d")
        ("windows" "0.54.0" "0j8vd8sg2rbln6g3a608qg1a7r2lwxcga78mmxjjin5ybmrfallj")
        ("windows" "0.56.0" "0cp10nzrqgrlk91dpwxjcpzyy6imr5vxr5f898pss7nz3gq9vrhx")
        ("windows-core" "0.54.0" "0r8x2sgl4qq1h23ldf4z7cj213k0bz7479m8a156h79mi6f1nrhj")
        ("windows-core" "0.56.0" "19pj57bm0rzhlk0ghrccd3i5zvh0ghm52f8cmdc8d3yhs8pfb626")
        ("windows-implement" "0.56.0" "16rgkvlx4syqmajfdwmkcvn6nvh126wjj8sg3jvsk5fdivskbz7n")
        ("windows-interface" "0.56.0" "1k2prfxna0mw47f8gi8qhw9jfpw66bh2cqzs67sgipjfpx30b688")
        ("windows-result" "0.1.2" "1y274q1v0vy21lhkgslpxpq1m08hvr1mcs2l88h1b1gcx0136f2y")
        ("windows-sys" "0.45.0" "1l36bcqm4g89pknfp8r9rl1w4bn017q6a8qlx8viv0xjxzjkna3m")
        ("windows-sys" "0.48.0" "1aan23v5gs7gya1lc46hqn9mdh8yph3fhxmhxlw36pn6pqc28zb7")
        ("windows-sys" "0.52.0" "0gd3v4ji88490zgb6b5mq5zgbvwv7zx1ibn8v3x83rwcdbryaar8")
        ("windows-targets" "0.42.2" "0wfhnib2fisxlx8c507dbmh97kgij4r6kcxdi0f9nk6l1k080lcf")
        ("windows-targets" "0.48.5" "034ljxqshifs1lan89xwpcy1hp0lhdh4b5n0d2z4fwjx2piacbws")
        ("windows-targets" "0.52.5" "1sz7jrnkygmmlj1ia8fk85wbyil450kq5qkh5qh9sh2rcnj161vg")
        ("windows_aarch64_gnullvm" "0.42.2" "1y4q0qmvl0lvp7syxvfykafvmwal5hrjb4fmv04bqs0bawc52yjr")
        ("windows_aarch64_gnullvm" "0.48.5" "1n05v7qblg1ci3i567inc7xrkmywczxrs1z3lj3rkkxw18py6f1b")
        ("windows_aarch64_gnullvm" "0.52.5" "0qrjimbj67nnyn7zqy15mzzmqg0mn5gsr2yciqjxm3cb3vbyx23h")
        ("windows_aarch64_msvc" "0.42.2" "0hsdikjl5sa1fva5qskpwlxzpc5q9l909fpl1w6yy1hglrj8i3p0")
        ("windows_aarch64_msvc" "0.48.5" "1g5l4ry968p73g6bg6jgyvy9lb8fyhcs54067yzxpcpkf44k2dfw")
        ("windows_aarch64_msvc" "0.52.5" "1dmga8kqlmln2ibckk6mxc9n59vdg8ziqa2zr8awcl720hazv1cr")
        ("windows_i686_gnu" "0.42.2" "0kx866dfrby88lqs9v1vgmrkk1z6af9lhaghh5maj7d4imyr47f6")
        ("windows_i686_gnu" "0.48.5" "0gklnglwd9ilqx7ac3cn8hbhkraqisd0n83jxzf9837nvvkiand7")
        ("windows_i686_gnu" "0.52.5" "0w4np3l6qwlra9s2xpflqrs60qk1pz6ahhn91rr74lvdy4y0gfl8")
        ("windows_i686_gnullvm" "0.52.5" "1s9f4gff0cixd86mw3n63rpmsm4pmr4ffndl6s7qa2h35492dx47")
        ("windows_i686_msvc" "0.42.2" "0q0h9m2aq1pygc199pa5jgc952qhcnf0zn688454i7v4xjv41n24")
        ("windows_i686_msvc" "0.48.5" "01m4rik437dl9rdf0ndnm2syh10hizvq0dajdkv2fjqcywrw4mcg")
        ("windows_i686_msvc" "0.52.5" "1gw7fklxywgpnwbwg43")
        ("windows_x86_64_gnu" "0.42.2" "0dnbf2xnp3xrvy8v9mgs3var4zq9v9yh9kv79035rdgyp2w15scd")
        ("windows_x86_64_gnu" "0.48.5" "13kiqqcvz2vnyxzydjh73hwgigsdr2z1xpzx313kxll34nyhmm2k")
        ("windows_x86_64_gnu" "0.52.5" "1n8p2mcf3lw6300k77a0knksssmgwb9hynl793mhkzyydgvlchjf")
        ("windows_x86_64_gnullvm" "0.42.2" "18wl9r8qbsl475j39zvawlidp1bsbinliwfymr43fibdld31pm16")
        ("windows_x86_64_gnullvm" "0.48.5" "1k24810wfbgz8k48c2yknqjmiigmql6kk3knmddkv8k8g1v54yqb")
        ("windows_x86_64_gnullvm" "0.52.5" "15n56jrh4s5bz66zimavr1rmcaw6wa306myrvmbc6rydhbj9h8l5")
        ("windows_x86_64_msvc" "0.42.2" "1w5r0q0yzx827d10dpjza2ww0j8iajqhmb54s735hhaj66imvv4s")
        ("windows_x86_64_msvc" "0.48.5" "0f4mdp895kkjh9zv8dxvn4pc10xr7839lf5pa9l0193i2pkgr57d")
        ("windows_x86_64_msvc" "0.52.5" "1w1bn24ap8dp9i85s8mlg8cim2bl2368bd6qyvm0xzqvzmdpxi5y")
        ("winnow" "0.5.40" "0xk8maai7gyxda673mmw3pj1hdizy5fpi7287vaywykkk19sk4zm")
        ("winnow" "0.6.13" "189b0mrr9lkckdyr0177hwj1c59igxc2lsl71f4wg8wrqbvfbdar")
        ("wyz" "0.5.1" "1vdrfy7i2bznnzjdl9vvrzljvs4s3qm8bnlgqwln6a941gy61wq5")
        ("xkbcommon" "0.7.0" "07n9shhcls66wjvmk5pzqql46ipfdv7b8hbc384wgv9hk4jpv1hk")
        ("xkeysym" "0.2.1" "0mksx670cszyd7jln6s7dhkw11hdfv7blwwr3isq98k22ljh1k5r")
        ("xml-rs" "0.8.20" "14s1czpj83zhgr4pizxa4j07layw9wmlqhkq0k3wz5q5ixwph6br"))
   => (cons* rust-harfbuzz-rs-2.0.1
             rust-block2-0.4.0
             rust-bytemuck-1.16.0
             rust-clap-4.5.7
             rust-clap-builder-4.5.7
             rust-clap-derive-4.5.5
             rust-colorgrad-0.6.2
             rust-core-foundation-sys-0.8.2
             rust-enigo-0.2.1
             rust-futures-macro-0.3.30
             rust-futures-task-0.3.30
             rust-futures-util-0.3.30
             rust-gdk-pixbuf-0.19.8
             rust-gdk-pixbuf-sys-0.19.8
             rust-gdk4-0.8.2
             rust-gdk4-sys-0.8.2
             rust-gdk4-wayland-0.8.2
             rust-gdk4-wayland-sys-0.8.2
             rust-gl-0.14.0
             rust-gsk4-0.8.2
             rust-gsk4-sys-0.8.2
             rust-gtk4-0.8.2
             rust-gtk4-layer-shell-0.3.0
             rust-gtk4-layer-shell-sys-0.2.0
             rust-gtk4-macros-0.8.2
             rust-gtk4-sys-0.8.2
             rust-graphene-rs-0.19.8
             rust-graphene-sys-0.19.8
             rust-icrate-0.1.2
             rust-libc-0.2.149
             rust-libc-0.2.150
             rust-owo-colors-3.2.0
             rust-parking-2.2.0
             rust-parking-lot-0.12.0
             rust-tokio-1.38.0
             rust-tokio-macros-2.3.0
             rust-wayland-protocols-misc-0.2.0
             rust-wayland-protocols-plasma-0.2.0
             rust-wayland-protocols-wlr-0.2.0

             (crates* rust-addr2line-0.21.0
                      rust-adler-1.0.2
                      rust-aho-corasick-1.1.3
                      rust-alsa-0.9.1
                      rust-alsa-sys-0.3.1
                      rust-anstream-0.6.18
                      rust-anstyle-1.0.10
                      rust-anstyle-parse-0.2.6
                      rust-anstyle-query-1.1.2
                      rust-anstyle-wincon-3.0.10
                      rust-async-channel-2.3.1
                      rust-autocfg-1.3.0
                      rust-backtrace-0.3.71
                      rust-bindgen-0.69.5
                      rust-bindgen-0.70.1
                      rust-bitflags-1.3.2
                      rust-bitflags-2.9.3
                      rust-bitvec-1.0.1
                      ;; rust-block-sys-0.2.1
                      rust-bumpalo-3.16.0
                      rust-bytes-1.10.1
                      rust-cairo-rs-0.19.4
                      rust-cairo-sys-rs-0.19.2
                      rust-cc-1.2.26
                      rust-cesu8-1.1.0
                      rust-cexpr-0.6.0
                      rust-cfg-expr-0.15.8
                      rust-cfg-if-1.0.0
                      rust-clang-sys-1.8.1
                      ;; rust-clap-4.5.7
                      ;; rust-clap_builder-4.5.7
                      ;; rust-clap_derive-4.5.5
                      rust-clap-lex-0.7.4
                      rust-color-eyre-0.6.3
                      rust-color-spantrace-0.2.1
                      rust-colorchoice-1.0.4
                      rust-combine-4.6.7
                      rust-concurrent-queue-2.5.0
                      rust-core-foundation-0.9.4
                      rust-core-foundation-sys-0.8.7
                      rust-core-graphics-0.23.2
                      rust-core-graphics-types-0.1.3
                      rust-coreaudio-rs-0.11.3
                      rust-coreaudio-sys-0.2.16
                      rust-cpal-0.15.3
                      rust-crossbeam-channel-0.5.15
                      rust-crossbeam-utils-0.8.20
                      rust-csscolorparser-0.6.2
                      rust-dasp-sample-0.11.0
                      rust-dlib-0.5.2
                      rust-downcast-rs-1.2.1
                      rust-either-1.13.0
                      ;; rust-enigo-0.2.1
                      rust-equivalent-1.0.1
                      rust-errno-0.3.12
                      rust-evdev-0.12.2
                      rust-event-listener-5.4.1
                      rust-event-listener-strategy-0.5.4
                      rust-eyre-0.6.12
                      rust-fastrand-2.1.1
                      rust-field-offset-0.3.6
                      rust-filetime-0.2.25
                      rust-foreign-types-0.5.0
                      rust-foreign-types-macros-0.2.3
                      rust-foreign-types-shared-0.3.1
                      rust-fsevent-sys-4.1.0
                      rust-funty-2.0.0
                      rust-futures-channel-0.3.31
                      rust-futures-core-0.3.31
                      rust-futures-executor-0.3.31
                      rust-futures-io-0.3.31
                      rust-futures-macro-0.3.31
                      rust-futures-sink-0.3.31
                      rust-futures-task-0.3.31
                      rust-futures-util-0.3.31
                      ;; rust-gdk-pixbuf-0.19.2
                      ;; rust-gdk-pixbuf-sys-0.19.5
                      ;; rust-gdk4-0.8.2
                      ;; rust-gdk4-sys-0.8.2
                      ;; rust-gdk4-wayland-0.8.2
                      ;; rust-gdk4-wayland-sys-0.8.2
                      rust-gimli-0.28.1
                      rust-gio-0.19.8
                      rust-gio-sys-0.19.8
                      rust-glib-0.19.9
                      ;; rust-gl_generator-0.14.0
                      rust-glib-0.19.9
                      rust-glib-macros-0.19.9
                      rust-glib-sys-0.19.8
                      rust-glob-0.3.1
                      rust-gobject-sys-0.19.8
                      ;; rust-graphene-sys-0.19.5
                      ;; rust-gtk4-0.8.2
                      ;; rust-gtk4-layer-shell-0.3.0
                      ;; rust-gtk4-layer-shell-sys-0.2.0
                      ;; rust-gtk4-macros-0.8.2
                      ;; rust-gtk4-sys-0.8.2
                      rust-hashbrown-0.14.5
                      rust-heck-0.5.0
                      rust-hermit-abi-0.3.9
                      ;; rust-icrate-0.1.2
                      rust-indenter-0.3.3
                      ;; rust-indexmap-2.2.6
                      rust-inotify-0.9.6
                      rust-inotify-sys-0.1.5
                      rust-is-terminal-polyfill-1.70.1
                      rust-itertools-0.12.1
                      rust-itoa-1.0.11
                      rust-jni-0.21.1
                      rust-jni-sys-0.3.0
                      rust-jobserver-0.1.33
                      rust-js-sys-0.3.77
                      rust-khronos-api-3.1.0
                      rust-kqueue-1.0.8
                      rust-kqueue-sys-1.0.4
                      rust-lazy-static-1.4.0
                      rust-lazycell-1.3.0
                      rust-libc-0.2.148
                      rust-libloading-0.8.7
                      rust-linux-raw-sys-0.4.14
                      rust-libredox-0.1.3
                      rust-lock-api-0.4.12
                      rust-log-0.4.20
                      rust-mach2-0.4.2
                      rust-memchr-2.7.4
                      rust-memmap2-0.8.0
                      rust-memoffset-0.6.5
                      rust-memoffset-0.9.1
                      rust-minimal-lexical-0.2.1
                      rust-miniz-oxide-0.7.4
                      rust-mio-0.8.11
                      rust-ndk-0.8.0
                      rust-ndk-context-0.1.1
                      rust-ndk-sys-0.5.0+25.2.9519653
                      rust-nix-0.23.2
                      rust-nom-7.1.3
                      rust-notify-6.1.1
                      rust-num-derive-0.4.2
                      rust-num-traits-0.2.19
                      rust-num-cpus-1.16.0
                      rust-num-enum-0.7.4
                      rust-num-enum-derive-0.7.4
                      rust-objc-sys-0.3.5
                      rust-objc2-0.5.2
                      rust-objc2-encode-4.1.0
                      rust-object-0.32.2
                      rust-oboe-0.6.1
                      rust-oboe-sys-0.6.1
                      rust-once-cell-1.20.3
                      rust-owo-colors-3.5.0
                      rust-pango-0.19.8
                      rust-pango-sys-0.19.8
                      rust-parking-lot-0.12.3
                      rust-parking-lot-core-0.9.10
                      rust-phf-0.11.3
                      rust-phf-generator-0.11.3
                      rust-phf-macros-0.11.3
                      rust-phf-shared-0.11.3
                      rust-pin-project-lite-0.2.14
                      rust-pin-utils-0.1.0
                      rust-pkg-config-0.3.31
                      rust-proc-macro-crate-3.3.0
                      rust-proc-macro2-1.0.93
                      rust-quick-xml-0.31.0
                      rust-quote-1.0.38
                      rust-radium-0.7.0
                      rust-rand-0.8.5
                      rust-rand-core-0.6.4
                      rust-redox-syscall-0.4.1
                      rust-redox-syscall-0.5.17
                      rust-regex-1.11.2
                      rust-regex-automata-0.4.10
                      rust-regex-syntax-0.8.6
                      rust-rustc-demangle-0.1.24
                      rust-rustc-hash-1.1.0
                      rust-rustc-version-0.4.0
                      rust-rustversion-1.0.20
                      rust-rustix-1.0.5
                      rust-rustix-0.38.44
                      rust-getrandom-0.2.15
                      rust-getrandom-0.3.3
                      rust-ryu-1.0.18
                      rust-same-file-1.0.6
                      rust-scoped-tls-1.0.1
                      rust-scopeguard-1.2.0
                      rust-semver-1.0.26
                      rust-serde-1.0.216
                      rust-serde-derive-1.0.216
                      rust-serde-json-1.0.139
                      rust-serde-spanned-0.6.8
                      rust-sharded-slab-0.1.7
                      rust-shlex-1.3.0
                      rust-signal-hook-registry-1.4.2
                      rust-siphasher-0.3.11
                      rust-slab-0.4.9
                      rust-smallvec-1.14.0
                      rust-socket2-0.5.7
                      rust-strsim-0.11.1
                      rust-syn-2.0.98
                      rust-system-deps-6.2.2
                      rust-tap-1.0.1
                      rust-target-lexicon-0.12.16
                      rust-tempfile-3.15.0
                      rust-thiserror-1.0.69
                      rust-thiserror-impl-1.0.69
                      rust-thread-local-1.1.8
                      rust-tokio-util-0.7.14
                      rust-toml-0.8.22
                      rust-toml-datetime-0.6.8
                      ;; rust-toml-edit-0.21.1
                      rust-toml-edit-0.22.24
                      rust-tracing-0.1.41
                      rust-tracing-core-0.1.33
                      rust-tracing-error-0.2.1
                      rust-tracing-subscriber-0.3.18
                      rust-unicode-ident-1.0.12
                      rust-utf8parse-0.2.2
                      rust-valuable-0.1.1
                      rust-version-compare-0.2.0
                      rust-walkdir-2.5.0
                      rust-wasi-0.11.0+wasi-snapshot-preview1
                      rust-wasm-bindgen-0.2.100
                      rust-wasm-bindgen-backend-0.2.100
                      rust-wasm-bindgen-futures-0.4.50
                      rust-wasm-bindgen-macro-0.2.100
                      rust-wasm-bindgen-macro-support-0.2.100
                      rust-wasm-bindgen-shared-0.2.100
                      rust-wayland-backend-0.3.11
                      rust-wayland-client-0.31.11
                      rust-wayland-protocols-0.31.2
                      rust-wayland-scanner-0.31.7
                      rust-wayland-sys-0.31.7
                      rust-web-sys-0.3.77
                      rust-winapi-util-0.1.9
                      rust-windows-0.54.0
                      rust-windows-0.56.0
                      rust-windows-0.59.0
                      rust-windows-core-0.54.0
                      rust-windows-core-0.56.0
                      rust-windows-core-0.59.0
                      rust-windows-implement-0.56.0
                      rust-windows-interface-0.56.0
                      rust-windows-result-0.1.2
                      rust-windows-sys-0.45.0
                      rust-windows-sys-0.48.0
                      rust-windows-sys-0.52.0
                      rust-windows-sys-0.59.0
                      rust-windows-targets-0.42.2
                      rust-windows-targets-0.48.5
                      rust-windows-targets-0.52.6
                      rust-windows-aarch64-gnullvm-0.42.2
                      rust-windows-aarch64-gnullvm-0.48.5
                      rust-windows-aarch64-gnullvm-0.52.6
                      rust-windows-aarch64-msvc-0.42.2
                      rust-windows-aarch64-msvc-0.48.5
                      rust-windows-aarch64-msvc-0.52.6
                      rust-windows-i686-gnu-0.42.2
                      rust-windows-i686-gnu-0.48.5
                      rust-windows-i686-gnu-0.52.6
                      rust-windows-i686-gnullvm-0.52.6
                      rust-windows-i686-msvc-0.42.2
                      rust-windows-i686-msvc-0.48.5
                      rust-windows-i686-msvc-0.52.6
                      rust-windows-x86-64-gnu-0.42.2
                      rust-windows-x86-64-gnu-0.48.5
                      rust-windows-x86-64-gnu-0.52.6
                      rust-windows-x86-64-gnullvm-0.42.2
                      rust-windows-x86-64-gnullvm-0.48.5
                      rust-windows-x86-64-gnullvm-0.52.6
                      rust-windows-x86-64-msvc-0.42.2
                      rust-windows-x86-64-msvc-0.48.5
                      rust-windows-x86-64-msvc-0.52.6
                      rust-winnow-0.5.40
                      ;; rust-winnow-0.6.13
                      rust-wyz-0.5.1
                      rust-xkbcommon-0.7.0
                      rust-xkeysym-0.2.1
                      ;; rust-xml-rs-0.8.20

                      ;;                      rust-alsa-sys-0.3.1
                      ;;                      rust-anstream-0.6.18
                      ;;                      rust-anstyle-1.0.10
                      ;;                      rust-async-channel-2.3.1
                      ;;                      rust-backtrace-0.3.71
                      ;;                      rust-bitflags-1.3.2
                      ;;                      rust-bitflags-2.9.3
                      ;;                      rust-bitvec-1.0.1
                      ;;                      rust-radium-0.7.0
                      ;;                      rust-funty-2.0.0
                      ;;                      rust-bytes-1.10.1
                      ;;                      rust-cairo-rs-0.19.4
                      ;;                      rust-cfg-if-0.1.10
                      ;;                      rust-cfg-if-1.0.3
                      ;;                      rust-clap-lex-0.7.4
                      ;;                      rust-color-eyre-0.6.3
                      ;;                      rust-color-spantrace-0.2.1
                      ;;                      rust-concurrent-queue-2.5.0
                      ;;                      rust-coreaudio-rs-0.11.3
                      ;;                      rust-coreaudio-sys-0.2.16
                      ;;                      rust-core-foundation-sys-0.8.7
                      ;;                      rust-core-foundation-0.9.4
                      ;;                      rust-core-graphics-0.23.2
                      ;;                      rust-foreign-types-0.5.0
                      ;;                      ;; rust-foreign-types-macros-0.2.3
                      ;;                      ;; rust-foreign-types-shared-0.3.1
                      ;;                      rust-core-graphics-types-0.1.3
                      ;;                      rust-cpal-0.15.3
                      ;;                      rust-crossbeam-channel-0.5.15
                      ;;                      rust-crossbeam-utils-0.8.21
                      ;;                      rust-csscolorparser-0.6.2
                      ;;                      rust-dasp-sample-0.11.0
                      ;;                      rust-evdev-0.12.2
                      ;;                      rust-event-listener-5.4.0
                      ;;                      rust-event-listener-strategy-0.5.4
                      ;;                      rust-eyre-0.6.12
                      ;;                      rust-field-offset-0.3.6
                      ;;                      rust-filetime-0.2.25
                      ;;                      rust-foreign-types-shared-0.3.1
                      ;;                      rust-futures-channel-0.3.28
                      ;;                      rust-futures-core-0.3.31
                      ;;                      rust-fsevent-sys-4.1.0
                      ;; rust-gio-0.19.8
                      ;; rust-glib-0.19.9
                      ;; rust-glib-sys-0.19.8
                      ;;                      rust-indenter-0.3.3
                      ;;                      rust-cesu8-1.1.0
                      ;;                      rust-combine-4.6.7
                      ;;                      rust-inotify-0.9.6
                      ;;                      ;; rust-inotify-sys-0.1.5
                      ;;                      rust-itoa-1.0.14
                      ;;                      rust-jni-0.21.1
                      ;;                      rust-jni-sys-0.3.0
                      ;;                      rust-js-sys-0.3.77
                      ;;                      rust-kqueue-1.1.1
                      ;;                      ;; rust-kqueue-sys-1.0.4
                      ;;                      rust-libc-0.2.147
                      ;;                      rust-log-0.4.20
                      ;;                      rust-mach2-0.4.2
                      ;;                      rust-memchr-2.7.4
                      ;;                      rust-mio-0.8.11
                      ;;                      rust-ndk-0.8.0
                      ;;                      rust-ndk-context-0.1.1
                      ;;                      rust-ndk-sys-0.5.0+25.2.9519653
                      ;;                      rust-nix-0.23.2
                      ;;                      rust-notify-6.1.1
                      ;;                      rust-num-cpus-1.17.0
                      ;;                      rust-num-derive-0.4.2
                      ;;                      rust-num-enum-0.7.4
                      ;;                      rust-num-traits-0.2.19
                      ;;                      rust-objc2-0.5.2

                      ;;                      ;; rust-objc-0.2.7
                      ;;                      ;; rust-objc-foundation-0.1.1
                      ;;                      rust-objc-sys-0.3.5
                      ;;                      ;; rust-objc2-0.5.2
                      ;;                      ;; rust-objc2-app-kit-0.2.2
                      ;;                      ;; rust-objc2-cloud-kit-0.2.2
                      ;;                      ;; rust-objc2-contacts-0.2.2
                      ;;                      ;; rust-objc2-core-data-0.2.2
                      ;;                      ;; rust-objc2-core-image-0.2.2
                      ;;                      ;; rust-objc2-core-location-0.2.2
                      ;;                      rust-objc2-encode-4.1.0
                      ;;                      ;; rust-objc2-foundation-0.2.2
                      ;;                      ;; rust-objc2-link-presentation-0.2.2
                      ;;                      ;; rust-objc2-metal-0.2.2
                      ;;                      ;; rust-objc2-quartz-core-0.2.2
                      ;;                      ;; rust-objc2-symbols-0.2.2
                      ;;                      ;; rust-objc2-ui-kit-0.2.2
                      ;;                      ;; rust-objc2-uniform-type-identifiers-0.2.2
                      ;;                      ;; rust-objc2-user-notifications-0.2.2
                      ;;                      ;; rust-objc-id-0.1.1

                      ;;                      rust-oboe-0.6.1
                      ;;                      rust-oboe-sys-0.6.1
                      ;;                      rust-once-cell-1.21.3
                      ;;                      rust-pango-0.19.8
                      ;;                      rust-pin-project-lite-0.2.16
                      ;;                      rust-pin-utils-0.1.0
                      ;;                      rust-ryu-1.0.19
                      ;;                      rust-serde-1.0.216
                      ;;                      rust-serde-derive-1.0.216
                      ;;                      rust-serde-json-1.0.139
                      ;;                      rust-slab-0.4.11
                      ;;                      rust-socket2-0.5.7
                      ;;                      rust-strsim-0.11.1
                      ;;                      rust-tempfile-3.21.0
                      ;;                      rust-rustix-1.0.5
                      ;;                      rust-fastrand-2.3.0
                      ;;                      rust-thiserror-1.0.69
                      ;;                      rust-tokio-util-0.7.14
                      ;;                      rust-tracing-error-0.2.1
                      ;;                      rust-walkdir-2.5.0
                      ;;                      rust-wayland-backend-0.3.11
                      ;;                      rust-wayland-client-0.31.11
                      ;;                      rust-wayland-scanner-0.31.7
                      ;;                      rust-wayland-protocols-0.31.2


                      ;;                      rust-web-sys-0.3.77
                      ;;                      rust-windows-0.54.0
                      ;;                      rust-windows-0.56.0
                      ;;                      rust-windows-core-0.54.0
                      ;;                      rust-windows-core-0.56.0
                      ;;                      rust-windows-sys-0.45.0
                      ;;                      rust-windows-sys-0.48.0
                      ;;                      rust-windows-sys-0.52.0
                      ;;                      rust-windows-targets-0.52.6
                      ;;                      rust-xkbcommon-0.7.0
                      ;;                      rust-memmap2-0.8.0
                      ;;                      rust-xkeysym-0.2.1

                      ;;                      rust-signal-hook-registry-1.4.6
                      ;;                      rust-futures-sink-0.3.31
                      ;;                      rust-heck-0.5.0
                      ;;                      rust-proc-macro2-1.0.101
                      ;;                      rust-quote-1.0.38
                      ;;                      rust-syn-2.0.100
                      ;;                      rust-rustc-demangle-0.1.26
                      ;;                      rust-cc-1.2.26
                      ;;                      rust-addr2line-0.21.0
                      ;;                      rust-miniz-oxide-0.7.4
                      ;;                      rust-object-0.32.2
                      ;;                      rust-tracing-0.1.36
                      ;;                      rust-tracing-core-0.1.33
                      ;;                      rust-tracing-subscriber-0.3.20
                      ;;                      rust-phf-0.11.3

                      ))))

(use-modules (guix build-system cargo)
             (gnu packages rust-crates)
             (guix import crate)
             (guix packages)
             (ice-9 match)
             (guix base32)
             (srfi srfi-26))

;; (cargo-inputs rust-evdev-0.12.2)

(define rust-evdev-0.12.2
  (crate-source "evdev" "0.12.2"
                "19qh6r1z4v8ja6qqigjbg9vckbhlycc6wkqgzfz9fcln7almaq5b"))

(getcwd)

(define (origin->name o)
  (let* ((suffix-length (string-length "https://crates.io/api/v1/crates/"))
         (suffix (string-drop (origin-uri o) suffix-length))
         (infix (string-drop-right suffix (string-length "/download")))
         (crate (string-join (string-split infix (char-set #\/ #\_)) "-")))
    (string-append "rust-" crate)))

(define (origin->crate-source-list o)
  (let* ((suffix-length (string-length "https://crates.io/api/v1/crates/"))
         (suffix (string-drop (origin-uri o) suffix-length))
         (infix (string-drop-right suffix (string-length "/download")))
         (crate (string-join (string-split infix (char-set #\/ #\_)) "-")))
    (match (string-split infix #\/)
      ((name version)
       (list name version
             (and=> (content-hash-value (origin-hash o))
                    bytevector->nix-base32-string))))))

(let ((inputs (cargo-inputs-from-lockfile)))
  (map (compose ; (cut apply crate-source <>)
                origin->crate-source-list) inputs))

rust-evdev-0.12.2
