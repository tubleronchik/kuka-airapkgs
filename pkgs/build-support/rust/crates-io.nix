{ lib, buildRustCrate, buildRustCrateHelpers }:
with buildRustCrateHelpers;
let inherit (lib.lists) fold;
    inherit (lib.attrsets) recursiveUpdate;
in
rec {
# aho-corasick-0.6.10

  crates.aho_corasick."0.6.10" = deps: { features?(features_.aho_corasick."0.6.10" deps {}) }: buildRustCrate {
    crateName = "aho-corasick";
    version = "0.6.10";
    description = "Fast multiple substring searching with finite state machines.";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "0bhasxfpmfmz1460chwsx59vdld05axvmk1nbp3sd48xav3d108p";
    libName = "aho_corasick";
    crateBin =
      [{  name = "aho-corasick-dot";  path = "src/main.rs"; }];
    dependencies = mapFeatures features ([
      (crates."memchr"."${deps."aho_corasick"."0.6.10"."memchr"}" deps)
    ]);
  };
  features_.aho_corasick."0.6.10" = deps: f: updateFeatures f ({
    aho_corasick."0.6.10".default = (f.aho_corasick."0.6.10".default or true);
    memchr."${deps.aho_corasick."0.6.10".memchr}".default = true;
  }) [
    (features_.memchr."${deps."aho_corasick"."0.6.10"."memchr"}" deps)
  ];


# end
# aho-corasick-0.6.8

  crates.aho_corasick."0.6.8" = deps: { features?(features_.aho_corasick."0.6.8" deps {}) }: buildRustCrate {
    crateName = "aho-corasick";
    version = "0.6.8";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "04bz5m32ykyn946iwxgbrl8nwca7ssxsqma140hgmkchaay80nfr";
    libName = "aho_corasick";
    crateBin =
      [{  name = "aho-corasick-dot";  path = "src/main.rs"; }];
    dependencies = mapFeatures features ([
      (crates."memchr"."${deps."aho_corasick"."0.6.8"."memchr"}" deps)
    ]);
  };
  features_.aho_corasick."0.6.8" = deps: f: updateFeatures f ({
    aho_corasick."0.6.8".default = (f.aho_corasick."0.6.8".default or true);
    memchr."${deps.aho_corasick."0.6.8".memchr}".default = true;
  }) [
    (features_.memchr."${deps."aho_corasick"."0.6.8"."memchr"}" deps)
  ];


# end
# ansi_term-0.11.0

  crates.ansi_term."0.11.0" = deps: { features?(features_.ansi_term."0.11.0" deps {}) }: buildRustCrate {
    crateName = "ansi_term";
    version = "0.11.0";
    authors = [ "ogham@bsago.me" "Ryan Scheel (Havvy) <ryan.havvy@gmail.com>" "Josh Triplett <josh@joshtriplett.org>" ];
    sha256 = "08fk0p2xvkqpmz3zlrwnf6l8sj2vngw464rvzspzp31sbgxbwm4v";
    dependencies = (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."ansi_term"."0.11.0"."winapi"}" deps)
    ]) else []);
  };
  features_.ansi_term."0.11.0" = deps: f: updateFeatures f ({
    ansi_term."0.11.0".default = (f.ansi_term."0.11.0".default or true);
    winapi = fold recursiveUpdate {} [
      { "${deps.ansi_term."0.11.0".winapi}"."consoleapi" = true; }
      { "${deps.ansi_term."0.11.0".winapi}"."errhandlingapi" = true; }
      { "${deps.ansi_term."0.11.0".winapi}"."processenv" = true; }
      { "${deps.ansi_term."0.11.0".winapi}".default = true; }
    ];
  }) [
    (features_.winapi."${deps."ansi_term"."0.11.0"."winapi"}" deps)
  ];


# end
# argon2rs-0.2.5

  crates.argon2rs."0.2.5" = deps: { features?(features_.argon2rs."0.2.5" deps {}) }: buildRustCrate {
    crateName = "argon2rs";
    version = "0.2.5";
    authors = [ "bryant <bryant@defrag.in>" ];
    sha256 = "1byl9b3wwyrarn8qack21v5fi2qsnn3y5clvikk2apskhmnih1rw";
    dependencies = mapFeatures features ([
      (crates."blake2_rfc"."${deps."argon2rs"."0.2.5"."blake2_rfc"}" deps)
      (crates."scoped_threadpool"."${deps."argon2rs"."0.2.5"."scoped_threadpool"}" deps)
    ]);
    features = mkFeatures (features."argon2rs"."0.2.5" or {});
  };
  features_.argon2rs."0.2.5" = deps: f: updateFeatures f (rec {
    argon2rs."0.2.5".default = (f.argon2rs."0.2.5".default or true);
    blake2_rfc = fold recursiveUpdate {} [
      { "${deps.argon2rs."0.2.5".blake2_rfc}"."simd_asm" =
        (f.blake2_rfc."${deps.argon2rs."0.2.5".blake2_rfc}"."simd_asm" or false) ||
        (argon2rs."0.2.5"."simd" or false) ||
        (f."argon2rs"."0.2.5"."simd" or false); }
      { "${deps.argon2rs."0.2.5".blake2_rfc}".default = true; }
    ];
    scoped_threadpool."${deps.argon2rs."0.2.5".scoped_threadpool}".default = true;
  }) [
    (features_.blake2_rfc."${deps."argon2rs"."0.2.5"."blake2_rfc"}" deps)
    (features_.scoped_threadpool."${deps."argon2rs"."0.2.5"."scoped_threadpool"}" deps)
  ];


# end
# arrayvec-0.4.10

  crates.arrayvec."0.4.10" = deps: { features?(features_.arrayvec."0.4.10" deps {}) }: buildRustCrate {
    crateName = "arrayvec";
    version = "0.4.10";
    description = "A vector with fixed capacity, backed by an array (it can be stored on the stack too). Implements fixed capacity ArrayVec and ArrayString.";
    authors = [ "bluss" ];
    sha256 = "0qbh825i59w5wfdysqdkiwbwkrsy7lgbd4pwbyb8pxx8wc36iny8";
    dependencies = mapFeatures features ([
      (crates."nodrop"."${deps."arrayvec"."0.4.10"."nodrop"}" deps)
    ]);
    features = mkFeatures (features."arrayvec"."0.4.10" or {});
  };
  features_.arrayvec."0.4.10" = deps: f: updateFeatures f (rec {
    arrayvec = fold recursiveUpdate {} [
      { "0.4.10"."serde" =
        (f.arrayvec."0.4.10"."serde" or false) ||
        (f.arrayvec."0.4.10".serde-1 or false) ||
        (arrayvec."0.4.10"."serde-1" or false); }
      { "0.4.10"."std" =
        (f.arrayvec."0.4.10"."std" or false) ||
        (f.arrayvec."0.4.10".default or false) ||
        (arrayvec."0.4.10"."default" or false); }
      { "0.4.10".default = (f.arrayvec."0.4.10".default or true); }
    ];
    nodrop."${deps.arrayvec."0.4.10".nodrop}".default = (f.nodrop."${deps.arrayvec."0.4.10".nodrop}".default or false);
  }) [
    (features_.nodrop."${deps."arrayvec"."0.4.10"."nodrop"}" deps)
  ];


# end
# arrayvec-0.4.7

  crates.arrayvec."0.4.7" = deps: { features?(features_.arrayvec."0.4.7" deps {}) }: buildRustCrate {
    crateName = "arrayvec";
    version = "0.4.7";
    authors = [ "bluss" ];
    sha256 = "0fzgv7z1x1qnyd7j32vdcadk4k9wfx897y06mr3bw1yi52iqf4z4";
    dependencies = mapFeatures features ([
      (crates."nodrop"."${deps."arrayvec"."0.4.7"."nodrop"}" deps)
    ]);
    features = mkFeatures (features."arrayvec"."0.4.7" or {});
  };
  features_.arrayvec."0.4.7" = deps: f: updateFeatures f (rec {
    arrayvec = fold recursiveUpdate {} [
      { "0.4.7".default = (f.arrayvec."0.4.7".default or true); }
      { "0.4.7".serde =
        (f.arrayvec."0.4.7".serde or false) ||
        (f.arrayvec."0.4.7".serde-1 or false) ||
        (arrayvec."0.4.7"."serde-1" or false); }
      { "0.4.7".std =
        (f.arrayvec."0.4.7".std or false) ||
        (f.arrayvec."0.4.7".default or false) ||
        (arrayvec."0.4.7"."default" or false); }
    ];
    nodrop."${deps.arrayvec."0.4.7".nodrop}".default = (f.nodrop."${deps.arrayvec."0.4.7".nodrop}".default or false);
  }) [
    (features_.nodrop."${deps."arrayvec"."0.4.7"."nodrop"}" deps)
  ];


# end
# atty-0.2.11

  crates.atty."0.2.11" = deps: { features?(features_.atty."0.2.11" deps {}) }: buildRustCrate {
    crateName = "atty";
    version = "0.2.11";
    authors = [ "softprops <d.tangren@gmail.com>" ];
    sha256 = "0by1bj2km9jxi4i4g76zzi76fc2rcm9934jpnyrqd95zw344pb20";
    dependencies = (if kernel == "redox" then mapFeatures features ([
      (crates."termion"."${deps."atty"."0.2.11"."termion"}" deps)
    ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."atty"."0.2.11"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."atty"."0.2.11"."winapi"}" deps)
    ]) else []);
  };
  features_.atty."0.2.11" = deps: f: updateFeatures f ({
    atty."0.2.11".default = (f.atty."0.2.11".default or true);
    libc."${deps.atty."0.2.11".libc}".default = (f.libc."${deps.atty."0.2.11".libc}".default or false);
    termion."${deps.atty."0.2.11".termion}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.atty."0.2.11".winapi}"."consoleapi" = true; }
      { "${deps.atty."0.2.11".winapi}"."minwinbase" = true; }
      { "${deps.atty."0.2.11".winapi}"."minwindef" = true; }
      { "${deps.atty."0.2.11".winapi}"."processenv" = true; }
      { "${deps.atty."0.2.11".winapi}"."winbase" = true; }
      { "${deps.atty."0.2.11".winapi}".default = true; }
    ];
  }) [
    (features_.termion."${deps."atty"."0.2.11"."termion"}" deps)
    (features_.libc."${deps."atty"."0.2.11"."libc"}" deps)
    (features_.winapi."${deps."atty"."0.2.11"."winapi"}" deps)
  ];


# end
# autocfg-0.1.2

  crates.autocfg."0.1.2" = deps: { features?(features_.autocfg."0.1.2" deps {}) }: buildRustCrate {
    crateName = "autocfg";
    version = "0.1.2";
    description = "Automatic cfg for Rust compiler features";
    authors = [ "Josh Stone <cuviper@gmail.com>" ];
    sha256 = "0dv81dwnp1al3j4ffz007yrjv4w1c7hw09gnf0xs3icxiw6qqfs3";
  };
  features_.autocfg."0.1.2" = deps: f: updateFeatures f ({
    autocfg."0.1.2".default = (f.autocfg."0.1.2".default or true);
  }) [];


# end
# backtrace-0.3.14

  crates.backtrace."0.3.14" = deps: { features?(features_.backtrace."0.3.14" deps {}) }: buildRustCrate {
    crateName = "backtrace";
    version = "0.3.14";
    description = "A library to acquire a stack trace (backtrace) at runtime in a Rust program.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" "The Rust Project Developers" ];
    sha256 = "0sp0ib8r5w9sv1g2nkm9yclp16j46yjglw0yhkmh0snf355633mz";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."backtrace"."0.3.14"."cfg_if"}" deps)
      (crates."rustc_demangle"."${deps."backtrace"."0.3.14"."rustc_demangle"}" deps)
    ])
      ++ (if (kernel == "linux" || kernel == "darwin") && !(kernel == "fuchsia") && !(kernel == "emscripten") && !(kernel == "darwin") && !(kernel == "ios") then mapFeatures features ([
    ]
      ++ (if features.backtrace."0.3.14".backtrace-sys or false then [ (crates.backtrace_sys."${deps."backtrace"."0.3.14".backtrace_sys}" deps) ] else [])) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") || abi == "sgx" then mapFeatures features ([
      (crates."libc"."${deps."backtrace"."0.3.14"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."backtrace"."0.3.14"."winapi"}" deps)
    ]) else []);

    buildDependencies = mapFeatures features ([
      (crates."autocfg"."${deps."backtrace"."0.3.14"."autocfg"}" deps)
    ]);
    features = mkFeatures (features."backtrace"."0.3.14" or {});
  };
  features_.backtrace."0.3.14" = deps: f: updateFeatures f (rec {
    autocfg."${deps.backtrace."0.3.14".autocfg}".default = true;
    backtrace = fold recursiveUpdate {} [
      { "0.3.14"."addr2line" =
        (f.backtrace."0.3.14"."addr2line" or false) ||
        (f.backtrace."0.3.14".gimli-symbolize or false) ||
        (backtrace."0.3.14"."gimli-symbolize" or false); }
      { "0.3.14"."backtrace-sys" =
        (f.backtrace."0.3.14"."backtrace-sys" or false) ||
        (f.backtrace."0.3.14".libbacktrace or false) ||
        (backtrace."0.3.14"."libbacktrace" or false); }
      { "0.3.14"."coresymbolication" =
        (f.backtrace."0.3.14"."coresymbolication" or false) ||
        (f.backtrace."0.3.14".default or false) ||
        (backtrace."0.3.14"."default" or false); }
      { "0.3.14"."dbghelp" =
        (f.backtrace."0.3.14"."dbghelp" or false) ||
        (f.backtrace."0.3.14".default or false) ||
        (backtrace."0.3.14"."default" or false); }
      { "0.3.14"."dladdr" =
        (f.backtrace."0.3.14"."dladdr" or false) ||
        (f.backtrace."0.3.14".default or false) ||
        (backtrace."0.3.14"."default" or false); }
      { "0.3.14"."findshlibs" =
        (f.backtrace."0.3.14"."findshlibs" or false) ||
        (f.backtrace."0.3.14".gimli-symbolize or false) ||
        (backtrace."0.3.14"."gimli-symbolize" or false); }
      { "0.3.14"."gimli" =
        (f.backtrace."0.3.14"."gimli" or false) ||
        (f.backtrace."0.3.14".gimli-symbolize or false) ||
        (backtrace."0.3.14"."gimli-symbolize" or false); }
      { "0.3.14"."libbacktrace" =
        (f.backtrace."0.3.14"."libbacktrace" or false) ||
        (f.backtrace."0.3.14".default or false) ||
        (backtrace."0.3.14"."default" or false); }
      { "0.3.14"."libunwind" =
        (f.backtrace."0.3.14"."libunwind" or false) ||
        (f.backtrace."0.3.14".default or false) ||
        (backtrace."0.3.14"."default" or false); }
      { "0.3.14"."memmap" =
        (f.backtrace."0.3.14"."memmap" or false) ||
        (f.backtrace."0.3.14".gimli-symbolize or false) ||
        (backtrace."0.3.14"."gimli-symbolize" or false); }
      { "0.3.14"."object" =
        (f.backtrace."0.3.14"."object" or false) ||
        (f.backtrace."0.3.14".gimli-symbolize or false) ||
        (backtrace."0.3.14"."gimli-symbolize" or false); }
      { "0.3.14"."rustc-serialize" =
        (f.backtrace."0.3.14"."rustc-serialize" or false) ||
        (f.backtrace."0.3.14".serialize-rustc or false) ||
        (backtrace."0.3.14"."serialize-rustc" or false); }
      { "0.3.14"."serde" =
        (f.backtrace."0.3.14"."serde" or false) ||
        (f.backtrace."0.3.14".serialize-serde or false) ||
        (backtrace."0.3.14"."serialize-serde" or false); }
      { "0.3.14"."serde_derive" =
        (f.backtrace."0.3.14"."serde_derive" or false) ||
        (f.backtrace."0.3.14".serialize-serde or false) ||
        (backtrace."0.3.14"."serialize-serde" or false); }
      { "0.3.14"."std" =
        (f.backtrace."0.3.14"."std" or false) ||
        (f.backtrace."0.3.14".default or false) ||
        (backtrace."0.3.14"."default" or false) ||
        (f.backtrace."0.3.14".libbacktrace or false) ||
        (backtrace."0.3.14"."libbacktrace" or false); }
      { "0.3.14".default = (f.backtrace."0.3.14".default or true); }
    ];
    backtrace_sys."${deps.backtrace."0.3.14".backtrace_sys}".default = true;
    cfg_if."${deps.backtrace."0.3.14".cfg_if}".default = true;
    libc."${deps.backtrace."0.3.14".libc}".default = (f.libc."${deps.backtrace."0.3.14".libc}".default or false);
    rustc_demangle."${deps.backtrace."0.3.14".rustc_demangle}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.backtrace."0.3.14".winapi}"."dbghelp" = true; }
      { "${deps.backtrace."0.3.14".winapi}"."minwindef" = true; }
      { "${deps.backtrace."0.3.14".winapi}"."processthreadsapi" = true; }
      { "${deps.backtrace."0.3.14".winapi}"."winnt" = true; }
      { "${deps.backtrace."0.3.14".winapi}".default = true; }
    ];
  }) [
    (features_.cfg_if."${deps."backtrace"."0.3.14"."cfg_if"}" deps)
    (features_.rustc_demangle."${deps."backtrace"."0.3.14"."rustc_demangle"}" deps)
    (features_.autocfg."${deps."backtrace"."0.3.14"."autocfg"}" deps)
    (features_.backtrace_sys."${deps."backtrace"."0.3.14"."backtrace_sys"}" deps)
    (features_.libc."${deps."backtrace"."0.3.14"."libc"}" deps)
    (features_.winapi."${deps."backtrace"."0.3.14"."winapi"}" deps)
  ];


# end
# backtrace-0.3.9

  crates.backtrace."0.3.9" = deps: { features?(features_.backtrace."0.3.9" deps {}) }: buildRustCrate {
    crateName = "backtrace";
    version = "0.3.9";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" "The Rust Project Developers" ];
    sha256 = "137pjkcn89b7fqk78w65ggj92pynmf1hkr1sjz53aga4b50lkmwm";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."backtrace"."0.3.9"."cfg_if"}" deps)
      (crates."rustc_demangle"."${deps."backtrace"."0.3.9"."rustc_demangle"}" deps)
    ])
      ++ (if (kernel == "linux" || kernel == "darwin") && !(kernel == "fuchsia") && !(kernel == "emscripten") && !(kernel == "darwin") && !(kernel == "ios") then mapFeatures features ([
    ]
      ++ (if features.backtrace."0.3.9".backtrace-sys or false then [ (crates.backtrace_sys."${deps."backtrace"."0.3.9".backtrace_sys}" deps) ] else [])) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."backtrace"."0.3.9"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
    ]
      ++ (if features.backtrace."0.3.9".winapi or false then [ (crates.winapi."${deps."backtrace"."0.3.9".winapi}" deps) ] else [])) else []);
    features = mkFeatures (features."backtrace"."0.3.9" or {});
  };
  features_.backtrace."0.3.9" = deps: f: updateFeatures f (rec {
    backtrace = fold recursiveUpdate {} [
      { "0.3.9".addr2line =
        (f.backtrace."0.3.9".addr2line or false) ||
        (f.backtrace."0.3.9".gimli-symbolize or false) ||
        (backtrace."0.3.9"."gimli-symbolize" or false); }
      { "0.3.9".backtrace-sys =
        (f.backtrace."0.3.9".backtrace-sys or false) ||
        (f.backtrace."0.3.9".libbacktrace or false) ||
        (backtrace."0.3.9"."libbacktrace" or false); }
      { "0.3.9".coresymbolication =
        (f.backtrace."0.3.9".coresymbolication or false) ||
        (f.backtrace."0.3.9".default or false) ||
        (backtrace."0.3.9"."default" or false); }
      { "0.3.9".dbghelp =
        (f.backtrace."0.3.9".dbghelp or false) ||
        (f.backtrace."0.3.9".default or false) ||
        (backtrace."0.3.9"."default" or false); }
      { "0.3.9".default = (f.backtrace."0.3.9".default or true); }
      { "0.3.9".dladdr =
        (f.backtrace."0.3.9".dladdr or false) ||
        (f.backtrace."0.3.9".default or false) ||
        (backtrace."0.3.9"."default" or false); }
      { "0.3.9".findshlibs =
        (f.backtrace."0.3.9".findshlibs or false) ||
        (f.backtrace."0.3.9".gimli-symbolize or false) ||
        (backtrace."0.3.9"."gimli-symbolize" or false); }
      { "0.3.9".gimli =
        (f.backtrace."0.3.9".gimli or false) ||
        (f.backtrace."0.3.9".gimli-symbolize or false) ||
        (backtrace."0.3.9"."gimli-symbolize" or false); }
      { "0.3.9".libbacktrace =
        (f.backtrace."0.3.9".libbacktrace or false) ||
        (f.backtrace."0.3.9".default or false) ||
        (backtrace."0.3.9"."default" or false); }
      { "0.3.9".libunwind =
        (f.backtrace."0.3.9".libunwind or false) ||
        (f.backtrace."0.3.9".default or false) ||
        (backtrace."0.3.9"."default" or false); }
      { "0.3.9".memmap =
        (f.backtrace."0.3.9".memmap or false) ||
        (f.backtrace."0.3.9".gimli-symbolize or false) ||
        (backtrace."0.3.9"."gimli-symbolize" or false); }
      { "0.3.9".object =
        (f.backtrace."0.3.9".object or false) ||
        (f.backtrace."0.3.9".gimli-symbolize or false) ||
        (backtrace."0.3.9"."gimli-symbolize" or false); }
      { "0.3.9".rustc-serialize =
        (f.backtrace."0.3.9".rustc-serialize or false) ||
        (f.backtrace."0.3.9".serialize-rustc or false) ||
        (backtrace."0.3.9"."serialize-rustc" or false); }
      { "0.3.9".serde =
        (f.backtrace."0.3.9".serde or false) ||
        (f.backtrace."0.3.9".serialize-serde or false) ||
        (backtrace."0.3.9"."serialize-serde" or false); }
      { "0.3.9".serde_derive =
        (f.backtrace."0.3.9".serde_derive or false) ||
        (f.backtrace."0.3.9".serialize-serde or false) ||
        (backtrace."0.3.9"."serialize-serde" or false); }
      { "0.3.9".winapi =
        (f.backtrace."0.3.9".winapi or false) ||
        (f.backtrace."0.3.9".dbghelp or false) ||
        (backtrace."0.3.9"."dbghelp" or false); }
    ];
    backtrace_sys."${deps.backtrace."0.3.9".backtrace_sys}".default = true;
    cfg_if."${deps.backtrace."0.3.9".cfg_if}".default = true;
    libc."${deps.backtrace."0.3.9".libc}".default = true;
    rustc_demangle."${deps.backtrace."0.3.9".rustc_demangle}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.backtrace."0.3.9".winapi}"."dbghelp" = true; }
      { "${deps.backtrace."0.3.9".winapi}"."minwindef" = true; }
      { "${deps.backtrace."0.3.9".winapi}"."processthreadsapi" = true; }
      { "${deps.backtrace."0.3.9".winapi}"."std" = true; }
      { "${deps.backtrace."0.3.9".winapi}"."winnt" = true; }
      { "${deps.backtrace."0.3.9".winapi}".default = true; }
    ];
  }) [
    (features_.cfg_if."${deps."backtrace"."0.3.9"."cfg_if"}" deps)
    (features_.rustc_demangle."${deps."backtrace"."0.3.9"."rustc_demangle"}" deps)
    (features_.backtrace_sys."${deps."backtrace"."0.3.9"."backtrace_sys"}" deps)
    (features_.libc."${deps."backtrace"."0.3.9"."libc"}" deps)
    (features_.winapi."${deps."backtrace"."0.3.9"."winapi"}" deps)
  ];


# end
# backtrace-sys-0.1.24

  crates.backtrace_sys."0.1.24" = deps: { features?(features_.backtrace_sys."0.1.24" deps {}) }: buildRustCrate {
    crateName = "backtrace-sys";
    version = "0.1.24";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "15d6jlknykiijcin3vqbx33760w24ss5qw3l1xd3hms5k4vc8305";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."backtrace_sys"."0.1.24"."libc"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."cc"."${deps."backtrace_sys"."0.1.24"."cc"}" deps)
    ]);
  };
  features_.backtrace_sys."0.1.24" = deps: f: updateFeatures f ({
    backtrace_sys."0.1.24".default = (f.backtrace_sys."0.1.24".default or true);
    cc."${deps.backtrace_sys."0.1.24".cc}".default = true;
    libc."${deps.backtrace_sys."0.1.24".libc}".default = true;
  }) [
    (features_.libc."${deps."backtrace_sys"."0.1.24"."libc"}" deps)
    (features_.cc."${deps."backtrace_sys"."0.1.24"."cc"}" deps)
  ];


# end
# backtrace-sys-0.1.28

  crates.backtrace_sys."0.1.28" = deps: { features?(features_.backtrace_sys."0.1.28" deps {}) }: buildRustCrate {
    crateName = "backtrace-sys";
    version = "0.1.28";
    description = "Bindings to the libbacktrace gcc library\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "1bbw8chs0wskxwzz7f3yy7mjqhyqj8lslq8pcjw1rbd2g23c34xl";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."backtrace_sys"."0.1.28"."libc"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."cc"."${deps."backtrace_sys"."0.1.28"."cc"}" deps)
    ]);
  };
  features_.backtrace_sys."0.1.28" = deps: f: updateFeatures f ({
    backtrace_sys."0.1.28".default = (f.backtrace_sys."0.1.28".default or true);
    cc."${deps.backtrace_sys."0.1.28".cc}".default = true;
    libc."${deps.backtrace_sys."0.1.28".libc}".default = (f.libc."${deps.backtrace_sys."0.1.28".libc}".default or false);
  }) [
    (features_.libc."${deps."backtrace_sys"."0.1.28"."libc"}" deps)
    (features_.cc."${deps."backtrace_sys"."0.1.28"."cc"}" deps)
  ];


# end
# bitflags-1.0.4

  crates.bitflags."1.0.4" = deps: { features?(features_.bitflags."1.0.4" deps {}) }: buildRustCrate {
    crateName = "bitflags";
    version = "1.0.4";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1g1wmz2001qmfrd37dnd5qiss5njrw26aywmg6yhkmkbyrhjxb08";
    features = mkFeatures (features."bitflags"."1.0.4" or {});
  };
  features_.bitflags."1.0.4" = deps: f: updateFeatures f ({
    bitflags."1.0.4".default = (f.bitflags."1.0.4".default or true);
  }) [];


# end
# blake2-rfc-0.2.18

  crates.blake2_rfc."0.2.18" = deps: { features?(features_.blake2_rfc."0.2.18" deps {}) }: buildRustCrate {
    crateName = "blake2-rfc";
    version = "0.2.18";
    authors = [ "Cesar Eduardo Barros <cesarb@cesarb.eti.br>" ];
    sha256 = "0pyqrik4471ljk16prs0iwb2sam39z0z6axyyjxlqxdmf4wprf0l";
    dependencies = mapFeatures features ([
      (crates."arrayvec"."${deps."blake2_rfc"."0.2.18"."arrayvec"}" deps)
      (crates."constant_time_eq"."${deps."blake2_rfc"."0.2.18"."constant_time_eq"}" deps)
    ]);
    features = mkFeatures (features."blake2_rfc"."0.2.18" or {});
  };
  features_.blake2_rfc."0.2.18" = deps: f: updateFeatures f (rec {
    arrayvec."${deps.blake2_rfc."0.2.18".arrayvec}".default = (f.arrayvec."${deps.blake2_rfc."0.2.18".arrayvec}".default or false);
    blake2_rfc = fold recursiveUpdate {} [
      { "0.2.18".default = (f.blake2_rfc."0.2.18".default or true); }
      { "0.2.18".simd =
        (f.blake2_rfc."0.2.18".simd or false) ||
        (f.blake2_rfc."0.2.18".simd_opt or false) ||
        (blake2_rfc."0.2.18"."simd_opt" or false); }
      { "0.2.18".simd_opt =
        (f.blake2_rfc."0.2.18".simd_opt or false) ||
        (f.blake2_rfc."0.2.18".simd_asm or false) ||
        (blake2_rfc."0.2.18"."simd_asm" or false); }
      { "0.2.18".std =
        (f.blake2_rfc."0.2.18".std or false) ||
        (f.blake2_rfc."0.2.18".default or false) ||
        (blake2_rfc."0.2.18"."default" or false); }
    ];
    constant_time_eq."${deps.blake2_rfc."0.2.18".constant_time_eq}".default = true;
  }) [
    (features_.arrayvec."${deps."blake2_rfc"."0.2.18"."arrayvec"}" deps)
    (features_.constant_time_eq."${deps."blake2_rfc"."0.2.18"."constant_time_eq"}" deps)
  ];


# end
# carnix-0.10.0

  crates.carnix."0.10.0" = deps: { features?(features_.carnix."0.10.0" deps {}) }: buildRustCrate {
    crateName = "carnix";
    version = "0.10.0";
    description = "Generate Nix expressions from Cargo.lock files (in order to use Nix as a build system for crates).";
    authors = [ "pe@pijul.org <pe@pijul.org>" ];
    sha256 = "0hrp22yvrqnhaanr0ckrwihx9j3irhzd2cmb19sp49ksdi25d8ri";
    crateBin =
      [{  name = "cargo-generate-nixfile";  path = "src/cargo-generate-nixfile.rs"; }] ++
      [{  name = "carnix";  path = "src/main.rs"; }];
    dependencies = mapFeatures features ([
      (crates."clap"."${deps."carnix"."0.10.0"."clap"}" deps)
      (crates."dirs"."${deps."carnix"."0.10.0"."dirs"}" deps)
      (crates."env_logger"."${deps."carnix"."0.10.0"."env_logger"}" deps)
      (crates."failure"."${deps."carnix"."0.10.0"."failure"}" deps)
      (crates."failure_derive"."${deps."carnix"."0.10.0"."failure_derive"}" deps)
      (crates."itertools"."${deps."carnix"."0.10.0"."itertools"}" deps)
      (crates."log"."${deps."carnix"."0.10.0"."log"}" deps)
      (crates."nom"."${deps."carnix"."0.10.0"."nom"}" deps)
      (crates."regex"."${deps."carnix"."0.10.0"."regex"}" deps)
      (crates."serde"."${deps."carnix"."0.10.0"."serde"}" deps)
      (crates."serde_derive"."${deps."carnix"."0.10.0"."serde_derive"}" deps)
      (crates."serde_json"."${deps."carnix"."0.10.0"."serde_json"}" deps)
      (crates."tempdir"."${deps."carnix"."0.10.0"."tempdir"}" deps)
      (crates."toml"."${deps."carnix"."0.10.0"."toml"}" deps)
      (crates."url"."${deps."carnix"."0.10.0"."url"}" deps)
    ]);
  };
  features_.carnix."0.10.0" = deps: f: updateFeatures f ({
    carnix."0.10.0".default = (f.carnix."0.10.0".default or true);
    clap."${deps.carnix."0.10.0".clap}".default = true;
    dirs."${deps.carnix."0.10.0".dirs}".default = true;
    env_logger."${deps.carnix."0.10.0".env_logger}".default = true;
    failure."${deps.carnix."0.10.0".failure}".default = true;
    failure_derive."${deps.carnix."0.10.0".failure_derive}".default = true;
    itertools."${deps.carnix."0.10.0".itertools}".default = true;
    log."${deps.carnix."0.10.0".log}".default = true;
    nom."${deps.carnix."0.10.0".nom}".default = true;
    regex."${deps.carnix."0.10.0".regex}".default = true;
    serde."${deps.carnix."0.10.0".serde}".default = true;
    serde_derive."${deps.carnix."0.10.0".serde_derive}".default = true;
    serde_json."${deps.carnix."0.10.0".serde_json}".default = true;
    tempdir."${deps.carnix."0.10.0".tempdir}".default = true;
    toml."${deps.carnix."0.10.0".toml}".default = true;
    url."${deps.carnix."0.10.0".url}".default = true;
  }) [
    (features_.clap."${deps."carnix"."0.10.0"."clap"}" deps)
    (features_.dirs."${deps."carnix"."0.10.0"."dirs"}" deps)
    (features_.env_logger."${deps."carnix"."0.10.0"."env_logger"}" deps)
    (features_.failure."${deps."carnix"."0.10.0"."failure"}" deps)
    (features_.failure_derive."${deps."carnix"."0.10.0"."failure_derive"}" deps)
    (features_.itertools."${deps."carnix"."0.10.0"."itertools"}" deps)
    (features_.log."${deps."carnix"."0.10.0"."log"}" deps)
    (features_.nom."${deps."carnix"."0.10.0"."nom"}" deps)
    (features_.regex."${deps."carnix"."0.10.0"."regex"}" deps)
    (features_.serde."${deps."carnix"."0.10.0"."serde"}" deps)
    (features_.serde_derive."${deps."carnix"."0.10.0"."serde_derive"}" deps)
    (features_.serde_json."${deps."carnix"."0.10.0"."serde_json"}" deps)
    (features_.tempdir."${deps."carnix"."0.10.0"."tempdir"}" deps)
    (features_.toml."${deps."carnix"."0.10.0"."toml"}" deps)
    (features_.url."${deps."carnix"."0.10.0"."url"}" deps)
  ];


# end
# carnix-0.9.1

  crates.carnix."0.9.1" = deps: { features?(features_.carnix."0.9.1" deps {}) }: buildRustCrate {
    crateName = "carnix";
    version = "0.9.1";
    authors = [ "pe@pijul.org <pe@pijul.org>" ];
    sha256 = "0dn292d4mjlxif0kclrljzff8rm35cd9d92vycjbzklyhz5d62wi";
    crateBin =
      [{  name = "cargo-generate-nixfile";  path = "src/cargo-generate-nixfile.rs"; }] ++
      [{  name = "carnix";  path = "src/main.rs"; }];
    dependencies = mapFeatures features ([
      (crates."clap"."${deps."carnix"."0.9.1"."clap"}" deps)
      (crates."dirs"."${deps."carnix"."0.9.1"."dirs"}" deps)
      (crates."env_logger"."${deps."carnix"."0.9.1"."env_logger"}" deps)
      (crates."error_chain"."${deps."carnix"."0.9.1"."error_chain"}" deps)
      (crates."itertools"."${deps."carnix"."0.9.1"."itertools"}" deps)
      (crates."log"."${deps."carnix"."0.9.1"."log"}" deps)
      (crates."nom"."${deps."carnix"."0.9.1"."nom"}" deps)
      (crates."regex"."${deps."carnix"."0.9.1"."regex"}" deps)
      (crates."serde"."${deps."carnix"."0.9.1"."serde"}" deps)
      (crates."serde_derive"."${deps."carnix"."0.9.1"."serde_derive"}" deps)
      (crates."serde_json"."${deps."carnix"."0.9.1"."serde_json"}" deps)
      (crates."tempdir"."${deps."carnix"."0.9.1"."tempdir"}" deps)
      (crates."toml"."${deps."carnix"."0.9.1"."toml"}" deps)
    ]);
  };
  features_.carnix."0.9.1" = deps: f: updateFeatures f ({
    carnix."0.9.1".default = (f.carnix."0.9.1".default or true);
    clap."${deps.carnix."0.9.1".clap}".default = true;
    dirs."${deps.carnix."0.9.1".dirs}".default = true;
    env_logger."${deps.carnix."0.9.1".env_logger}".default = true;
    error_chain."${deps.carnix."0.9.1".error_chain}".default = true;
    itertools."${deps.carnix."0.9.1".itertools}".default = true;
    log."${deps.carnix."0.9.1".log}".default = true;
    nom."${deps.carnix."0.9.1".nom}".default = true;
    regex."${deps.carnix."0.9.1".regex}".default = true;
    serde."${deps.carnix."0.9.1".serde}".default = true;
    serde_derive."${deps.carnix."0.9.1".serde_derive}".default = true;
    serde_json."${deps.carnix."0.9.1".serde_json}".default = true;
    tempdir."${deps.carnix."0.9.1".tempdir}".default = true;
    toml."${deps.carnix."0.9.1".toml}".default = true;
  }) [
    (features_.clap."${deps."carnix"."0.9.1"."clap"}" deps)
    (features_.dirs."${deps."carnix"."0.9.1"."dirs"}" deps)
    (features_.env_logger."${deps."carnix"."0.9.1"."env_logger"}" deps)
    (features_.error_chain."${deps."carnix"."0.9.1"."error_chain"}" deps)
    (features_.itertools."${deps."carnix"."0.9.1"."itertools"}" deps)
    (features_.log."${deps."carnix"."0.9.1"."log"}" deps)
    (features_.nom."${deps."carnix"."0.9.1"."nom"}" deps)
    (features_.regex."${deps."carnix"."0.9.1"."regex"}" deps)
    (features_.serde."${deps."carnix"."0.9.1"."serde"}" deps)
    (features_.serde_derive."${deps."carnix"."0.9.1"."serde_derive"}" deps)
    (features_.serde_json."${deps."carnix"."0.9.1"."serde_json"}" deps)
    (features_.tempdir."${deps."carnix"."0.9.1"."tempdir"}" deps)
    (features_.toml."${deps."carnix"."0.9.1"."toml"}" deps)
  ];


# end
# carnix-0.9.2

  crates.carnix."0.9.2" = deps: { features?(features_.carnix."0.9.2" deps {}) }: buildRustCrate {
    crateName = "carnix";
    version = "0.9.2";
    authors = [ "pe@pijul.org <pe@pijul.org>" ];
    sha256 = "1r668rjqcwsxjpz2hrr7j3k099c1xsb8vfq1w7y1ps9hap9af42z";
    crateBin =
      [{  name = "cargo-generate-nixfile";  path = "src/cargo-generate-nixfile.rs"; }] ++
      [{  name = "carnix";  path = "src/main.rs"; }];
    dependencies = mapFeatures features ([
      (crates."clap"."${deps."carnix"."0.9.2"."clap"}" deps)
      (crates."dirs"."${deps."carnix"."0.9.2"."dirs"}" deps)
      (crates."env_logger"."${deps."carnix"."0.9.2"."env_logger"}" deps)
      (crates."error_chain"."${deps."carnix"."0.9.2"."error_chain"}" deps)
      (crates."itertools"."${deps."carnix"."0.9.2"."itertools"}" deps)
      (crates."log"."${deps."carnix"."0.9.2"."log"}" deps)
      (crates."nom"."${deps."carnix"."0.9.2"."nom"}" deps)
      (crates."regex"."${deps."carnix"."0.9.2"."regex"}" deps)
      (crates."serde"."${deps."carnix"."0.9.2"."serde"}" deps)
      (crates."serde_derive"."${deps."carnix"."0.9.2"."serde_derive"}" deps)
      (crates."serde_json"."${deps."carnix"."0.9.2"."serde_json"}" deps)
      (crates."tempdir"."${deps."carnix"."0.9.2"."tempdir"}" deps)
      (crates."toml"."${deps."carnix"."0.9.2"."toml"}" deps)
    ]);
  };
  features_.carnix."0.9.2" = deps: f: updateFeatures f ({
    carnix."0.9.2".default = (f.carnix."0.9.2".default or true);
    clap."${deps.carnix."0.9.2".clap}".default = true;
    dirs."${deps.carnix."0.9.2".dirs}".default = true;
    env_logger."${deps.carnix."0.9.2".env_logger}".default = true;
    error_chain."${deps.carnix."0.9.2".error_chain}".default = true;
    itertools."${deps.carnix."0.9.2".itertools}".default = true;
    log."${deps.carnix."0.9.2".log}".default = true;
    nom."${deps.carnix."0.9.2".nom}".default = true;
    regex."${deps.carnix."0.9.2".regex}".default = true;
    serde."${deps.carnix."0.9.2".serde}".default = true;
    serde_derive."${deps.carnix."0.9.2".serde_derive}".default = true;
    serde_json."${deps.carnix."0.9.2".serde_json}".default = true;
    tempdir."${deps.carnix."0.9.2".tempdir}".default = true;
    toml."${deps.carnix."0.9.2".toml}".default = true;
  }) [
    (features_.clap."${deps."carnix"."0.9.2"."clap"}" deps)
    (features_.dirs."${deps."carnix"."0.9.2"."dirs"}" deps)
    (features_.env_logger."${deps."carnix"."0.9.2"."env_logger"}" deps)
    (features_.error_chain."${deps."carnix"."0.9.2"."error_chain"}" deps)
    (features_.itertools."${deps."carnix"."0.9.2"."itertools"}" deps)
    (features_.log."${deps."carnix"."0.9.2"."log"}" deps)
    (features_.nom."${deps."carnix"."0.9.2"."nom"}" deps)
    (features_.regex."${deps."carnix"."0.9.2"."regex"}" deps)
    (features_.serde."${deps."carnix"."0.9.2"."serde"}" deps)
    (features_.serde_derive."${deps."carnix"."0.9.2"."serde_derive"}" deps)
    (features_.serde_json."${deps."carnix"."0.9.2"."serde_json"}" deps)
    (features_.tempdir."${deps."carnix"."0.9.2"."tempdir"}" deps)
    (features_.toml."${deps."carnix"."0.9.2"."toml"}" deps)
  ];


# end
# carnix-0.9.8

  crates.carnix."0.9.8" = deps: { features?(features_.carnix."0.9.8" deps {}) }: buildRustCrate {
    crateName = "carnix";
    version = "0.9.8";
    authors = [ "pe@pijul.org <pe@pijul.org>" ];
    sha256 = "0c2k98qjm1yyx5wl0wqs0rrjczp6h62ri1x8a99442clxsyvp4n9";
    crateBin =
      [{  name = "cargo-generate-nixfile";  path = "src/cargo-generate-nixfile.rs"; }] ++
      [{  name = "carnix";  path = "src/main.rs"; }];
    dependencies = mapFeatures features ([
      (crates."clap"."${deps."carnix"."0.9.8"."clap"}" deps)
      (crates."dirs"."${deps."carnix"."0.9.8"."dirs"}" deps)
      (crates."env_logger"."${deps."carnix"."0.9.8"."env_logger"}" deps)
      (crates."error_chain"."${deps."carnix"."0.9.8"."error_chain"}" deps)
      (crates."itertools"."${deps."carnix"."0.9.8"."itertools"}" deps)
      (crates."log"."${deps."carnix"."0.9.8"."log"}" deps)
      (crates."nom"."${deps."carnix"."0.9.8"."nom"}" deps)
      (crates."regex"."${deps."carnix"."0.9.8"."regex"}" deps)
      (crates."serde"."${deps."carnix"."0.9.8"."serde"}" deps)
      (crates."serde_derive"."${deps."carnix"."0.9.8"."serde_derive"}" deps)
      (crates."serde_json"."${deps."carnix"."0.9.8"."serde_json"}" deps)
      (crates."tempdir"."${deps."carnix"."0.9.8"."tempdir"}" deps)
      (crates."toml"."${deps."carnix"."0.9.8"."toml"}" deps)
      (crates."url"."${deps."carnix"."0.9.8"."url"}" deps)
    ]);
  };
  features_.carnix."0.9.8" = deps: f: updateFeatures f ({
    carnix."0.9.8".default = (f.carnix."0.9.8".default or true);
    clap."${deps.carnix."0.9.8".clap}".default = true;
    dirs."${deps.carnix."0.9.8".dirs}".default = true;
    env_logger."${deps.carnix."0.9.8".env_logger}".default = true;
    error_chain."${deps.carnix."0.9.8".error_chain}".default = true;
    itertools."${deps.carnix."0.9.8".itertools}".default = true;
    log."${deps.carnix."0.9.8".log}".default = true;
    nom."${deps.carnix."0.9.8".nom}".default = true;
    regex."${deps.carnix."0.9.8".regex}".default = true;
    serde."${deps.carnix."0.9.8".serde}".default = true;
    serde_derive."${deps.carnix."0.9.8".serde_derive}".default = true;
    serde_json."${deps.carnix."0.9.8".serde_json}".default = true;
    tempdir."${deps.carnix."0.9.8".tempdir}".default = true;
    toml."${deps.carnix."0.9.8".toml}".default = true;
    url."${deps.carnix."0.9.8".url}".default = true;
  }) [
    (features_.clap."${deps."carnix"."0.9.8"."clap"}" deps)
    (features_.dirs."${deps."carnix"."0.9.8"."dirs"}" deps)
    (features_.env_logger."${deps."carnix"."0.9.8"."env_logger"}" deps)
    (features_.error_chain."${deps."carnix"."0.9.8"."error_chain"}" deps)
    (features_.itertools."${deps."carnix"."0.9.8"."itertools"}" deps)
    (features_.log."${deps."carnix"."0.9.8"."log"}" deps)
    (features_.nom."${deps."carnix"."0.9.8"."nom"}" deps)
    (features_.regex."${deps."carnix"."0.9.8"."regex"}" deps)
    (features_.serde."${deps."carnix"."0.9.8"."serde"}" deps)
    (features_.serde_derive."${deps."carnix"."0.9.8"."serde_derive"}" deps)
    (features_.serde_json."${deps."carnix"."0.9.8"."serde_json"}" deps)
    (features_.tempdir."${deps."carnix"."0.9.8"."tempdir"}" deps)
    (features_.toml."${deps."carnix"."0.9.8"."toml"}" deps)
    (features_.url."${deps."carnix"."0.9.8"."url"}" deps)
  ];


# end
# cc-1.0.25

  crates.cc."1.0.25" = deps: { features?(features_.cc."1.0.25" deps {}) }: buildRustCrate {
    crateName = "cc";
    version = "1.0.25";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0pd8fhjlpr5qan984frkf1c8nxrqp6827wmmfzhm2840229z2hq0";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."cc"."1.0.25" or {});
  };
  features_.cc."1.0.25" = deps: f: updateFeatures f (rec {
    cc = fold recursiveUpdate {} [
      { "1.0.25".default = (f.cc."1.0.25".default or true); }
      { "1.0.25".rayon =
        (f.cc."1.0.25".rayon or false) ||
        (f.cc."1.0.25".parallel or false) ||
        (cc."1.0.25"."parallel" or false); }
    ];
  }) [];


# end
# cc-1.0.32

  crates.cc."1.0.32" = deps: { features?(features_.cc."1.0.32" deps {}) }: buildRustCrate {
    crateName = "cc";
    version = "1.0.32";
    description = "A build-time dependency for Cargo build scripts to assist in invoking the native\nC compiler to compile native C code into a static archive to be linked into Rust\ncode.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0mq4ma94yis74dnn98w2wkaad195dr6qwlma4fs590xiv0j15ldx";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."cc"."1.0.32" or {});
  };
  features_.cc."1.0.32" = deps: f: updateFeatures f (rec {
    cc = fold recursiveUpdate {} [
      { "1.0.32"."rayon" =
        (f.cc."1.0.32"."rayon" or false) ||
        (f.cc."1.0.32".parallel or false) ||
        (cc."1.0.32"."parallel" or false); }
      { "1.0.32".default = (f.cc."1.0.32".default or true); }
    ];
  }) [];


# end
# cfg-if-0.1.6

  crates.cfg_if."0.1.6" = deps: { features?(features_.cfg_if."0.1.6" deps {}) }: buildRustCrate {
    crateName = "cfg-if";
    version = "0.1.6";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "11qrix06wagkplyk908i3423ps9m9np6c4vbcq81s9fyl244xv3n";
  };
  features_.cfg_if."0.1.6" = deps: f: updateFeatures f ({
    cfg_if."0.1.6".default = (f.cfg_if."0.1.6".default or true);
  }) [];


# end
# cfg-if-0.1.7

  crates.cfg_if."0.1.7" = deps: { features?(features_.cfg_if."0.1.7" deps {}) }: buildRustCrate {
    crateName = "cfg-if";
    version = "0.1.7";
    description = "A macro to ergonomically define an item depending on a large number of #[cfg]\nparameters. Structured like an if-else chain, the first matching branch is the\nitem that gets emitted.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "13gvcx1dxjq4mpmpj26hpg3yc97qffkx2zi58ykr1dwr8q2biiig";
  };
  features_.cfg_if."0.1.7" = deps: f: updateFeatures f ({
    cfg_if."0.1.7".default = (f.cfg_if."0.1.7".default or true);
  }) [];


# end
# clap-2.32.0

  crates.clap."2.32.0" = deps: { features?(features_.clap."2.32.0" deps {}) }: buildRustCrate {
    crateName = "clap";
    version = "2.32.0";
    authors = [ "Kevin K. <kbknapp@gmail.com>" ];
    sha256 = "1hdjf0janvpjkwrjdjx1mm2aayzr54k72w6mriyr0n5anjkcj1lx";
    dependencies = mapFeatures features ([
      (crates."bitflags"."${deps."clap"."2.32.0"."bitflags"}" deps)
      (crates."textwrap"."${deps."clap"."2.32.0"."textwrap"}" deps)
      (crates."unicode_width"."${deps."clap"."2.32.0"."unicode_width"}" deps)
    ]
      ++ (if features.clap."2.32.0".atty or false then [ (crates.atty."${deps."clap"."2.32.0".atty}" deps) ] else [])
      ++ (if features.clap."2.32.0".strsim or false then [ (crates.strsim."${deps."clap"."2.32.0".strsim}" deps) ] else [])
      ++ (if features.clap."2.32.0".vec_map or false then [ (crates.vec_map."${deps."clap"."2.32.0".vec_map}" deps) ] else []))
      ++ (if !(kernel == "windows") then mapFeatures features ([
    ]
      ++ (if features.clap."2.32.0".ansi_term or false then [ (crates.ansi_term."${deps."clap"."2.32.0".ansi_term}" deps) ] else [])) else []);
    features = mkFeatures (features."clap"."2.32.0" or {});
  };
  features_.clap."2.32.0" = deps: f: updateFeatures f (rec {
    ansi_term."${deps.clap."2.32.0".ansi_term}".default = true;
    atty."${deps.clap."2.32.0".atty}".default = true;
    bitflags."${deps.clap."2.32.0".bitflags}".default = true;
    clap = fold recursiveUpdate {} [
      { "2.32.0".ansi_term =
        (f.clap."2.32.0".ansi_term or false) ||
        (f.clap."2.32.0".color or false) ||
        (clap."2.32.0"."color" or false); }
      { "2.32.0".atty =
        (f.clap."2.32.0".atty or false) ||
        (f.clap."2.32.0".color or false) ||
        (clap."2.32.0"."color" or false); }
      { "2.32.0".clippy =
        (f.clap."2.32.0".clippy or false) ||
        (f.clap."2.32.0".lints or false) ||
        (clap."2.32.0"."lints" or false); }
      { "2.32.0".color =
        (f.clap."2.32.0".color or false) ||
        (f.clap."2.32.0".default or false) ||
        (clap."2.32.0"."default" or false); }
      { "2.32.0".default = (f.clap."2.32.0".default or true); }
      { "2.32.0".strsim =
        (f.clap."2.32.0".strsim or false) ||
        (f.clap."2.32.0".suggestions or false) ||
        (clap."2.32.0"."suggestions" or false); }
      { "2.32.0".suggestions =
        (f.clap."2.32.0".suggestions or false) ||
        (f.clap."2.32.0".default or false) ||
        (clap."2.32.0"."default" or false); }
      { "2.32.0".term_size =
        (f.clap."2.32.0".term_size or false) ||
        (f.clap."2.32.0".wrap_help or false) ||
        (clap."2.32.0"."wrap_help" or false); }
      { "2.32.0".vec_map =
        (f.clap."2.32.0".vec_map or false) ||
        (f.clap."2.32.0".default or false) ||
        (clap."2.32.0"."default" or false); }
      { "2.32.0".yaml =
        (f.clap."2.32.0".yaml or false) ||
        (f.clap."2.32.0".doc or false) ||
        (clap."2.32.0"."doc" or false); }
      { "2.32.0".yaml-rust =
        (f.clap."2.32.0".yaml-rust or false) ||
        (f.clap."2.32.0".yaml or false) ||
        (clap."2.32.0"."yaml" or false); }
    ];
    strsim."${deps.clap."2.32.0".strsim}".default = true;
    textwrap = fold recursiveUpdate {} [
      { "${deps.clap."2.32.0".textwrap}"."term_size" =
        (f.textwrap."${deps.clap."2.32.0".textwrap}"."term_size" or false) ||
        (clap."2.32.0"."wrap_help" or false) ||
        (f."clap"."2.32.0"."wrap_help" or false); }
      { "${deps.clap."2.32.0".textwrap}".default = true; }
    ];
    unicode_width."${deps.clap."2.32.0".unicode_width}".default = true;
    vec_map."${deps.clap."2.32.0".vec_map}".default = true;
  }) [
    (features_.atty."${deps."clap"."2.32.0"."atty"}" deps)
    (features_.bitflags."${deps."clap"."2.32.0"."bitflags"}" deps)
    (features_.strsim."${deps."clap"."2.32.0"."strsim"}" deps)
    (features_.textwrap."${deps."clap"."2.32.0"."textwrap"}" deps)
    (features_.unicode_width."${deps."clap"."2.32.0"."unicode_width"}" deps)
    (features_.vec_map."${deps."clap"."2.32.0"."vec_map"}" deps)
    (features_.ansi_term."${deps."clap"."2.32.0"."ansi_term"}" deps)
  ];


# end
# cloudabi-0.0.3

  crates.cloudabi."0.0.3" = deps: { features?(features_.cloudabi."0.0.3" deps {}) }: buildRustCrate {
    crateName = "cloudabi";
    version = "0.0.3";
    description = "Low level interface to CloudABI. Contains all syscalls and related types.";
    authors = [ "Nuxi (https://nuxi.nl/) and contributors" ];
    sha256 = "1z9lby5sr6vslfd14d6igk03s7awf91mxpsfmsp3prxbxlk0x7h5";
    libPath = "cloudabi.rs";
    dependencies = mapFeatures features ([
    ]
      ++ (if features.cloudabi."0.0.3".bitflags or false then [ (crates.bitflags."${deps."cloudabi"."0.0.3".bitflags}" deps) ] else []));
    features = mkFeatures (features."cloudabi"."0.0.3" or {});
  };
  features_.cloudabi."0.0.3" = deps: f: updateFeatures f (rec {
    bitflags."${deps.cloudabi."0.0.3".bitflags}".default = true;
    cloudabi = fold recursiveUpdate {} [
      { "0.0.3"."bitflags" =
        (f.cloudabi."0.0.3"."bitflags" or false) ||
        (f.cloudabi."0.0.3".default or false) ||
        (cloudabi."0.0.3"."default" or false); }
      { "0.0.3".default = (f.cloudabi."0.0.3".default or true); }
    ];
  }) [
    (features_.bitflags."${deps."cloudabi"."0.0.3"."bitflags"}" deps)
  ];


# end
# constant_time_eq-0.1.3

  crates.constant_time_eq."0.1.3" = deps: { features?(features_.constant_time_eq."0.1.3" deps {}) }: buildRustCrate {
    crateName = "constant_time_eq";
    version = "0.1.3";
    authors = [ "Cesar Eduardo Barros <cesarb@cesarb.eti.br>" ];
    sha256 = "03qri9hjf049gwqg9q527lybpg918q6y5q4g9a5lma753nff49wd";
  };
  features_.constant_time_eq."0.1.3" = deps: f: updateFeatures f ({
    constant_time_eq."0.1.3".default = (f.constant_time_eq."0.1.3".default or true);
  }) [];


# end
# dirs-1.0.4

  crates.dirs."1.0.4" = deps: { features?(features_.dirs."1.0.4" deps {}) }: buildRustCrate {
    crateName = "dirs";
    version = "1.0.4";
    authors = [ "Simon Ochsenreither <simon@ochsenreither.de>" ];
    sha256 = "1hp3nz0350b0gpavb3w5ajqc9l1k59cfrcsr3hcavwlkizdnpv1y";
    dependencies = (if kernel == "redox" then mapFeatures features ([
      (crates."redox_users"."${deps."dirs"."1.0.4"."redox_users"}" deps)
    ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."dirs"."1.0.4"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."dirs"."1.0.4"."winapi"}" deps)
    ]) else []);
  };
  features_.dirs."1.0.4" = deps: f: updateFeatures f ({
    dirs."1.0.4".default = (f.dirs."1.0.4".default or true);
    libc."${deps.dirs."1.0.4".libc}".default = true;
    redox_users."${deps.dirs."1.0.4".redox_users}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.dirs."1.0.4".winapi}"."knownfolders" = true; }
      { "${deps.dirs."1.0.4".winapi}"."objbase" = true; }
      { "${deps.dirs."1.0.4".winapi}"."shlobj" = true; }
      { "${deps.dirs."1.0.4".winapi}"."winbase" = true; }
      { "${deps.dirs."1.0.4".winapi}"."winerror" = true; }
      { "${deps.dirs."1.0.4".winapi}".default = true; }
    ];
  }) [
    (features_.redox_users."${deps."dirs"."1.0.4"."redox_users"}" deps)
    (features_.libc."${deps."dirs"."1.0.4"."libc"}" deps)
    (features_.winapi."${deps."dirs"."1.0.4"."winapi"}" deps)
  ];


# end
# dirs-1.0.5

  crates.dirs."1.0.5" = deps: { features?(features_.dirs."1.0.5" deps {}) }: buildRustCrate {
    crateName = "dirs";
    version = "1.0.5";
    description = "A tiny low-level library that provides platform-specific standard locations of directories for config, cache and other data on Linux, Windows, macOS and Redox by leveraging the mechanisms defined by the XDG base/user directory specifications on Linux, the Known Folder API on Windows, and the Standard Directory guidelines on macOS.";
    authors = [ "Simon Ochsenreither <simon@ochsenreither.de>" ];
    sha256 = "1py68zwwrhlj5vbz9f9ansjmhc8y4gs5bpamw9ycmqz030pprwf3";
    dependencies = (if kernel == "redox" then mapFeatures features ([
      (crates."redox_users"."${deps."dirs"."1.0.5"."redox_users"}" deps)
    ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."dirs"."1.0.5"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."dirs"."1.0.5"."winapi"}" deps)
    ]) else []);
  };
  features_.dirs."1.0.5" = deps: f: updateFeatures f ({
    dirs."1.0.5".default = (f.dirs."1.0.5".default or true);
    libc."${deps.dirs."1.0.5".libc}".default = true;
    redox_users."${deps.dirs."1.0.5".redox_users}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.dirs."1.0.5".winapi}"."knownfolders" = true; }
      { "${deps.dirs."1.0.5".winapi}"."objbase" = true; }
      { "${deps.dirs."1.0.5".winapi}"."shlobj" = true; }
      { "${deps.dirs."1.0.5".winapi}"."winbase" = true; }
      { "${deps.dirs."1.0.5".winapi}"."winerror" = true; }
      { "${deps.dirs."1.0.5".winapi}".default = true; }
    ];
  }) [
    (features_.redox_users."${deps."dirs"."1.0.5"."redox_users"}" deps)
    (features_.libc."${deps."dirs"."1.0.5"."libc"}" deps)
    (features_.winapi."${deps."dirs"."1.0.5"."winapi"}" deps)
  ];


# end
# either-1.5.0

  crates.either."1.5.0" = deps: { features?(features_.either."1.5.0" deps {}) }: buildRustCrate {
    crateName = "either";
    version = "1.5.0";
    authors = [ "bluss" ];
    sha256 = "1f7kl2ln01y02m8fpd2zrdjiwqmgfvl9nxxrfry3k19d1gd2bsvz";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."either"."1.5.0" or {});
  };
  features_.either."1.5.0" = deps: f: updateFeatures f (rec {
    either = fold recursiveUpdate {} [
      { "1.5.0".default = (f.either."1.5.0".default or true); }
      { "1.5.0".use_std =
        (f.either."1.5.0".use_std or false) ||
        (f.either."1.5.0".default or false) ||
        (either."1.5.0"."default" or false); }
    ];
  }) [];


# end
# either-1.5.1

  crates.either."1.5.1" = deps: { features?(features_.either."1.5.1" deps {}) }: buildRustCrate {
    crateName = "either";
    version = "1.5.1";
    description = "The enum `Either` with variants `Left` and `Right` is a general purpose sum type with two cases.\n";
    authors = [ "bluss" ];
    sha256 = "049dmvnyrrhf0fw955jrfazdapdl84x32grwwxllh8in39yv3783";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."either"."1.5.1" or {});
  };
  features_.either."1.5.1" = deps: f: updateFeatures f (rec {
    either = fold recursiveUpdate {} [
      { "1.5.1"."use_std" =
        (f.either."1.5.1"."use_std" or false) ||
        (f.either."1.5.1".default or false) ||
        (either."1.5.1"."default" or false); }
      { "1.5.1".default = (f.either."1.5.1".default or true); }
    ];
  }) [];


# end
# env_logger-0.5.13

  crates.env_logger."0.5.13" = deps: { features?(features_.env_logger."0.5.13" deps {}) }: buildRustCrate {
    crateName = "env_logger";
    version = "0.5.13";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1q6vylngcz4bn088b4hvsl879l8yz1k2bma75waljb5p4h4kbb72";
    dependencies = mapFeatures features ([
      (crates."atty"."${deps."env_logger"."0.5.13"."atty"}" deps)
      (crates."humantime"."${deps."env_logger"."0.5.13"."humantime"}" deps)
      (crates."log"."${deps."env_logger"."0.5.13"."log"}" deps)
      (crates."termcolor"."${deps."env_logger"."0.5.13"."termcolor"}" deps)
    ]
      ++ (if features.env_logger."0.5.13".regex or false then [ (crates.regex."${deps."env_logger"."0.5.13".regex}" deps) ] else []));
    features = mkFeatures (features."env_logger"."0.5.13" or {});
  };
  features_.env_logger."0.5.13" = deps: f: updateFeatures f (rec {
    atty."${deps.env_logger."0.5.13".atty}".default = true;
    env_logger = fold recursiveUpdate {} [
      { "0.5.13".default = (f.env_logger."0.5.13".default or true); }
      { "0.5.13".regex =
        (f.env_logger."0.5.13".regex or false) ||
        (f.env_logger."0.5.13".default or false) ||
        (env_logger."0.5.13"."default" or false); }
    ];
    humantime."${deps.env_logger."0.5.13".humantime}".default = true;
    log = fold recursiveUpdate {} [
      { "${deps.env_logger."0.5.13".log}"."std" = true; }
      { "${deps.env_logger."0.5.13".log}".default = true; }
    ];
    regex."${deps.env_logger."0.5.13".regex}".default = true;
    termcolor."${deps.env_logger."0.5.13".termcolor}".default = true;
  }) [
    (features_.atty."${deps."env_logger"."0.5.13"."atty"}" deps)
    (features_.humantime."${deps."env_logger"."0.5.13"."humantime"}" deps)
    (features_.log."${deps."env_logger"."0.5.13"."log"}" deps)
    (features_.regex."${deps."env_logger"."0.5.13"."regex"}" deps)
    (features_.termcolor."${deps."env_logger"."0.5.13"."termcolor"}" deps)
  ];


# end
# env_logger-0.6.1

  crates.env_logger."0.6.1" = deps: { features?(features_.env_logger."0.6.1" deps {}) }: buildRustCrate {
    crateName = "env_logger";
    version = "0.6.1";
    description = "A logging implementation for `log` which is configured via an environment\nvariable.\n";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1d02i2yaqpnmbgw42pf0hd56ddd9jr4zq5yypbmfvc8rs13x0jql";
    dependencies = mapFeatures features ([
      (crates."log"."${deps."env_logger"."0.6.1"."log"}" deps)
    ]
      ++ (if features.env_logger."0.6.1".atty or false then [ (crates.atty."${deps."env_logger"."0.6.1".atty}" deps) ] else [])
      ++ (if features.env_logger."0.6.1".humantime or false then [ (crates.humantime."${deps."env_logger"."0.6.1".humantime}" deps) ] else [])
      ++ (if features.env_logger."0.6.1".regex or false then [ (crates.regex."${deps."env_logger"."0.6.1".regex}" deps) ] else [])
      ++ (if features.env_logger."0.6.1".termcolor or false then [ (crates.termcolor."${deps."env_logger"."0.6.1".termcolor}" deps) ] else []));
    features = mkFeatures (features."env_logger"."0.6.1" or {});
  };
  features_.env_logger."0.6.1" = deps: f: updateFeatures f (rec {
    atty."${deps.env_logger."0.6.1".atty}".default = true;
    env_logger = fold recursiveUpdate {} [
      { "0.6.1"."atty" =
        (f.env_logger."0.6.1"."atty" or false) ||
        (f.env_logger."0.6.1".default or false) ||
        (env_logger."0.6.1"."default" or false); }
      { "0.6.1"."humantime" =
        (f.env_logger."0.6.1"."humantime" or false) ||
        (f.env_logger."0.6.1".default or false) ||
        (env_logger."0.6.1"."default" or false); }
      { "0.6.1"."regex" =
        (f.env_logger."0.6.1"."regex" or false) ||
        (f.env_logger."0.6.1".default or false) ||
        (env_logger."0.6.1"."default" or false); }
      { "0.6.1"."termcolor" =
        (f.env_logger."0.6.1"."termcolor" or false) ||
        (f.env_logger."0.6.1".default or false) ||
        (env_logger."0.6.1"."default" or false); }
      { "0.6.1".default = (f.env_logger."0.6.1".default or true); }
    ];
    humantime."${deps.env_logger."0.6.1".humantime}".default = true;
    log = fold recursiveUpdate {} [
      { "${deps.env_logger."0.6.1".log}"."std" = true; }
      { "${deps.env_logger."0.6.1".log}".default = true; }
    ];
    regex."${deps.env_logger."0.6.1".regex}".default = true;
    termcolor."${deps.env_logger."0.6.1".termcolor}".default = true;
  }) [
    (features_.atty."${deps."env_logger"."0.6.1"."atty"}" deps)
    (features_.humantime."${deps."env_logger"."0.6.1"."humantime"}" deps)
    (features_.log."${deps."env_logger"."0.6.1"."log"}" deps)
    (features_.regex."${deps."env_logger"."0.6.1"."regex"}" deps)
    (features_.termcolor."${deps."env_logger"."0.6.1"."termcolor"}" deps)
  ];


# end
# error-chain-0.12.0

  crates.error_chain."0.12.0" = deps: { features?(features_.error_chain."0.12.0" deps {}) }: buildRustCrate {
    crateName = "error-chain";
    version = "0.12.0";
    authors = [ "Brian Anderson <banderson@mozilla.com>" "Paul Colomiets <paul@colomiets.name>" "Colin Kiegel <kiegel@gmx.de>" "Yamakaky <yamakaky@yamaworld.fr>" ];
    sha256 = "1m6wk1r6wqg1mn69bxxvk5k081cb4xy6bfhsxb99rv408x9wjcnl";
    dependencies = mapFeatures features ([
    ]
      ++ (if features.error_chain."0.12.0".backtrace or false then [ (crates.backtrace."${deps."error_chain"."0.12.0".backtrace}" deps) ] else []));
    features = mkFeatures (features."error_chain"."0.12.0" or {});
  };
  features_.error_chain."0.12.0" = deps: f: updateFeatures f (rec {
    backtrace."${deps.error_chain."0.12.0".backtrace}".default = true;
    error_chain = fold recursiveUpdate {} [
      { "0.12.0".backtrace =
        (f.error_chain."0.12.0".backtrace or false) ||
        (f.error_chain."0.12.0".default or false) ||
        (error_chain."0.12.0"."default" or false); }
      { "0.12.0".default = (f.error_chain."0.12.0".default or true); }
      { "0.12.0".example_generated =
        (f.error_chain."0.12.0".example_generated or false) ||
        (f.error_chain."0.12.0".default or false) ||
        (error_chain."0.12.0"."default" or false); }
    ];
  }) [
    (features_.backtrace."${deps."error_chain"."0.12.0"."backtrace"}" deps)
  ];


# end
# failure-0.1.3

  crates.failure."0.1.3" = deps: { features?(features_.failure."0.1.3" deps {}) }: buildRustCrate {
    crateName = "failure";
    version = "0.1.3";
    authors = [ "Without Boats <boats@mozilla.com>" ];
    sha256 = "0cibp01z0clyxrvkl7v7kq6jszsgcg9vwv6d9l6d1drk9jqdss4s";
    dependencies = mapFeatures features ([
    ]
      ++ (if features.failure."0.1.3".backtrace or false then [ (crates.backtrace."${deps."failure"."0.1.3".backtrace}" deps) ] else [])
      ++ (if features.failure."0.1.3".failure_derive or false then [ (crates.failure_derive."${deps."failure"."0.1.3".failure_derive}" deps) ] else []));
    features = mkFeatures (features."failure"."0.1.3" or {});
  };
  features_.failure."0.1.3" = deps: f: updateFeatures f (rec {
    backtrace."${deps.failure."0.1.3".backtrace}".default = true;
    failure = fold recursiveUpdate {} [
      { "0.1.3".backtrace =
        (f.failure."0.1.3".backtrace or false) ||
        (f.failure."0.1.3".std or false) ||
        (failure."0.1.3"."std" or false); }
      { "0.1.3".default = (f.failure."0.1.3".default or true); }
      { "0.1.3".derive =
        (f.failure."0.1.3".derive or false) ||
        (f.failure."0.1.3".default or false) ||
        (failure."0.1.3"."default" or false); }
      { "0.1.3".failure_derive =
        (f.failure."0.1.3".failure_derive or false) ||
        (f.failure."0.1.3".derive or false) ||
        (failure."0.1.3"."derive" or false); }
      { "0.1.3".std =
        (f.failure."0.1.3".std or false) ||
        (f.failure."0.1.3".default or false) ||
        (failure."0.1.3"."default" or false); }
    ];
    failure_derive."${deps.failure."0.1.3".failure_derive}".default = true;
  }) [
    (features_.backtrace."${deps."failure"."0.1.3"."backtrace"}" deps)
    (features_.failure_derive."${deps."failure"."0.1.3"."failure_derive"}" deps)
  ];


# end
# failure-0.1.5

  crates.failure."0.1.5" = deps: { features?(features_.failure."0.1.5" deps {}) }: buildRustCrate {
    crateName = "failure";
    version = "0.1.5";
    description = "Experimental error handling abstraction.";
    authors = [ "Without Boats <boats@mozilla.com>" ];
    sha256 = "1msaj1c0fg12dzyf4fhxqlx1gfx41lj2smdjmkc9hkrgajk2g3kx";
    dependencies = mapFeatures features ([
    ]
      ++ (if features.failure."0.1.5".backtrace or false then [ (crates.backtrace."${deps."failure"."0.1.5".backtrace}" deps) ] else [])
      ++ (if features.failure."0.1.5".failure_derive or false then [ (crates.failure_derive."${deps."failure"."0.1.5".failure_derive}" deps) ] else []));
    features = mkFeatures (features."failure"."0.1.5" or {});
  };
  features_.failure."0.1.5" = deps: f: updateFeatures f (rec {
    backtrace."${deps.failure."0.1.5".backtrace}".default = true;
    failure = fold recursiveUpdate {} [
      { "0.1.5"."backtrace" =
        (f.failure."0.1.5"."backtrace" or false) ||
        (f.failure."0.1.5".std or false) ||
        (failure."0.1.5"."std" or false); }
      { "0.1.5"."derive" =
        (f.failure."0.1.5"."derive" or false) ||
        (f.failure."0.1.5".default or false) ||
        (failure."0.1.5"."default" or false); }
      { "0.1.5"."failure_derive" =
        (f.failure."0.1.5"."failure_derive" or false) ||
        (f.failure."0.1.5".derive or false) ||
        (failure."0.1.5"."derive" or false); }
      { "0.1.5"."std" =
        (f.failure."0.1.5"."std" or false) ||
        (f.failure."0.1.5".default or false) ||
        (failure."0.1.5"."default" or false); }
      { "0.1.5".default = (f.failure."0.1.5".default or true); }
    ];
    failure_derive."${deps.failure."0.1.5".failure_derive}".default = true;
  }) [
    (features_.backtrace."${deps."failure"."0.1.5"."backtrace"}" deps)
    (features_.failure_derive."${deps."failure"."0.1.5"."failure_derive"}" deps)
  ];


# end
# failure_derive-0.1.3

  crates.failure_derive."0.1.3" = deps: { features?(features_.failure_derive."0.1.3" deps {}) }: buildRustCrate {
    crateName = "failure_derive";
    version = "0.1.3";
    authors = [ "Without Boats <woboats@gmail.com>" ];
    sha256 = "1mh7ad2d17f13g0k29bskp0f9faws0w1q4a5yfzlzi75bw9kidgm";
    procMacro = true;
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."failure_derive"."0.1.3"."proc_macro2"}" deps)
      (crates."quote"."${deps."failure_derive"."0.1.3"."quote"}" deps)
      (crates."syn"."${deps."failure_derive"."0.1.3"."syn"}" deps)
      (crates."synstructure"."${deps."failure_derive"."0.1.3"."synstructure"}" deps)
    ]);
    features = mkFeatures (features."failure_derive"."0.1.3" or {});
  };
  features_.failure_derive."0.1.3" = deps: f: updateFeatures f ({
    failure_derive."0.1.3".default = (f.failure_derive."0.1.3".default or true);
    proc_macro2."${deps.failure_derive."0.1.3".proc_macro2}".default = true;
    quote."${deps.failure_derive."0.1.3".quote}".default = true;
    syn."${deps.failure_derive."0.1.3".syn}".default = true;
    synstructure."${deps.failure_derive."0.1.3".synstructure}".default = true;
  }) [
    (features_.proc_macro2."${deps."failure_derive"."0.1.3"."proc_macro2"}" deps)
    (features_.quote."${deps."failure_derive"."0.1.3"."quote"}" deps)
    (features_.syn."${deps."failure_derive"."0.1.3"."syn"}" deps)
    (features_.synstructure."${deps."failure_derive"."0.1.3"."synstructure"}" deps)
  ];


# end
# failure_derive-0.1.5

  crates.failure_derive."0.1.5" = deps: { features?(features_.failure_derive."0.1.5" deps {}) }: buildRustCrate {
    crateName = "failure_derive";
    version = "0.1.5";
    description = "derives for the failure crate";
    authors = [ "Without Boats <woboats@gmail.com>" ];
    sha256 = "1wzk484b87r4qszcvdl2bkniv5ls4r2f2dshz7hmgiv6z4ln12g0";
    procMacro = true;
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."failure_derive"."0.1.5"."proc_macro2"}" deps)
      (crates."quote"."${deps."failure_derive"."0.1.5"."quote"}" deps)
      (crates."syn"."${deps."failure_derive"."0.1.5"."syn"}" deps)
      (crates."synstructure"."${deps."failure_derive"."0.1.5"."synstructure"}" deps)
    ]);
    features = mkFeatures (features."failure_derive"."0.1.5" or {});
  };
  features_.failure_derive."0.1.5" = deps: f: updateFeatures f ({
    failure_derive."0.1.5".default = (f.failure_derive."0.1.5".default or true);
    proc_macro2."${deps.failure_derive."0.1.5".proc_macro2}".default = true;
    quote."${deps.failure_derive."0.1.5".quote}".default = true;
    syn."${deps.failure_derive."0.1.5".syn}".default = true;
    synstructure."${deps.failure_derive."0.1.5".synstructure}".default = true;
  }) [
    (features_.proc_macro2."${deps."failure_derive"."0.1.5"."proc_macro2"}" deps)
    (features_.quote."${deps."failure_derive"."0.1.5"."quote"}" deps)
    (features_.syn."${deps."failure_derive"."0.1.5"."syn"}" deps)
    (features_.synstructure."${deps."failure_derive"."0.1.5"."synstructure"}" deps)
  ];


# end
# fuchsia-cprng-0.1.1

  crates.fuchsia_cprng."0.1.1" = deps: { features?(features_.fuchsia_cprng."0.1.1" deps {}) }: buildRustCrate {
    crateName = "fuchsia-cprng";
    version = "0.1.1";
    description = "Rust crate for the Fuchsia cryptographically secure pseudorandom number generator";
    authors = [ "Erick Tryzelaar <etryzelaar@google.com>" ];
    edition = "2018";
    sha256 = "07apwv9dj716yjlcj29p94vkqn5zmfh7hlrqvrjx3wzshphc95h9";
  };
  features_.fuchsia_cprng."0.1.1" = deps: f: updateFeatures f ({
    fuchsia_cprng."0.1.1".default = (f.fuchsia_cprng."0.1.1".default or true);
  }) [];


# end
# fuchsia-zircon-0.3.3

  crates.fuchsia_zircon."0.3.3" = deps: { features?(features_.fuchsia_zircon."0.3.3" deps {}) }: buildRustCrate {
    crateName = "fuchsia-zircon";
    version = "0.3.3";
    authors = [ "Raph Levien <raph@google.com>" ];
    sha256 = "0jrf4shb1699r4la8z358vri8318w4mdi6qzfqy30p2ymjlca4gk";
    dependencies = mapFeatures features ([
      (crates."bitflags"."${deps."fuchsia_zircon"."0.3.3"."bitflags"}" deps)
      (crates."fuchsia_zircon_sys"."${deps."fuchsia_zircon"."0.3.3"."fuchsia_zircon_sys"}" deps)
    ]);
  };
  features_.fuchsia_zircon."0.3.3" = deps: f: updateFeatures f ({
    bitflags."${deps.fuchsia_zircon."0.3.3".bitflags}".default = true;
    fuchsia_zircon."0.3.3".default = (f.fuchsia_zircon."0.3.3".default or true);
    fuchsia_zircon_sys."${deps.fuchsia_zircon."0.3.3".fuchsia_zircon_sys}".default = true;
  }) [
    (features_.bitflags."${deps."fuchsia_zircon"."0.3.3"."bitflags"}" deps)
    (features_.fuchsia_zircon_sys."${deps."fuchsia_zircon"."0.3.3"."fuchsia_zircon_sys"}" deps)
  ];


# end
# fuchsia-zircon-sys-0.3.3

  crates.fuchsia_zircon_sys."0.3.3" = deps: { features?(features_.fuchsia_zircon_sys."0.3.3" deps {}) }: buildRustCrate {
    crateName = "fuchsia-zircon-sys";
    version = "0.3.3";
    authors = [ "Raph Levien <raph@google.com>" ];
    sha256 = "08jp1zxrm9jbrr6l26bjal4dbm8bxfy57ickdgibsqxr1n9j3hf5";
  };
  features_.fuchsia_zircon_sys."0.3.3" = deps: f: updateFeatures f ({
    fuchsia_zircon_sys."0.3.3".default = (f.fuchsia_zircon_sys."0.3.3".default or true);
  }) [];


# end
# humantime-1.1.1

  crates.humantime."1.1.1" = deps: { features?(features_.humantime."1.1.1" deps {}) }: buildRustCrate {
    crateName = "humantime";
    version = "1.1.1";
    authors = [ "Paul Colomiets <paul@colomiets.name>" ];
    sha256 = "1lzdfsfzdikcp1qb6wcdvnsdv16pmzr7p7cv171vnbnyz2lrwbgn";
    libPath = "src/lib.rs";
    dependencies = mapFeatures features ([
      (crates."quick_error"."${deps."humantime"."1.1.1"."quick_error"}" deps)
    ]);
  };
  features_.humantime."1.1.1" = deps: f: updateFeatures f ({
    humantime."1.1.1".default = (f.humantime."1.1.1".default or true);
    quick_error."${deps.humantime."1.1.1".quick_error}".default = true;
  }) [
    (features_.quick_error."${deps."humantime"."1.1.1"."quick_error"}" deps)
  ];


# end
# humantime-1.2.0

  crates.humantime."1.2.0" = deps: { features?(features_.humantime."1.2.0" deps {}) }: buildRustCrate {
    crateName = "humantime";
    version = "1.2.0";
    description = "    A parser and formatter for std::time::{Duration, SystemTime}\n";
    authors = [ "Paul Colomiets <paul@colomiets.name>" ];
    sha256 = "0wlcxzz2mhq0brkfbjb12hc6jm17bgm8m6pdgblw4qjwmf26aw28";
    libPath = "src/lib.rs";
    dependencies = mapFeatures features ([
      (crates."quick_error"."${deps."humantime"."1.2.0"."quick_error"}" deps)
    ]);
  };
  features_.humantime."1.2.0" = deps: f: updateFeatures f ({
    humantime."1.2.0".default = (f.humantime."1.2.0".default or true);
    quick_error."${deps.humantime."1.2.0".quick_error}".default = true;
  }) [
    (features_.quick_error."${deps."humantime"."1.2.0"."quick_error"}" deps)
  ];


# end
# idna-0.1.5

  crates.idna."0.1.5" = deps: { features?(features_.idna."0.1.5" deps {}) }: buildRustCrate {
    crateName = "idna";
    version = "0.1.5";
    authors = [ "The rust-url developers" ];
    sha256 = "1gwgl19rz5vzi67rrhamczhxy050f5ynx4ybabfapyalv7z1qmjy";
    dependencies = mapFeatures features ([
      (crates."matches"."${deps."idna"."0.1.5"."matches"}" deps)
      (crates."unicode_bidi"."${deps."idna"."0.1.5"."unicode_bidi"}" deps)
      (crates."unicode_normalization"."${deps."idna"."0.1.5"."unicode_normalization"}" deps)
    ]);
  };
  features_.idna."0.1.5" = deps: f: updateFeatures f ({
    idna."0.1.5".default = (f.idna."0.1.5".default or true);
    matches."${deps.idna."0.1.5".matches}".default = true;
    unicode_bidi."${deps.idna."0.1.5".unicode_bidi}".default = true;
    unicode_normalization."${deps.idna."0.1.5".unicode_normalization}".default = true;
  }) [
    (features_.matches."${deps."idna"."0.1.5"."matches"}" deps)
    (features_.unicode_bidi."${deps."idna"."0.1.5"."unicode_bidi"}" deps)
    (features_.unicode_normalization."${deps."idna"."0.1.5"."unicode_normalization"}" deps)
  ];


# end
# itertools-0.7.8

  crates.itertools."0.7.8" = deps: { features?(features_.itertools."0.7.8" deps {}) }: buildRustCrate {
    crateName = "itertools";
    version = "0.7.8";
    authors = [ "bluss" ];
    sha256 = "0ib30cd7d1icjxsa13mji1gry3grp72kx8p33yd84mphdbc3d357";
    dependencies = mapFeatures features ([
      (crates."either"."${deps."itertools"."0.7.8"."either"}" deps)
    ]);
    features = mkFeatures (features."itertools"."0.7.8" or {});
  };
  features_.itertools."0.7.8" = deps: f: updateFeatures f (rec {
    either."${deps.itertools."0.7.8".either}".default = (f.either."${deps.itertools."0.7.8".either}".default or false);
    itertools = fold recursiveUpdate {} [
      { "0.7.8".default = (f.itertools."0.7.8".default or true); }
      { "0.7.8".use_std =
        (f.itertools."0.7.8".use_std or false) ||
        (f.itertools."0.7.8".default or false) ||
        (itertools."0.7.8"."default" or false); }
    ];
  }) [
    (features_.either."${deps."itertools"."0.7.8"."either"}" deps)
  ];


# end
# itertools-0.8.0

  crates.itertools."0.8.0" = deps: { features?(features_.itertools."0.8.0" deps {}) }: buildRustCrate {
    crateName = "itertools";
    version = "0.8.0";
    description = "Extra iterator adaptors, iterator methods, free functions, and macros.";
    authors = [ "bluss" ];
    sha256 = "0xpz59yf03vyj540i7sqypn2aqfid08c4vzyg0l6rqm08da77n7n";
    dependencies = mapFeatures features ([
      (crates."either"."${deps."itertools"."0.8.0"."either"}" deps)
    ]);
    features = mkFeatures (features."itertools"."0.8.0" or {});
  };
  features_.itertools."0.8.0" = deps: f: updateFeatures f (rec {
    either."${deps.itertools."0.8.0".either}".default = (f.either."${deps.itertools."0.8.0".either}".default or false);
    itertools = fold recursiveUpdate {} [
      { "0.8.0"."use_std" =
        (f.itertools."0.8.0"."use_std" or false) ||
        (f.itertools."0.8.0".default or false) ||
        (itertools."0.8.0"."default" or false); }
      { "0.8.0".default = (f.itertools."0.8.0".default or true); }
    ];
  }) [
    (features_.either."${deps."itertools"."0.8.0"."either"}" deps)
  ];


# end
# itoa-0.4.3

  crates.itoa."0.4.3" = deps: { features?(features_.itoa."0.4.3" deps {}) }: buildRustCrate {
    crateName = "itoa";
    version = "0.4.3";
    authors = [ "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "0zadimmdgvili3gdwxqg7ljv3r4wcdg1kkdfp9nl15vnm23vrhy1";
    features = mkFeatures (features."itoa"."0.4.3" or {});
  };
  features_.itoa."0.4.3" = deps: f: updateFeatures f (rec {
    itoa = fold recursiveUpdate {} [
      { "0.4.3".default = (f.itoa."0.4.3".default or true); }
      { "0.4.3".std =
        (f.itoa."0.4.3".std or false) ||
        (f.itoa."0.4.3".default or false) ||
        (itoa."0.4.3"."default" or false); }
    ];
  }) [];


# end
# lazy_static-1.1.0

  crates.lazy_static."1.1.0" = deps: { features?(features_.lazy_static."1.1.0" deps {}) }: buildRustCrate {
    crateName = "lazy_static";
    version = "1.1.0";
    authors = [ "Marvin L??bel <loebel.marvin@gmail.com>" ];
    sha256 = "1da2b6nxfc2l547qgl9kd1pn9sh1af96a6qx6xw8xdnv6hh5fag0";
    build = "build.rs";
    dependencies = mapFeatures features ([
]);

    buildDependencies = mapFeatures features ([
      (crates."version_check"."${deps."lazy_static"."1.1.0"."version_check"}" deps)
    ]);
    features = mkFeatures (features."lazy_static"."1.1.0" or {});
  };
  features_.lazy_static."1.1.0" = deps: f: updateFeatures f (rec {
    lazy_static = fold recursiveUpdate {} [
      { "1.1.0".default = (f.lazy_static."1.1.0".default or true); }
      { "1.1.0".nightly =
        (f.lazy_static."1.1.0".nightly or false) ||
        (f.lazy_static."1.1.0".spin_no_std or false) ||
        (lazy_static."1.1.0"."spin_no_std" or false); }
      { "1.1.0".spin =
        (f.lazy_static."1.1.0".spin or false) ||
        (f.lazy_static."1.1.0".spin_no_std or false) ||
        (lazy_static."1.1.0"."spin_no_std" or false); }
    ];
    version_check."${deps.lazy_static."1.1.0".version_check}".default = true;
  }) [
    (features_.version_check."${deps."lazy_static"."1.1.0"."version_check"}" deps)
  ];


# end
# lazy_static-1.3.0

  crates.lazy_static."1.3.0" = deps: { features?(features_.lazy_static."1.3.0" deps {}) }: buildRustCrate {
    crateName = "lazy_static";
    version = "1.3.0";
    description = "A macro for declaring lazily evaluated statics in Rust.";
    authors = [ "Marvin L??bel <loebel.marvin@gmail.com>" ];
    sha256 = "1vv47va18ydk7dx5paz88g3jy1d3lwbx6qpxkbj8gyfv770i4b1y";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."lazy_static"."1.3.0" or {});
  };
  features_.lazy_static."1.3.0" = deps: f: updateFeatures f (rec {
    lazy_static = fold recursiveUpdate {} [
      { "1.3.0"."spin" =
        (f.lazy_static."1.3.0"."spin" or false) ||
        (f.lazy_static."1.3.0".spin_no_std or false) ||
        (lazy_static."1.3.0"."spin_no_std" or false); }
      { "1.3.0".default = (f.lazy_static."1.3.0".default or true); }
    ];
  }) [];


# end
# libc-0.2.43

  crates.libc."0.2.43" = deps: { features?(features_.libc."0.2.43" deps {}) }: buildRustCrate {
    crateName = "libc";
    version = "0.2.43";
    authors = [ "The Rust Project Developers" ];
    sha256 = "0pshydmsq71kl9276zc2928ld50sp524ixcqkcqsgq410dx6c50b";
    features = mkFeatures (features."libc"."0.2.43" or {});
  };
  features_.libc."0.2.43" = deps: f: updateFeatures f (rec {
    libc = fold recursiveUpdate {} [
      { "0.2.43".default = (f.libc."0.2.43".default or true); }
      { "0.2.43".use_std =
        (f.libc."0.2.43".use_std or false) ||
        (f.libc."0.2.43".default or false) ||
        (libc."0.2.43"."default" or false); }
    ];
  }) [];


# end
# libc-0.2.50

  crates.libc."0.2.50" = deps: { features?(features_.libc."0.2.50" deps {}) }: buildRustCrate {
    crateName = "libc";
    version = "0.2.50";
    description = "Raw FFI bindings to platform libraries like libc.\n";
    authors = [ "The Rust Project Developers" ];
    sha256 = "14y4zm0xp2xbj3l1kxqf2wpl58xb7hglxdbfx5dcxjlchbvk5dzs";
    build = "build.rs";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."libc"."0.2.50" or {});
  };
  features_.libc."0.2.50" = deps: f: updateFeatures f (rec {
    libc = fold recursiveUpdate {} [
      { "0.2.50"."align" =
        (f.libc."0.2.50"."align" or false) ||
        (f.libc."0.2.50".rustc-dep-of-std or false) ||
        (libc."0.2.50"."rustc-dep-of-std" or false); }
      { "0.2.50"."rustc-std-workspace-core" =
        (f.libc."0.2.50"."rustc-std-workspace-core" or false) ||
        (f.libc."0.2.50".rustc-dep-of-std or false) ||
        (libc."0.2.50"."rustc-dep-of-std" or false); }
      { "0.2.50"."use_std" =
        (f.libc."0.2.50"."use_std" or false) ||
        (f.libc."0.2.50".default or false) ||
        (libc."0.2.50"."default" or false); }
      { "0.2.50".default = (f.libc."0.2.50".default or true); }
    ];
  }) [];


# end
# log-0.4.5

  crates.log."0.4.5" = deps: { features?(features_.log."0.4.5" deps {}) }: buildRustCrate {
    crateName = "log";
    version = "0.4.5";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1hdcj17al94ga90q7jx2y1rmxi68n3akra1awv3hr3s9b9zipgq6";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."log"."0.4.5"."cfg_if"}" deps)
    ]);
    features = mkFeatures (features."log"."0.4.5" or {});
  };
  features_.log."0.4.5" = deps: f: updateFeatures f ({
    cfg_if."${deps.log."0.4.5".cfg_if}".default = true;
    log."0.4.5".default = (f.log."0.4.5".default or true);
  }) [
    (features_.cfg_if."${deps."log"."0.4.5"."cfg_if"}" deps)
  ];


# end
# log-0.4.6

  crates.log."0.4.6" = deps: { features?(features_.log."0.4.6" deps {}) }: buildRustCrate {
    crateName = "log";
    version = "0.4.6";
    description = "A lightweight logging facade for Rust\n";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1nd8dl9mvc9vd6fks5d4gsxaz990xi6rzlb8ymllshmwi153vngr";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."log"."0.4.6"."cfg_if"}" deps)
    ]);
    features = mkFeatures (features."log"."0.4.6" or {});
  };
  features_.log."0.4.6" = deps: f: updateFeatures f ({
    cfg_if."${deps.log."0.4.6".cfg_if}".default = true;
    log."0.4.6".default = (f.log."0.4.6".default or true);
  }) [
    (features_.cfg_if."${deps."log"."0.4.6"."cfg_if"}" deps)
  ];


# end
# matches-0.1.8

  crates.matches."0.1.8" = deps: { features?(features_.matches."0.1.8" deps {}) }: buildRustCrate {
    crateName = "matches";
    version = "0.1.8";
    authors = [ "Simon Sapin <simon.sapin@exyr.org>" ];
    sha256 = "03hl636fg6xggy0a26200xs74amk3k9n0908rga2szn68agyz3cv";
    libPath = "lib.rs";
  };
  features_.matches."0.1.8" = deps: f: updateFeatures f ({
    matches."0.1.8".default = (f.matches."0.1.8".default or true);
  }) [];


# end
# memchr-1.0.2

  crates.memchr."1.0.2" = deps: { features?(features_.memchr."1.0.2" deps {}) }: buildRustCrate {
    crateName = "memchr";
    version = "1.0.2";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" "bluss" ];
    sha256 = "0dfb8ifl9nrc9kzgd5z91q6qg87sh285q1ih7xgrsglmqfav9lg7";
    dependencies = mapFeatures features ([
    ]
      ++ (if features.memchr."1.0.2".libc or false then [ (crates.libc."${deps."memchr"."1.0.2".libc}" deps) ] else []));
    features = mkFeatures (features."memchr"."1.0.2" or {});
  };
  features_.memchr."1.0.2" = deps: f: updateFeatures f (rec {
    libc = fold recursiveUpdate {} [
      { "${deps.memchr."1.0.2".libc}"."use_std" =
        (f.libc."${deps.memchr."1.0.2".libc}"."use_std" or false) ||
        (memchr."1.0.2"."use_std" or false) ||
        (f."memchr"."1.0.2"."use_std" or false); }
      { "${deps.memchr."1.0.2".libc}".default = (f.libc."${deps.memchr."1.0.2".libc}".default or false); }
    ];
    memchr = fold recursiveUpdate {} [
      { "1.0.2".default = (f.memchr."1.0.2".default or true); }
      { "1.0.2".libc =
        (f.memchr."1.0.2".libc or false) ||
        (f.memchr."1.0.2".default or false) ||
        (memchr."1.0.2"."default" or false) ||
        (f.memchr."1.0.2".use_std or false) ||
        (memchr."1.0.2"."use_std" or false); }
      { "1.0.2".use_std =
        (f.memchr."1.0.2".use_std or false) ||
        (f.memchr."1.0.2".default or false) ||
        (memchr."1.0.2"."default" or false); }
    ];
  }) [
    (features_.libc."${deps."memchr"."1.0.2"."libc"}" deps)
  ];


# end
# memchr-2.1.0

  crates.memchr."2.1.0" = deps: { features?(features_.memchr."2.1.0" deps {}) }: buildRustCrate {
    crateName = "memchr";
    version = "2.1.0";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" "bluss" ];
    sha256 = "02w1fc5z1ccx8fbzgcr0mpk0xf2i9g4vbx9q5c2g8pjddbaqvjjq";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."memchr"."2.1.0"."cfg_if"}" deps)
    ]
      ++ (if features.memchr."2.1.0".libc or false then [ (crates.libc."${deps."memchr"."2.1.0".libc}" deps) ] else []));

    buildDependencies = mapFeatures features ([
      (crates."version_check"."${deps."memchr"."2.1.0"."version_check"}" deps)
    ]);
    features = mkFeatures (features."memchr"."2.1.0" or {});
  };
  features_.memchr."2.1.0" = deps: f: updateFeatures f (rec {
    cfg_if."${deps.memchr."2.1.0".cfg_if}".default = true;
    libc = fold recursiveUpdate {} [
      { "${deps.memchr."2.1.0".libc}"."use_std" =
        (f.libc."${deps.memchr."2.1.0".libc}"."use_std" or false) ||
        (memchr."2.1.0"."use_std" or false) ||
        (f."memchr"."2.1.0"."use_std" or false); }
      { "${deps.memchr."2.1.0".libc}".default = (f.libc."${deps.memchr."2.1.0".libc}".default or false); }
    ];
    memchr = fold recursiveUpdate {} [
      { "2.1.0".default = (f.memchr."2.1.0".default or true); }
      { "2.1.0".libc =
        (f.memchr."2.1.0".libc or false) ||
        (f.memchr."2.1.0".default or false) ||
        (memchr."2.1.0"."default" or false) ||
        (f.memchr."2.1.0".use_std or false) ||
        (memchr."2.1.0"."use_std" or false); }
      { "2.1.0".use_std =
        (f.memchr."2.1.0".use_std or false) ||
        (f.memchr."2.1.0".default or false) ||
        (memchr."2.1.0"."default" or false); }
    ];
    version_check."${deps.memchr."2.1.0".version_check}".default = true;
  }) [
    (features_.cfg_if."${deps."memchr"."2.1.0"."cfg_if"}" deps)
    (features_.libc."${deps."memchr"."2.1.0"."libc"}" deps)
    (features_.version_check."${deps."memchr"."2.1.0"."version_check"}" deps)
  ];


# end
# memchr-2.2.0

  crates.memchr."2.2.0" = deps: { features?(features_.memchr."2.2.0" deps {}) }: buildRustCrate {
    crateName = "memchr";
    version = "2.2.0";
    description = "Safe interface to memchr.";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" "bluss" ];
    sha256 = "11vwg8iig9jyjxq3n1cq15g29ikzw5l7ar87md54k1aisjs0997p";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."memchr"."2.2.0" or {});
  };
  features_.memchr."2.2.0" = deps: f: updateFeatures f (rec {
    memchr = fold recursiveUpdate {} [
      { "2.2.0"."use_std" =
        (f.memchr."2.2.0"."use_std" or false) ||
        (f.memchr."2.2.0".default or false) ||
        (memchr."2.2.0"."default" or false); }
      { "2.2.0".default = (f.memchr."2.2.0".default or true); }
    ];
  }) [];


# end
# nodrop-0.1.12

  crates.nodrop."0.1.12" = deps: { features?(features_.nodrop."0.1.12" deps {}) }: buildRustCrate {
    crateName = "nodrop";
    version = "0.1.12";
    authors = [ "bluss" ];
    sha256 = "1b9rxvdg8061gxjc239l9slndf0ds3m6fy2sf3gs8f9kknqgl49d";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."nodrop"."0.1.12" or {});
  };
  features_.nodrop."0.1.12" = deps: f: updateFeatures f (rec {
    nodrop = fold recursiveUpdate {} [
      { "0.1.12".default = (f.nodrop."0.1.12".default or true); }
      { "0.1.12".nodrop-union =
        (f.nodrop."0.1.12".nodrop-union or false) ||
        (f.nodrop."0.1.12".use_union or false) ||
        (nodrop."0.1.12"."use_union" or false); }
      { "0.1.12".std =
        (f.nodrop."0.1.12".std or false) ||
        (f.nodrop."0.1.12".default or false) ||
        (nodrop."0.1.12"."default" or false); }
    ];
  }) [];


# end
# nodrop-0.1.13

  crates.nodrop."0.1.13" = deps: { features?(features_.nodrop."0.1.13" deps {}) }: buildRustCrate {
    crateName = "nodrop";
    version = "0.1.13";
    description = "A wrapper type to inhibit drop (destructor). Use std::mem::ManuallyDrop instead!";
    authors = [ "bluss" ];
    sha256 = "0gkfx6wihr9z0m8nbdhma5pyvbipznjpkzny2d4zkc05b0vnhinb";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."nodrop"."0.1.13" or {});
  };
  features_.nodrop."0.1.13" = deps: f: updateFeatures f (rec {
    nodrop = fold recursiveUpdate {} [
      { "0.1.13"."nodrop-union" =
        (f.nodrop."0.1.13"."nodrop-union" or false) ||
        (f.nodrop."0.1.13".use_union or false) ||
        (nodrop."0.1.13"."use_union" or false); }
      { "0.1.13"."std" =
        (f.nodrop."0.1.13"."std" or false) ||
        (f.nodrop."0.1.13".default or false) ||
        (nodrop."0.1.13"."default" or false); }
      { "0.1.13".default = (f.nodrop."0.1.13".default or true); }
    ];
  }) [];


# end
# nom-3.2.1

  crates.nom."3.2.1" = deps: { features?(features_.nom."3.2.1" deps {}) }: buildRustCrate {
    crateName = "nom";
    version = "3.2.1";
    authors = [ "contact@geoffroycouprie.com" ];
    sha256 = "1vcllxrz9hdw6j25kn020ka3psz1vkaqh1hm3yfak2240zrxgi07";
    dependencies = mapFeatures features ([
      (crates."memchr"."${deps."nom"."3.2.1"."memchr"}" deps)
    ]);
    features = mkFeatures (features."nom"."3.2.1" or {});
  };
  features_.nom."3.2.1" = deps: f: updateFeatures f (rec {
    memchr = fold recursiveUpdate {} [
      { "${deps.nom."3.2.1".memchr}"."use_std" =
        (f.memchr."${deps.nom."3.2.1".memchr}"."use_std" or false) ||
        (nom."3.2.1"."std" or false) ||
        (f."nom"."3.2.1"."std" or false); }
      { "${deps.nom."3.2.1".memchr}".default = (f.memchr."${deps.nom."3.2.1".memchr}".default or false); }
    ];
    nom = fold recursiveUpdate {} [
      { "3.2.1".compiler_error =
        (f.nom."3.2.1".compiler_error or false) ||
        (f.nom."3.2.1".nightly or false) ||
        (nom."3.2.1"."nightly" or false); }
      { "3.2.1".default = (f.nom."3.2.1".default or true); }
      { "3.2.1".lazy_static =
        (f.nom."3.2.1".lazy_static or false) ||
        (f.nom."3.2.1".regexp_macros or false) ||
        (nom."3.2.1"."regexp_macros" or false); }
      { "3.2.1".regex =
        (f.nom."3.2.1".regex or false) ||
        (f.nom."3.2.1".regexp or false) ||
        (nom."3.2.1"."regexp" or false); }
      { "3.2.1".regexp =
        (f.nom."3.2.1".regexp or false) ||
        (f.nom."3.2.1".regexp_macros or false) ||
        (nom."3.2.1"."regexp_macros" or false); }
      { "3.2.1".std =
        (f.nom."3.2.1".std or false) ||
        (f.nom."3.2.1".default or false) ||
        (nom."3.2.1"."default" or false); }
      { "3.2.1".stream =
        (f.nom."3.2.1".stream or false) ||
        (f.nom."3.2.1".default or false) ||
        (nom."3.2.1"."default" or false); }
    ];
  }) [
    (features_.memchr."${deps."nom"."3.2.1"."memchr"}" deps)
  ];


# end
# percent-encoding-1.0.1

  crates.percent_encoding."1.0.1" = deps: { features?(features_.percent_encoding."1.0.1" deps {}) }: buildRustCrate {
    crateName = "percent-encoding";
    version = "1.0.1";
    authors = [ "The rust-url developers" ];
    sha256 = "04ahrp7aw4ip7fmadb0bknybmkfav0kk0gw4ps3ydq5w6hr0ib5i";
    libPath = "lib.rs";
  };
  features_.percent_encoding."1.0.1" = deps: f: updateFeatures f ({
    percent_encoding."1.0.1".default = (f.percent_encoding."1.0.1".default or true);
  }) [];


# end
# proc-macro2-0.4.20

  crates.proc_macro2."0.4.20" = deps: { features?(features_.proc_macro2."0.4.20" deps {}) }: buildRustCrate {
    crateName = "proc-macro2";
    version = "0.4.20";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0yr74b00d3wzg21kjvfln7vzzvf9aghbaff4c747i3grbd997ys2";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."unicode_xid"."${deps."proc_macro2"."0.4.20"."unicode_xid"}" deps)
    ]);
    features = mkFeatures (features."proc_macro2"."0.4.20" or {});
  };
  features_.proc_macro2."0.4.20" = deps: f: updateFeatures f (rec {
    proc_macro2 = fold recursiveUpdate {} [
      { "0.4.20".default = (f.proc_macro2."0.4.20".default or true); }
      { "0.4.20".proc-macro =
        (f.proc_macro2."0.4.20".proc-macro or false) ||
        (f.proc_macro2."0.4.20".default or false) ||
        (proc_macro2."0.4.20"."default" or false) ||
        (f.proc_macro2."0.4.20".nightly or false) ||
        (proc_macro2."0.4.20"."nightly" or false); }
    ];
    unicode_xid."${deps.proc_macro2."0.4.20".unicode_xid}".default = true;
  }) [
    (features_.unicode_xid."${deps."proc_macro2"."0.4.20"."unicode_xid"}" deps)
  ];


# end
# proc-macro2-0.4.27

  crates.proc_macro2."0.4.27" = deps: { features?(features_.proc_macro2."0.4.27" deps {}) }: buildRustCrate {
    crateName = "proc-macro2";
    version = "0.4.27";
    description = "A stable implementation of the upcoming new `proc_macro` API. Comes with an\noption, off by default, to also reimplement itself in terms of the upstream\nunstable API.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "1cp4c40p3hwn2sz72ssqa62gp5n8w4gbamdqvvadzp5l7gxnq95i";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."unicode_xid"."${deps."proc_macro2"."0.4.27"."unicode_xid"}" deps)
    ]);
    features = mkFeatures (features."proc_macro2"."0.4.27" or {});
  };
  features_.proc_macro2."0.4.27" = deps: f: updateFeatures f (rec {
    proc_macro2 = fold recursiveUpdate {} [
      { "0.4.27"."proc-macro" =
        (f.proc_macro2."0.4.27"."proc-macro" or false) ||
        (f.proc_macro2."0.4.27".default or false) ||
        (proc_macro2."0.4.27"."default" or false); }
      { "0.4.27".default = (f.proc_macro2."0.4.27".default or true); }
    ];
    unicode_xid."${deps.proc_macro2."0.4.27".unicode_xid}".default = true;
  }) [
    (features_.unicode_xid."${deps."proc_macro2"."0.4.27"."unicode_xid"}" deps)
  ];


# end
# quick-error-1.2.2

  crates.quick_error."1.2.2" = deps: { features?(features_.quick_error."1.2.2" deps {}) }: buildRustCrate {
    crateName = "quick-error";
    version = "1.2.2";
    authors = [ "Paul Colomiets <paul@colomiets.name>" "Colin Kiegel <kiegel@gmx.de>" ];
    sha256 = "192a3adc5phgpibgqblsdx1b421l5yg9bjbmv552qqq9f37h60k5";
  };
  features_.quick_error."1.2.2" = deps: f: updateFeatures f ({
    quick_error."1.2.2".default = (f.quick_error."1.2.2".default or true);
  }) [];


# end
# quote-0.6.11

  crates.quote."0.6.11" = deps: { features?(features_.quote."0.6.11" deps {}) }: buildRustCrate {
    crateName = "quote";
    version = "0.6.11";
    description = "Quasi-quoting macro quote!(...)";
    authors = [ "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "0agska77z58cypcq4knayzwx7r7n6m756z1cz9cp2z4sv0b846ga";
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."quote"."0.6.11"."proc_macro2"}" deps)
    ]);
    features = mkFeatures (features."quote"."0.6.11" or {});
  };
  features_.quote."0.6.11" = deps: f: updateFeatures f (rec {
    proc_macro2 = fold recursiveUpdate {} [
      { "${deps.quote."0.6.11".proc_macro2}"."proc-macro" =
        (f.proc_macro2."${deps.quote."0.6.11".proc_macro2}"."proc-macro" or false) ||
        (quote."0.6.11"."proc-macro" or false) ||
        (f."quote"."0.6.11"."proc-macro" or false); }
      { "${deps.quote."0.6.11".proc_macro2}".default = (f.proc_macro2."${deps.quote."0.6.11".proc_macro2}".default or false); }
    ];
    quote = fold recursiveUpdate {} [
      { "0.6.11"."proc-macro" =
        (f.quote."0.6.11"."proc-macro" or false) ||
        (f.quote."0.6.11".default or false) ||
        (quote."0.6.11"."default" or false); }
      { "0.6.11".default = (f.quote."0.6.11".default or true); }
    ];
  }) [
    (features_.proc_macro2."${deps."quote"."0.6.11"."proc_macro2"}" deps)
  ];


# end
# quote-0.6.8

  crates.quote."0.6.8" = deps: { features?(features_.quote."0.6.8" deps {}) }: buildRustCrate {
    crateName = "quote";
    version = "0.6.8";
    authors = [ "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "0dq6j23w6pmc4l6v490arixdwypy0b82z76nrzaingqhqri4p3mh";
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."quote"."0.6.8"."proc_macro2"}" deps)
    ]);
    features = mkFeatures (features."quote"."0.6.8" or {});
  };
  features_.quote."0.6.8" = deps: f: updateFeatures f (rec {
    proc_macro2 = fold recursiveUpdate {} [
      { "${deps.quote."0.6.8".proc_macro2}"."proc-macro" =
        (f.proc_macro2."${deps.quote."0.6.8".proc_macro2}"."proc-macro" or false) ||
        (quote."0.6.8"."proc-macro" or false) ||
        (f."quote"."0.6.8"."proc-macro" or false); }
      { "${deps.quote."0.6.8".proc_macro2}".default = (f.proc_macro2."${deps.quote."0.6.8".proc_macro2}".default or false); }
    ];
    quote = fold recursiveUpdate {} [
      { "0.6.8".default = (f.quote."0.6.8".default or true); }
      { "0.6.8".proc-macro =
        (f.quote."0.6.8".proc-macro or false) ||
        (f.quote."0.6.8".default or false) ||
        (quote."0.6.8"."default" or false); }
    ];
  }) [
    (features_.proc_macro2."${deps."quote"."0.6.8"."proc_macro2"}" deps)
  ];


# end
# rand-0.4.3

  crates.rand."0.4.3" = deps: { features?(features_.rand."0.4.3" deps {}) }: buildRustCrate {
    crateName = "rand";
    version = "0.4.3";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1644wri45l147822xy7dgdm4k7myxzs66cb795ga0x7dan11ci4f";
    dependencies = (if kernel == "fuchsia" then mapFeatures features ([
      (crates."fuchsia_zircon"."${deps."rand"."0.4.3"."fuchsia_zircon"}" deps)
    ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
    ]
      ++ (if features.rand."0.4.3".libc or false then [ (crates.libc."${deps."rand"."0.4.3".libc}" deps) ] else [])) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."rand"."0.4.3"."winapi"}" deps)
    ]) else []);
    features = mkFeatures (features."rand"."0.4.3" or {});
  };
  features_.rand."0.4.3" = deps: f: updateFeatures f (rec {
    fuchsia_zircon."${deps.rand."0.4.3".fuchsia_zircon}".default = true;
    libc."${deps.rand."0.4.3".libc}".default = true;
    rand = fold recursiveUpdate {} [
      { "0.4.3".default = (f.rand."0.4.3".default or true); }
      { "0.4.3".i128_support =
        (f.rand."0.4.3".i128_support or false) ||
        (f.rand."0.4.3".nightly or false) ||
        (rand."0.4.3"."nightly" or false); }
      { "0.4.3".libc =
        (f.rand."0.4.3".libc or false) ||
        (f.rand."0.4.3".std or false) ||
        (rand."0.4.3"."std" or false); }
      { "0.4.3".std =
        (f.rand."0.4.3".std or false) ||
        (f.rand."0.4.3".default or false) ||
        (rand."0.4.3"."default" or false); }
    ];
    winapi = fold recursiveUpdate {} [
      { "${deps.rand."0.4.3".winapi}"."minwindef" = true; }
      { "${deps.rand."0.4.3".winapi}"."ntsecapi" = true; }
      { "${deps.rand."0.4.3".winapi}"."profileapi" = true; }
      { "${deps.rand."0.4.3".winapi}"."winnt" = true; }
      { "${deps.rand."0.4.3".winapi}".default = true; }
    ];
  }) [
    (features_.fuchsia_zircon."${deps."rand"."0.4.3"."fuchsia_zircon"}" deps)
    (features_.libc."${deps."rand"."0.4.3"."libc"}" deps)
    (features_.winapi."${deps."rand"."0.4.3"."winapi"}" deps)
  ];


# end
# rand-0.4.6

  crates.rand."0.4.6" = deps: { features?(features_.rand."0.4.6" deps {}) }: buildRustCrate {
    crateName = "rand";
    version = "0.4.6";
    description = "Random number generators and other randomness functionality.\n";
    authors = [ "The Rust Project Developers" ];
    sha256 = "0c3rmg5q7d6qdi7cbmg5py9alm70wd3xsg0mmcawrnl35qv37zfs";
    dependencies = (if abi == "sgx" then mapFeatures features ([
      (crates."rand_core"."${deps."rand"."0.4.6"."rand_core"}" deps)
      (crates."rdrand"."${deps."rand"."0.4.6"."rdrand"}" deps)
    ]) else [])
      ++ (if kernel == "fuchsia" then mapFeatures features ([
      (crates."fuchsia_cprng"."${deps."rand"."0.4.6"."fuchsia_cprng"}" deps)
    ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
    ]
      ++ (if features.rand."0.4.6".libc or false then [ (crates.libc."${deps."rand"."0.4.6".libc}" deps) ] else [])) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."rand"."0.4.6"."winapi"}" deps)
    ]) else []);
    features = mkFeatures (features."rand"."0.4.6" or {});
  };
  features_.rand."0.4.6" = deps: f: updateFeatures f (rec {
    fuchsia_cprng."${deps.rand."0.4.6".fuchsia_cprng}".default = true;
    libc."${deps.rand."0.4.6".libc}".default = true;
    rand = fold recursiveUpdate {} [
      { "0.4.6"."i128_support" =
        (f.rand."0.4.6"."i128_support" or false) ||
        (f.rand."0.4.6".nightly or false) ||
        (rand."0.4.6"."nightly" or false); }
      { "0.4.6"."libc" =
        (f.rand."0.4.6"."libc" or false) ||
        (f.rand."0.4.6".std or false) ||
        (rand."0.4.6"."std" or false); }
      { "0.4.6"."std" =
        (f.rand."0.4.6"."std" or false) ||
        (f.rand."0.4.6".default or false) ||
        (rand."0.4.6"."default" or false); }
      { "0.4.6".default = (f.rand."0.4.6".default or true); }
    ];
    rand_core."${deps.rand."0.4.6".rand_core}".default = (f.rand_core."${deps.rand."0.4.6".rand_core}".default or false);
    rdrand."${deps.rand."0.4.6".rdrand}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.rand."0.4.6".winapi}"."minwindef" = true; }
      { "${deps.rand."0.4.6".winapi}"."ntsecapi" = true; }
      { "${deps.rand."0.4.6".winapi}"."profileapi" = true; }
      { "${deps.rand."0.4.6".winapi}"."winnt" = true; }
      { "${deps.rand."0.4.6".winapi}".default = true; }
    ];
  }) [
    (features_.rand_core."${deps."rand"."0.4.6"."rand_core"}" deps)
    (features_.rdrand."${deps."rand"."0.4.6"."rdrand"}" deps)
    (features_.fuchsia_cprng."${deps."rand"."0.4.6"."fuchsia_cprng"}" deps)
    (features_.libc."${deps."rand"."0.4.6"."libc"}" deps)
    (features_.winapi."${deps."rand"."0.4.6"."winapi"}" deps)
  ];


# end
# rand_core-0.3.1

  crates.rand_core."0.3.1" = deps: { features?(features_.rand_core."0.3.1" deps {}) }: buildRustCrate {
    crateName = "rand_core";
    version = "0.3.1";
    description = "Core random number generator traits and tools for implementation.\n";
    authors = [ "The Rand Project Developers" "The Rust Project Developers" ];
    sha256 = "0q0ssgpj9x5a6fda83nhmfydy7a6c0wvxm0jhncsmjx8qp8gw91m";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rand_core"."0.3.1"."rand_core"}" deps)
    ]);
    features = mkFeatures (features."rand_core"."0.3.1" or {});
  };
  features_.rand_core."0.3.1" = deps: f: updateFeatures f (rec {
    rand_core = fold recursiveUpdate {} [
      { "${deps.rand_core."0.3.1".rand_core}"."alloc" =
        (f.rand_core."${deps.rand_core."0.3.1".rand_core}"."alloc" or false) ||
        (rand_core."0.3.1"."alloc" or false) ||
        (f."rand_core"."0.3.1"."alloc" or false); }
      { "${deps.rand_core."0.3.1".rand_core}"."serde1" =
        (f.rand_core."${deps.rand_core."0.3.1".rand_core}"."serde1" or false) ||
        (rand_core."0.3.1"."serde1" or false) ||
        (f."rand_core"."0.3.1"."serde1" or false); }
      { "${deps.rand_core."0.3.1".rand_core}"."std" =
        (f.rand_core."${deps.rand_core."0.3.1".rand_core}"."std" or false) ||
        (rand_core."0.3.1"."std" or false) ||
        (f."rand_core"."0.3.1"."std" or false); }
      { "${deps.rand_core."0.3.1".rand_core}".default = true; }
      { "0.3.1"."std" =
        (f.rand_core."0.3.1"."std" or false) ||
        (f.rand_core."0.3.1".default or false) ||
        (rand_core."0.3.1"."default" or false); }
      { "0.3.1".default = (f.rand_core."0.3.1".default or true); }
    ];
  }) [
    (features_.rand_core."${deps."rand_core"."0.3.1"."rand_core"}" deps)
  ];


# end
# rand_core-0.4.0

  crates.rand_core."0.4.0" = deps: { features?(features_.rand_core."0.4.0" deps {}) }: buildRustCrate {
    crateName = "rand_core";
    version = "0.4.0";
    description = "Core random number generator traits and tools for implementation.\n";
    authors = [ "The Rand Project Developers" "The Rust Project Developers" ];
    sha256 = "0wb5iwhffibj0pnpznhv1g3i7h1fnhz64s3nz74fz6vsm3q6q3br";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."rand_core"."0.4.0" or {});
  };
  features_.rand_core."0.4.0" = deps: f: updateFeatures f (rec {
    rand_core = fold recursiveUpdate {} [
      { "0.4.0"."alloc" =
        (f.rand_core."0.4.0"."alloc" or false) ||
        (f.rand_core."0.4.0".std or false) ||
        (rand_core."0.4.0"."std" or false); }
      { "0.4.0"."serde" =
        (f.rand_core."0.4.0"."serde" or false) ||
        (f.rand_core."0.4.0".serde1 or false) ||
        (rand_core."0.4.0"."serde1" or false); }
      { "0.4.0"."serde_derive" =
        (f.rand_core."0.4.0"."serde_derive" or false) ||
        (f.rand_core."0.4.0".serde1 or false) ||
        (rand_core."0.4.0"."serde1" or false); }
      { "0.4.0".default = (f.rand_core."0.4.0".default or true); }
    ];
  }) [];


# end
# rand_os-0.1.3

  crates.rand_os."0.1.3" = deps: { features?(features_.rand_os."0.1.3" deps {}) }: buildRustCrate {
    crateName = "rand_os";
    version = "0.1.3";
    description = "OS backed Random Number Generator";
    authors = [ "The Rand Project Developers" ];
    sha256 = "0ywwspizgs9g8vzn6m5ix9yg36n15119d6n792h7mk4r5vs0ww4j";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rand_os"."0.1.3"."rand_core"}" deps)
    ])
      ++ (if abi == "sgx" then mapFeatures features ([
      (crates."rdrand"."${deps."rand_os"."0.1.3"."rdrand"}" deps)
    ]) else [])
      ++ (if kernel == "cloudabi" then mapFeatures features ([
      (crates."cloudabi"."${deps."rand_os"."0.1.3"."cloudabi"}" deps)
    ]) else [])
      ++ (if kernel == "fuchsia" then mapFeatures features ([
      (crates."fuchsia_cprng"."${deps."rand_os"."0.1.3"."fuchsia_cprng"}" deps)
    ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."rand_os"."0.1.3"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."rand_os"."0.1.3"."winapi"}" deps)
    ]) else [])
      ++ (if kernel == "wasm32-unknown-unknown" then mapFeatures features ([
]) else []);
  };
  features_.rand_os."0.1.3" = deps: f: updateFeatures f ({
    cloudabi."${deps.rand_os."0.1.3".cloudabi}".default = true;
    fuchsia_cprng."${deps.rand_os."0.1.3".fuchsia_cprng}".default = true;
    libc."${deps.rand_os."0.1.3".libc}".default = true;
    rand_core = fold recursiveUpdate {} [
      { "${deps.rand_os."0.1.3".rand_core}"."std" = true; }
      { "${deps.rand_os."0.1.3".rand_core}".default = true; }
    ];
    rand_os."0.1.3".default = (f.rand_os."0.1.3".default or true);
    rdrand."${deps.rand_os."0.1.3".rdrand}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.rand_os."0.1.3".winapi}"."minwindef" = true; }
      { "${deps.rand_os."0.1.3".winapi}"."ntsecapi" = true; }
      { "${deps.rand_os."0.1.3".winapi}"."winnt" = true; }
      { "${deps.rand_os."0.1.3".winapi}".default = true; }
    ];
  }) [
    (features_.rand_core."${deps."rand_os"."0.1.3"."rand_core"}" deps)
    (features_.rdrand."${deps."rand_os"."0.1.3"."rdrand"}" deps)
    (features_.cloudabi."${deps."rand_os"."0.1.3"."cloudabi"}" deps)
    (features_.fuchsia_cprng."${deps."rand_os"."0.1.3"."fuchsia_cprng"}" deps)
    (features_.libc."${deps."rand_os"."0.1.3"."libc"}" deps)
    (features_.winapi."${deps."rand_os"."0.1.3"."winapi"}" deps)
  ];


# end
# rdrand-0.4.0

  crates.rdrand."0.4.0" = deps: { features?(features_.rdrand."0.4.0" deps {}) }: buildRustCrate {
    crateName = "rdrand";
    version = "0.4.0";
    description = "An implementation of random number generator based on rdrand and rdseed instructions";
    authors = [ "Simonas Kazlauskas <rdrand@kazlauskas.me>" ];
    sha256 = "15hrcasn0v876wpkwab1dwbk9kvqwrb3iv4y4dibb6yxnfvzwajk";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rdrand"."0.4.0"."rand_core"}" deps)
    ]);
    features = mkFeatures (features."rdrand"."0.4.0" or {});
  };
  features_.rdrand."0.4.0" = deps: f: updateFeatures f (rec {
    rand_core."${deps.rdrand."0.4.0".rand_core}".default = (f.rand_core."${deps.rdrand."0.4.0".rand_core}".default or false);
    rdrand = fold recursiveUpdate {} [
      { "0.4.0"."std" =
        (f.rdrand."0.4.0"."std" or false) ||
        (f.rdrand."0.4.0".default or false) ||
        (rdrand."0.4.0"."default" or false); }
      { "0.4.0".default = (f.rdrand."0.4.0".default or true); }
    ];
  }) [
    (features_.rand_core."${deps."rdrand"."0.4.0"."rand_core"}" deps)
  ];


# end
# redox_syscall-0.1.40

  crates.redox_syscall."0.1.40" = deps: { features?(features_.redox_syscall."0.1.40" deps {}) }: buildRustCrate {
    crateName = "redox_syscall";
    version = "0.1.40";
    authors = [ "Jeremy Soller <jackpot51@gmail.com>" ];
    sha256 = "132rnhrq49l3z7gjrwj2zfadgw6q0355s6a7id7x7c0d7sk72611";
    libName = "syscall";
  };
  features_.redox_syscall."0.1.40" = deps: f: updateFeatures f ({
    redox_syscall."0.1.40".default = (f.redox_syscall."0.1.40".default or true);
  }) [];


# end
# redox_syscall-0.1.51

  crates.redox_syscall."0.1.51" = deps: { features?(features_.redox_syscall."0.1.51" deps {}) }: buildRustCrate {
    crateName = "redox_syscall";
    version = "0.1.51";
    description = "A Rust library to access raw Redox system calls";
    authors = [ "Jeremy Soller <jackpot51@gmail.com>" ];
    sha256 = "1a61cv7yydx64vpyvzr0z0hwzdvy4gcvcnfc6k70zpkngj5sz3ip";
    libName = "syscall";
  };
  features_.redox_syscall."0.1.51" = deps: f: updateFeatures f ({
    redox_syscall."0.1.51".default = (f.redox_syscall."0.1.51".default or true);
  }) [];


# end
# redox_termios-0.1.1

  crates.redox_termios."0.1.1" = deps: { features?(features_.redox_termios."0.1.1" deps {}) }: buildRustCrate {
    crateName = "redox_termios";
    version = "0.1.1";
    authors = [ "Jeremy Soller <jackpot51@gmail.com>" ];
    sha256 = "04s6yyzjca552hdaqlvqhp3vw0zqbc304md5czyd3axh56iry8wh";
    libPath = "src/lib.rs";
    dependencies = mapFeatures features ([
      (crates."redox_syscall"."${deps."redox_termios"."0.1.1"."redox_syscall"}" deps)
    ]);
  };
  features_.redox_termios."0.1.1" = deps: f: updateFeatures f ({
    redox_syscall."${deps.redox_termios."0.1.1".redox_syscall}".default = true;
    redox_termios."0.1.1".default = (f.redox_termios."0.1.1".default or true);
  }) [
    (features_.redox_syscall."${deps."redox_termios"."0.1.1"."redox_syscall"}" deps)
  ];


# end
# redox_users-0.2.0

  crates.redox_users."0.2.0" = deps: { features?(features_.redox_users."0.2.0" deps {}) }: buildRustCrate {
    crateName = "redox_users";
    version = "0.2.0";
    authors = [ "Jose Narvaez <goyox86@gmail.com>" "Wesley Hershberger <mggmugginsmc@gmail.com>" ];
    sha256 = "0s9jrh378jk8rfi1xfwxvh2r1gv6rn3bq6n7sbajkrqqq0xzijvf";
    dependencies = mapFeatures features ([
      (crates."argon2rs"."${deps."redox_users"."0.2.0"."argon2rs"}" deps)
      (crates."failure"."${deps."redox_users"."0.2.0"."failure"}" deps)
      (crates."rand"."${deps."redox_users"."0.2.0"."rand"}" deps)
      (crates."redox_syscall"."${deps."redox_users"."0.2.0"."redox_syscall"}" deps)
    ]);
  };
  features_.redox_users."0.2.0" = deps: f: updateFeatures f ({
    argon2rs."${deps.redox_users."0.2.0".argon2rs}".default = (f.argon2rs."${deps.redox_users."0.2.0".argon2rs}".default or false);
    failure."${deps.redox_users."0.2.0".failure}".default = true;
    rand."${deps.redox_users."0.2.0".rand}".default = true;
    redox_syscall."${deps.redox_users."0.2.0".redox_syscall}".default = true;
    redox_users."0.2.0".default = (f.redox_users."0.2.0".default or true);
  }) [
    (features_.argon2rs."${deps."redox_users"."0.2.0"."argon2rs"}" deps)
    (features_.failure."${deps."redox_users"."0.2.0"."failure"}" deps)
    (features_.rand."${deps."redox_users"."0.2.0"."rand"}" deps)
    (features_.redox_syscall."${deps."redox_users"."0.2.0"."redox_syscall"}" deps)
  ];


# end
# redox_users-0.3.0

  crates.redox_users."0.3.0" = deps: { features?(features_.redox_users."0.3.0" deps {}) }: buildRustCrate {
    crateName = "redox_users";
    version = "0.3.0";
    description = "A Rust library to access Redox users and groups functionality";
    authors = [ "Jose Narvaez <goyox86@gmail.com>" "Wesley Hershberger <mggmugginsmc@gmail.com>" ];
    sha256 = "051rzqgk5hn7rf24nwgbb32zfdn8qp2kwqvdp0772ia85p737p4j";
    dependencies = mapFeatures features ([
      (crates."argon2rs"."${deps."redox_users"."0.3.0"."argon2rs"}" deps)
      (crates."failure"."${deps."redox_users"."0.3.0"."failure"}" deps)
      (crates."rand_os"."${deps."redox_users"."0.3.0"."rand_os"}" deps)
      (crates."redox_syscall"."${deps."redox_users"."0.3.0"."redox_syscall"}" deps)
    ]);
  };
  features_.redox_users."0.3.0" = deps: f: updateFeatures f ({
    argon2rs."${deps.redox_users."0.3.0".argon2rs}".default = (f.argon2rs."${deps.redox_users."0.3.0".argon2rs}".default or false);
    failure."${deps.redox_users."0.3.0".failure}".default = true;
    rand_os."${deps.redox_users."0.3.0".rand_os}".default = true;
    redox_syscall."${deps.redox_users."0.3.0".redox_syscall}".default = true;
    redox_users."0.3.0".default = (f.redox_users."0.3.0".default or true);
  }) [
    (features_.argon2rs."${deps."redox_users"."0.3.0"."argon2rs"}" deps)
    (features_.failure."${deps."redox_users"."0.3.0"."failure"}" deps)
    (features_.rand_os."${deps."redox_users"."0.3.0"."rand_os"}" deps)
    (features_.redox_syscall."${deps."redox_users"."0.3.0"."redox_syscall"}" deps)
  ];


# end
# regex-1.0.5

  crates.regex."1.0.5" = deps: { features?(features_.regex."1.0.5" deps {}) }: buildRustCrate {
    crateName = "regex";
    version = "1.0.5";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1nb4dva9lhb3v76bdds9qcxldb2xy998sdraqnqaqdr6axfsfp02";
    dependencies = mapFeatures features ([
      (crates."aho_corasick"."${deps."regex"."1.0.5"."aho_corasick"}" deps)
      (crates."memchr"."${deps."regex"."1.0.5"."memchr"}" deps)
      (crates."regex_syntax"."${deps."regex"."1.0.5"."regex_syntax"}" deps)
      (crates."thread_local"."${deps."regex"."1.0.5"."thread_local"}" deps)
      (crates."utf8_ranges"."${deps."regex"."1.0.5"."utf8_ranges"}" deps)
    ]);
    features = mkFeatures (features."regex"."1.0.5" or {});
  };
  features_.regex."1.0.5" = deps: f: updateFeatures f (rec {
    aho_corasick."${deps.regex."1.0.5".aho_corasick}".default = true;
    memchr."${deps.regex."1.0.5".memchr}".default = true;
    regex = fold recursiveUpdate {} [
      { "1.0.5".default = (f.regex."1.0.5".default or true); }
      { "1.0.5".pattern =
        (f.regex."1.0.5".pattern or false) ||
        (f.regex."1.0.5".unstable or false) ||
        (regex."1.0.5"."unstable" or false); }
      { "1.0.5".use_std =
        (f.regex."1.0.5".use_std or false) ||
        (f.regex."1.0.5".default or false) ||
        (regex."1.0.5"."default" or false); }
    ];
    regex_syntax."${deps.regex."1.0.5".regex_syntax}".default = true;
    thread_local."${deps.regex."1.0.5".thread_local}".default = true;
    utf8_ranges."${deps.regex."1.0.5".utf8_ranges}".default = true;
  }) [
    (features_.aho_corasick."${deps."regex"."1.0.5"."aho_corasick"}" deps)
    (features_.memchr."${deps."regex"."1.0.5"."memchr"}" deps)
    (features_.regex_syntax."${deps."regex"."1.0.5"."regex_syntax"}" deps)
    (features_.thread_local."${deps."regex"."1.0.5"."thread_local"}" deps)
    (features_.utf8_ranges."${deps."regex"."1.0.5"."utf8_ranges"}" deps)
  ];


# end
# regex-1.1.2

  crates.regex."1.1.2" = deps: { features?(features_.regex."1.1.2" deps {}) }: buildRustCrate {
    crateName = "regex";
    version = "1.1.2";
    description = "An implementation of regular expressions for Rust. This implementation uses\nfinite automata and guarantees linear time matching on all inputs.\n";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1c9nb031z1vw5l6lzfkfra2mah9hb2s1wgq9f1lmgcbkiiprj9xd";
    dependencies = mapFeatures features ([
      (crates."aho_corasick"."${deps."regex"."1.1.2"."aho_corasick"}" deps)
      (crates."memchr"."${deps."regex"."1.1.2"."memchr"}" deps)
      (crates."regex_syntax"."${deps."regex"."1.1.2"."regex_syntax"}" deps)
      (crates."thread_local"."${deps."regex"."1.1.2"."thread_local"}" deps)
      (crates."utf8_ranges"."${deps."regex"."1.1.2"."utf8_ranges"}" deps)
    ]);
    features = mkFeatures (features."regex"."1.1.2" or {});
  };
  features_.regex."1.1.2" = deps: f: updateFeatures f (rec {
    aho_corasick."${deps.regex."1.1.2".aho_corasick}".default = true;
    memchr."${deps.regex."1.1.2".memchr}".default = true;
    regex = fold recursiveUpdate {} [
      { "1.1.2"."pattern" =
        (f.regex."1.1.2"."pattern" or false) ||
        (f.regex."1.1.2".unstable or false) ||
        (regex."1.1.2"."unstable" or false); }
      { "1.1.2"."use_std" =
        (f.regex."1.1.2"."use_std" or false) ||
        (f.regex."1.1.2".default or false) ||
        (regex."1.1.2"."default" or false); }
      { "1.1.2".default = (f.regex."1.1.2".default or true); }
    ];
    regex_syntax."${deps.regex."1.1.2".regex_syntax}".default = true;
    thread_local."${deps.regex."1.1.2".thread_local}".default = true;
    utf8_ranges."${deps.regex."1.1.2".utf8_ranges}".default = true;
  }) [
    (features_.aho_corasick."${deps."regex"."1.1.2"."aho_corasick"}" deps)
    (features_.memchr."${deps."regex"."1.1.2"."memchr"}" deps)
    (features_.regex_syntax."${deps."regex"."1.1.2"."regex_syntax"}" deps)
    (features_.thread_local."${deps."regex"."1.1.2"."thread_local"}" deps)
    (features_.utf8_ranges."${deps."regex"."1.1.2"."utf8_ranges"}" deps)
  ];


# end
# regex-syntax-0.6.2

  crates.regex_syntax."0.6.2" = deps: { features?(features_.regex_syntax."0.6.2" deps {}) }: buildRustCrate {
    crateName = "regex-syntax";
    version = "0.6.2";
    authors = [ "The Rust Project Developers" ];
    sha256 = "109426mj7nhwr6szdzbcvn1a8g5zy52f9maqxjd9agm8wg87ylyw";
    dependencies = mapFeatures features ([
      (crates."ucd_util"."${deps."regex_syntax"."0.6.2"."ucd_util"}" deps)
    ]);
  };
  features_.regex_syntax."0.6.2" = deps: f: updateFeatures f ({
    regex_syntax."0.6.2".default = (f.regex_syntax."0.6.2".default or true);
    ucd_util."${deps.regex_syntax."0.6.2".ucd_util}".default = true;
  }) [
    (features_.ucd_util."${deps."regex_syntax"."0.6.2"."ucd_util"}" deps)
  ];


# end
# regex-syntax-0.6.5

  crates.regex_syntax."0.6.5" = deps: { features?(features_.regex_syntax."0.6.5" deps {}) }: buildRustCrate {
    crateName = "regex-syntax";
    version = "0.6.5";
    description = "A regular expression parser.";
    authors = [ "The Rust Project Developers" ];
    sha256 = "0aaaba1fan2qfyc31wzdmgmbmyirc27zgcbz41ba5wm1lb2d8kli";
    dependencies = mapFeatures features ([
      (crates."ucd_util"."${deps."regex_syntax"."0.6.5"."ucd_util"}" deps)
    ]);
  };
  features_.regex_syntax."0.6.5" = deps: f: updateFeatures f ({
    regex_syntax."0.6.5".default = (f.regex_syntax."0.6.5".default or true);
    ucd_util."${deps.regex_syntax."0.6.5".ucd_util}".default = true;
  }) [
    (features_.ucd_util."${deps."regex_syntax"."0.6.5"."ucd_util"}" deps)
  ];


# end
# remove_dir_all-0.5.1

  crates.remove_dir_all."0.5.1" = deps: { features?(features_.remove_dir_all."0.5.1" deps {}) }: buildRustCrate {
    crateName = "remove_dir_all";
    version = "0.5.1";
    authors = [ "Aaronepower <theaaronepower@gmail.com>" ];
    sha256 = "1chx3yvfbj46xjz4bzsvps208l46hfbcy0sm98gpiya454n4rrl7";
    dependencies = (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."remove_dir_all"."0.5.1"."winapi"}" deps)
    ]) else []);
  };
  features_.remove_dir_all."0.5.1" = deps: f: updateFeatures f ({
    remove_dir_all."0.5.1".default = (f.remove_dir_all."0.5.1".default or true);
    winapi = fold recursiveUpdate {} [
      { "${deps.remove_dir_all."0.5.1".winapi}"."errhandlingapi" = true; }
      { "${deps.remove_dir_all."0.5.1".winapi}"."fileapi" = true; }
      { "${deps.remove_dir_all."0.5.1".winapi}"."std" = true; }
      { "${deps.remove_dir_all."0.5.1".winapi}"."winbase" = true; }
      { "${deps.remove_dir_all."0.5.1".winapi}"."winerror" = true; }
      { "${deps.remove_dir_all."0.5.1".winapi}".default = true; }
    ];
  }) [
    (features_.winapi."${deps."remove_dir_all"."0.5.1"."winapi"}" deps)
  ];


# end
# rustc-demangle-0.1.13

  crates.rustc_demangle."0.1.13" = deps: { features?(features_.rustc_demangle."0.1.13" deps {}) }: buildRustCrate {
    crateName = "rustc-demangle";
    version = "0.1.13";
    description = "Rust compiler symbol demangling.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0sr6cr02araqnlqwc5ghvnafjmkw11vzjswqaz757lvyrcl8xcy6";
  };
  features_.rustc_demangle."0.1.13" = deps: f: updateFeatures f ({
    rustc_demangle."0.1.13".default = (f.rustc_demangle."0.1.13".default or true);
  }) [];


# end
# rustc-demangle-0.1.9

  crates.rustc_demangle."0.1.9" = deps: { features?(features_.rustc_demangle."0.1.9" deps {}) }: buildRustCrate {
    crateName = "rustc-demangle";
    version = "0.1.9";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "00ma4r9haq0zv5krps617mym6y74056pfcivyld0kpci156vfaax";
  };
  features_.rustc_demangle."0.1.9" = deps: f: updateFeatures f ({
    rustc_demangle."0.1.9".default = (f.rustc_demangle."0.1.9".default or true);
  }) [];


# end
# ryu-0.2.6

  crates.ryu."0.2.6" = deps: { features?(features_.ryu."0.2.6" deps {}) }: buildRustCrate {
    crateName = "ryu";
    version = "0.2.6";
    authors = [ "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "1vdh6z4aysc9kiiqhl7vxkqz3fykcnp24kgfizshlwfsz2j0p9dr";
    build = "build.rs";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."ryu"."0.2.6" or {});
  };
  features_.ryu."0.2.6" = deps: f: updateFeatures f ({
    ryu."0.2.6".default = (f.ryu."0.2.6".default or true);
  }) [];


# end
# ryu-0.2.7

  crates.ryu."0.2.7" = deps: { features?(features_.ryu."0.2.7" deps {}) }: buildRustCrate {
    crateName = "ryu";
    version = "0.2.7";
    description = "Fast floating point to string conversion";
    authors = [ "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "0m8szf1m87wfqkwh1f9zp9bn2mb0m9nav028xxnd0hlig90b44bd";
    build = "build.rs";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."ryu"."0.2.7" or {});
  };
  features_.ryu."0.2.7" = deps: f: updateFeatures f ({
    ryu."0.2.7".default = (f.ryu."0.2.7".default or true);
  }) [];


# end
# scoped_threadpool-0.1.9

  crates.scoped_threadpool."0.1.9" = deps: { features?(features_.scoped_threadpool."0.1.9" deps {}) }: buildRustCrate {
    crateName = "scoped_threadpool";
    version = "0.1.9";
    authors = [ "Marvin L??bel <loebel.marvin@gmail.com>" ];
    sha256 = "1arqj2skcfr46s1lcyvnlmfr5456kg5nhn8k90xyfjnxkp5yga2v";
    features = mkFeatures (features."scoped_threadpool"."0.1.9" or {});
  };
  features_.scoped_threadpool."0.1.9" = deps: f: updateFeatures f ({
    scoped_threadpool."0.1.9".default = (f.scoped_threadpool."0.1.9".default or true);
  }) [];


# end
# serde-1.0.80

  crates.serde."1.0.80" = deps: { features?(features_.serde."1.0.80" deps {}) }: buildRustCrate {
    crateName = "serde";
    version = "1.0.80";
    authors = [ "Erick Tryzelaar <erick.tryzelaar@gmail.com>" "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "0vyciw2qhrws4hz87pfnsjdfzzdw2sclxqxq394g3a219a2rdcxz";
    build = "build.rs";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."serde"."1.0.80" or {});
  };
  features_.serde."1.0.80" = deps: f: updateFeatures f (rec {
    serde = fold recursiveUpdate {} [
      { "1.0.80".default = (f.serde."1.0.80".default or true); }
      { "1.0.80".serde_derive =
        (f.serde."1.0.80".serde_derive or false) ||
        (f.serde."1.0.80".derive or false) ||
        (serde."1.0.80"."derive" or false); }
      { "1.0.80".std =
        (f.serde."1.0.80".std or false) ||
        (f.serde."1.0.80".default or false) ||
        (serde."1.0.80"."default" or false); }
      { "1.0.80".unstable =
        (f.serde."1.0.80".unstable or false) ||
        (f.serde."1.0.80".alloc or false) ||
        (serde."1.0.80"."alloc" or false); }
    ];
  }) [];


# end
# serde-1.0.84

  crates.serde."1.0.84" = deps: { features?(features_.serde."1.0.84" deps {}) }: buildRustCrate {
    crateName = "serde";
    version = "1.0.84";
    authors = [ "Erick Tryzelaar <erick.tryzelaar@gmail.com>" "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "1x40cvvkbkz592jflwbfbxhim3wxdqp9dy0qxjw13ra7q57b29gy";
    build = "build.rs";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."serde"."1.0.84" or {});
  };
  features_.serde."1.0.84" = deps: f: updateFeatures f (rec {
    serde = fold recursiveUpdate {} [
      { "1.0.84".default = (f.serde."1.0.84".default or true); }
      { "1.0.84".serde_derive =
        (f.serde."1.0.84".serde_derive or false) ||
        (f.serde."1.0.84".derive or false) ||
        (serde."1.0.84"."derive" or false); }
      { "1.0.84".std =
        (f.serde."1.0.84".std or false) ||
        (f.serde."1.0.84".default or false) ||
        (serde."1.0.84"."default" or false); }
      { "1.0.84".unstable =
        (f.serde."1.0.84".unstable or false) ||
        (f.serde."1.0.84".alloc or false) ||
        (serde."1.0.84"."alloc" or false); }
    ];
  }) [];


# end
# serde-1.0.89

  crates.serde."1.0.89" = deps: { features?(features_.serde."1.0.89" deps {}) }: buildRustCrate {
    crateName = "serde";
    version = "1.0.89";
    description = "A generic serialization/deserialization framework";
    authors = [ "Erick Tryzelaar <erick.tryzelaar@gmail.com>" "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "14pidc6skkm92vhp431wi1aam5vv5g6rmsimik38wzb0qy72c71g";
    build = "build.rs";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."serde"."1.0.89" or {});
  };
  features_.serde."1.0.89" = deps: f: updateFeatures f (rec {
    serde = fold recursiveUpdate {} [
      { "1.0.89"."serde_derive" =
        (f.serde."1.0.89"."serde_derive" or false) ||
        (f.serde."1.0.89".derive or false) ||
        (serde."1.0.89"."derive" or false); }
      { "1.0.89"."std" =
        (f.serde."1.0.89"."std" or false) ||
        (f.serde."1.0.89".default or false) ||
        (serde."1.0.89"."default" or false); }
      { "1.0.89"."unstable" =
        (f.serde."1.0.89"."unstable" or false) ||
        (f.serde."1.0.89".alloc or false) ||
        (serde."1.0.89"."alloc" or false); }
      { "1.0.89".default = (f.serde."1.0.89".default or true); }
    ];
  }) [];


# end
# serde_derive-1.0.80

  crates.serde_derive."1.0.80" = deps: { features?(features_.serde_derive."1.0.80" deps {}) }: buildRustCrate {
    crateName = "serde_derive";
    version = "1.0.80";
    authors = [ "Erick Tryzelaar <erick.tryzelaar@gmail.com>" "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "1akvzhbnnqhd92lfj7vp43scs1vdml7x27c82l5yh0kz7xf7jaky";
    procMacro = true;
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."serde_derive"."1.0.80"."proc_macro2"}" deps)
      (crates."quote"."${deps."serde_derive"."1.0.80"."quote"}" deps)
      (crates."syn"."${deps."serde_derive"."1.0.80"."syn"}" deps)
    ]);
    features = mkFeatures (features."serde_derive"."1.0.80" or {});
  };
  features_.serde_derive."1.0.80" = deps: f: updateFeatures f ({
    proc_macro2."${deps.serde_derive."1.0.80".proc_macro2}".default = true;
    quote."${deps.serde_derive."1.0.80".quote}".default = true;
    serde_derive."1.0.80".default = (f.serde_derive."1.0.80".default or true);
    syn = fold recursiveUpdate {} [
      { "${deps.serde_derive."1.0.80".syn}"."visit" = true; }
      { "${deps.serde_derive."1.0.80".syn}".default = true; }
    ];
  }) [
    (features_.proc_macro2."${deps."serde_derive"."1.0.80"."proc_macro2"}" deps)
    (features_.quote."${deps."serde_derive"."1.0.80"."quote"}" deps)
    (features_.syn."${deps."serde_derive"."1.0.80"."syn"}" deps)
  ];


# end
# serde_derive-1.0.89

  crates.serde_derive."1.0.89" = deps: { features?(features_.serde_derive."1.0.89" deps {}) }: buildRustCrate {
    crateName = "serde_derive";
    version = "1.0.89";
    description = "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]";
    authors = [ "Erick Tryzelaar <erick.tryzelaar@gmail.com>" "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "0wxbxq9sccrd939pfnrgfzykkwl9gag2yf7vxhg2c2p9kx36d3wm";
    procMacro = true;
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."serde_derive"."1.0.89"."proc_macro2"}" deps)
      (crates."quote"."${deps."serde_derive"."1.0.89"."quote"}" deps)
      (crates."syn"."${deps."serde_derive"."1.0.89"."syn"}" deps)
    ]);
    features = mkFeatures (features."serde_derive"."1.0.89" or {});
  };
  features_.serde_derive."1.0.89" = deps: f: updateFeatures f ({
    proc_macro2."${deps.serde_derive."1.0.89".proc_macro2}".default = true;
    quote."${deps.serde_derive."1.0.89".quote}".default = true;
    serde_derive."1.0.89".default = (f.serde_derive."1.0.89".default or true);
    syn = fold recursiveUpdate {} [
      { "${deps.serde_derive."1.0.89".syn}"."visit" = true; }
      { "${deps.serde_derive."1.0.89".syn}".default = true; }
    ];
  }) [
    (features_.proc_macro2."${deps."serde_derive"."1.0.89"."proc_macro2"}" deps)
    (features_.quote."${deps."serde_derive"."1.0.89"."quote"}" deps)
    (features_.syn."${deps."serde_derive"."1.0.89"."syn"}" deps)
  ];


# end
# serde_json-1.0.32

  crates.serde_json."1.0.32" = deps: { features?(features_.serde_json."1.0.32" deps {}) }: buildRustCrate {
    crateName = "serde_json";
    version = "1.0.32";
    authors = [ "Erick Tryzelaar <erick.tryzelaar@gmail.com>" "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "1dqkvizi02j1bs5c21kw20idf4aa5399g29ndwl6vkmmrqkr1gr0";
    dependencies = mapFeatures features ([
      (crates."itoa"."${deps."serde_json"."1.0.32"."itoa"}" deps)
      (crates."ryu"."${deps."serde_json"."1.0.32"."ryu"}" deps)
      (crates."serde"."${deps."serde_json"."1.0.32"."serde"}" deps)
    ]);
    features = mkFeatures (features."serde_json"."1.0.32" or {});
  };
  features_.serde_json."1.0.32" = deps: f: updateFeatures f (rec {
    itoa."${deps.serde_json."1.0.32".itoa}".default = true;
    ryu."${deps.serde_json."1.0.32".ryu}".default = true;
    serde."${deps.serde_json."1.0.32".serde}".default = true;
    serde_json = fold recursiveUpdate {} [
      { "1.0.32".default = (f.serde_json."1.0.32".default or true); }
      { "1.0.32".indexmap =
        (f.serde_json."1.0.32".indexmap or false) ||
        (f.serde_json."1.0.32".preserve_order or false) ||
        (serde_json."1.0.32"."preserve_order" or false); }
    ];
  }) [
    (features_.itoa."${deps."serde_json"."1.0.32"."itoa"}" deps)
    (features_.ryu."${deps."serde_json"."1.0.32"."ryu"}" deps)
    (features_.serde."${deps."serde_json"."1.0.32"."serde"}" deps)
  ];


# end
# serde_json-1.0.39

  crates.serde_json."1.0.39" = deps: { features?(features_.serde_json."1.0.39" deps {}) }: buildRustCrate {
    crateName = "serde_json";
    version = "1.0.39";
    description = "A JSON serialization file format";
    authors = [ "Erick Tryzelaar <erick.tryzelaar@gmail.com>" "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "07ydv06hn8x0yl0rc94l2wl9r2xz1fqd97n1s6j3bgdc6gw406a8";
    dependencies = mapFeatures features ([
      (crates."itoa"."${deps."serde_json"."1.0.39"."itoa"}" deps)
      (crates."ryu"."${deps."serde_json"."1.0.39"."ryu"}" deps)
      (crates."serde"."${deps."serde_json"."1.0.39"."serde"}" deps)
    ]);
    features = mkFeatures (features."serde_json"."1.0.39" or {});
  };
  features_.serde_json."1.0.39" = deps: f: updateFeatures f (rec {
    itoa."${deps.serde_json."1.0.39".itoa}".default = true;
    ryu."${deps.serde_json."1.0.39".ryu}".default = true;
    serde."${deps.serde_json."1.0.39".serde}".default = true;
    serde_json = fold recursiveUpdate {} [
      { "1.0.39"."indexmap" =
        (f.serde_json."1.0.39"."indexmap" or false) ||
        (f.serde_json."1.0.39".preserve_order or false) ||
        (serde_json."1.0.39"."preserve_order" or false); }
      { "1.0.39".default = (f.serde_json."1.0.39".default or true); }
    ];
  }) [
    (features_.itoa."${deps."serde_json"."1.0.39"."itoa"}" deps)
    (features_.ryu."${deps."serde_json"."1.0.39"."ryu"}" deps)
    (features_.serde."${deps."serde_json"."1.0.39"."serde"}" deps)
  ];


# end
# smallvec-0.6.9

  crates.smallvec."0.6.9" = deps: { features?(features_.smallvec."0.6.9" deps {}) }: buildRustCrate {
    crateName = "smallvec";
    version = "0.6.9";
    description = "'Small vector' optimization: store up to a small number of items on the stack";
    authors = [ "Simon Sapin <simon.sapin@exyr.org>" ];
    sha256 = "0p96l51a2pq5y0vn48nhbm6qslbc6k8h28cxm0pmzkqmj7xynz6w";
    libPath = "lib.rs";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."smallvec"."0.6.9" or {});
  };
  features_.smallvec."0.6.9" = deps: f: updateFeatures f (rec {
    smallvec = fold recursiveUpdate {} [
      { "0.6.9"."std" =
        (f.smallvec."0.6.9"."std" or false) ||
        (f.smallvec."0.6.9".default or false) ||
        (smallvec."0.6.9"."default" or false); }
      { "0.6.9".default = (f.smallvec."0.6.9".default or true); }
    ];
  }) [];


# end
# strsim-0.7.0

  crates.strsim."0.7.0" = deps: { features?(features_.strsim."0.7.0" deps {}) }: buildRustCrate {
    crateName = "strsim";
    version = "0.7.0";
    authors = [ "Danny Guo <dannyguo91@gmail.com>" ];
    sha256 = "0fy0k5f2705z73mb3x9459bpcvrx4ky8jpr4zikcbiwan4bnm0iv";
  };
  features_.strsim."0.7.0" = deps: f: updateFeatures f ({
    strsim."0.7.0".default = (f.strsim."0.7.0".default or true);
  }) [];


# end
# syn-0.15.13

  crates.syn."0.15.13" = deps: { features?(features_.syn."0.15.13" deps {}) }: buildRustCrate {
    crateName = "syn";
    version = "0.15.13";
    authors = [ "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "1zvnppl08f2njpkl3m10h221sdl4vsm7v6vyq63dxk16nn37b1bh";
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."syn"."0.15.13"."proc_macro2"}" deps)
      (crates."unicode_xid"."${deps."syn"."0.15.13"."unicode_xid"}" deps)
    ]
      ++ (if features.syn."0.15.13".quote or false then [ (crates.quote."${deps."syn"."0.15.13".quote}" deps) ] else []));
    features = mkFeatures (features."syn"."0.15.13" or {});
  };
  features_.syn."0.15.13" = deps: f: updateFeatures f (rec {
    proc_macro2 = fold recursiveUpdate {} [
      { "${deps.syn."0.15.13".proc_macro2}"."proc-macro" =
        (f.proc_macro2."${deps.syn."0.15.13".proc_macro2}"."proc-macro" or false) ||
        (syn."0.15.13"."proc-macro" or false) ||
        (f."syn"."0.15.13"."proc-macro" or false); }
      { "${deps.syn."0.15.13".proc_macro2}".default = (f.proc_macro2."${deps.syn."0.15.13".proc_macro2}".default or false); }
    ];
    quote = fold recursiveUpdate {} [
      { "${deps.syn."0.15.13".quote}"."proc-macro" =
        (f.quote."${deps.syn."0.15.13".quote}"."proc-macro" or false) ||
        (syn."0.15.13"."proc-macro" or false) ||
        (f."syn"."0.15.13"."proc-macro" or false); }
      { "${deps.syn."0.15.13".quote}".default = (f.quote."${deps.syn."0.15.13".quote}".default or false); }
    ];
    syn = fold recursiveUpdate {} [
      { "0.15.13".clone-impls =
        (f.syn."0.15.13".clone-impls or false) ||
        (f.syn."0.15.13".default or false) ||
        (syn."0.15.13"."default" or false); }
      { "0.15.13".default = (f.syn."0.15.13".default or true); }
      { "0.15.13".derive =
        (f.syn."0.15.13".derive or false) ||
        (f.syn."0.15.13".default or false) ||
        (syn."0.15.13"."default" or false); }
      { "0.15.13".parsing =
        (f.syn."0.15.13".parsing or false) ||
        (f.syn."0.15.13".default or false) ||
        (syn."0.15.13"."default" or false); }
      { "0.15.13".printing =
        (f.syn."0.15.13".printing or false) ||
        (f.syn."0.15.13".default or false) ||
        (syn."0.15.13"."default" or false); }
      { "0.15.13".proc-macro =
        (f.syn."0.15.13".proc-macro or false) ||
        (f.syn."0.15.13".default or false) ||
        (syn."0.15.13"."default" or false); }
      { "0.15.13".quote =
        (f.syn."0.15.13".quote or false) ||
        (f.syn."0.15.13".printing or false) ||
        (syn."0.15.13"."printing" or false); }
    ];
    unicode_xid."${deps.syn."0.15.13".unicode_xid}".default = true;
  }) [
    (features_.proc_macro2."${deps."syn"."0.15.13"."proc_macro2"}" deps)
    (features_.quote."${deps."syn"."0.15.13"."quote"}" deps)
    (features_.unicode_xid."${deps."syn"."0.15.13"."unicode_xid"}" deps)
  ];


# end
# syn-0.15.29

  crates.syn."0.15.29" = deps: { features?(features_.syn."0.15.29" deps {}) }: buildRustCrate {
    crateName = "syn";
    version = "0.15.29";
    description = "Parser for Rust source code";
    authors = [ "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "0wrd6awgc6f1iwfn2v9fvwyd2yddgxdjv9s106kvwg1ljbw3fajw";
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."syn"."0.15.29"."proc_macro2"}" deps)
      (crates."unicode_xid"."${deps."syn"."0.15.29"."unicode_xid"}" deps)
    ]
      ++ (if features.syn."0.15.29".quote or false then [ (crates.quote."${deps."syn"."0.15.29".quote}" deps) ] else []));
    features = mkFeatures (features."syn"."0.15.29" or {});
  };
  features_.syn."0.15.29" = deps: f: updateFeatures f (rec {
    proc_macro2 = fold recursiveUpdate {} [
      { "${deps.syn."0.15.29".proc_macro2}"."proc-macro" =
        (f.proc_macro2."${deps.syn."0.15.29".proc_macro2}"."proc-macro" or false) ||
        (syn."0.15.29"."proc-macro" or false) ||
        (f."syn"."0.15.29"."proc-macro" or false); }
      { "${deps.syn."0.15.29".proc_macro2}".default = (f.proc_macro2."${deps.syn."0.15.29".proc_macro2}".default or false); }
    ];
    quote = fold recursiveUpdate {} [
      { "${deps.syn."0.15.29".quote}"."proc-macro" =
        (f.quote."${deps.syn."0.15.29".quote}"."proc-macro" or false) ||
        (syn."0.15.29"."proc-macro" or false) ||
        (f."syn"."0.15.29"."proc-macro" or false); }
      { "${deps.syn."0.15.29".quote}".default = (f.quote."${deps.syn."0.15.29".quote}".default or false); }
    ];
    syn = fold recursiveUpdate {} [
      { "0.15.29"."clone-impls" =
        (f.syn."0.15.29"."clone-impls" or false) ||
        (f.syn."0.15.29".default or false) ||
        (syn."0.15.29"."default" or false); }
      { "0.15.29"."derive" =
        (f.syn."0.15.29"."derive" or false) ||
        (f.syn."0.15.29".default or false) ||
        (syn."0.15.29"."default" or false); }
      { "0.15.29"."parsing" =
        (f.syn."0.15.29"."parsing" or false) ||
        (f.syn."0.15.29".default or false) ||
        (syn."0.15.29"."default" or false); }
      { "0.15.29"."printing" =
        (f.syn."0.15.29"."printing" or false) ||
        (f.syn."0.15.29".default or false) ||
        (syn."0.15.29"."default" or false); }
      { "0.15.29"."proc-macro" =
        (f.syn."0.15.29"."proc-macro" or false) ||
        (f.syn."0.15.29".default or false) ||
        (syn."0.15.29"."default" or false); }
      { "0.15.29"."quote" =
        (f.syn."0.15.29"."quote" or false) ||
        (f.syn."0.15.29".printing or false) ||
        (syn."0.15.29"."printing" or false); }
      { "0.15.29".default = (f.syn."0.15.29".default or true); }
    ];
    unicode_xid."${deps.syn."0.15.29".unicode_xid}".default = true;
  }) [
    (features_.proc_macro2."${deps."syn"."0.15.29"."proc_macro2"}" deps)
    (features_.quote."${deps."syn"."0.15.29"."quote"}" deps)
    (features_.unicode_xid."${deps."syn"."0.15.29"."unicode_xid"}" deps)
  ];


# end
# synstructure-0.10.0

  crates.synstructure."0.10.0" = deps: { features?(features_.synstructure."0.10.0" deps {}) }: buildRustCrate {
    crateName = "synstructure";
    version = "0.10.0";
    authors = [ "Nika Layzell <nika@thelayzells.com>" ];
    sha256 = "1alb4hsbm5qf4jy7nmdkqrh3jagqk1xj88w0pmz67f16dvgpf0qf";
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."synstructure"."0.10.0"."proc_macro2"}" deps)
      (crates."quote"."${deps."synstructure"."0.10.0"."quote"}" deps)
      (crates."syn"."${deps."synstructure"."0.10.0"."syn"}" deps)
      (crates."unicode_xid"."${deps."synstructure"."0.10.0"."unicode_xid"}" deps)
    ]);
    features = mkFeatures (features."synstructure"."0.10.0" or {});
  };
  features_.synstructure."0.10.0" = deps: f: updateFeatures f ({
    proc_macro2."${deps.synstructure."0.10.0".proc_macro2}".default = true;
    quote."${deps.synstructure."0.10.0".quote}".default = true;
    syn = fold recursiveUpdate {} [
      { "${deps.synstructure."0.10.0".syn}"."extra-traits" = true; }
      { "${deps.synstructure."0.10.0".syn}"."visit" = true; }
      { "${deps.synstructure."0.10.0".syn}".default = true; }
    ];
    synstructure."0.10.0".default = (f.synstructure."0.10.0".default or true);
    unicode_xid."${deps.synstructure."0.10.0".unicode_xid}".default = true;
  }) [
    (features_.proc_macro2."${deps."synstructure"."0.10.0"."proc_macro2"}" deps)
    (features_.quote."${deps."synstructure"."0.10.0"."quote"}" deps)
    (features_.syn."${deps."synstructure"."0.10.0"."syn"}" deps)
    (features_.unicode_xid."${deps."synstructure"."0.10.0"."unicode_xid"}" deps)
  ];


# end
# synstructure-0.10.1

  crates.synstructure."0.10.1" = deps: { features?(features_.synstructure."0.10.1" deps {}) }: buildRustCrate {
    crateName = "synstructure";
    version = "0.10.1";
    description = "Helper methods and macros for custom derives";
    authors = [ "Nika Layzell <nika@thelayzells.com>" ];
    sha256 = "0mx2vwd0d0f7hanz15nkp0ikkfjsx9rfkph7pynxyfbj45ank4g3";
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."synstructure"."0.10.1"."proc_macro2"}" deps)
      (crates."quote"."${deps."synstructure"."0.10.1"."quote"}" deps)
      (crates."syn"."${deps."synstructure"."0.10.1"."syn"}" deps)
      (crates."unicode_xid"."${deps."synstructure"."0.10.1"."unicode_xid"}" deps)
    ]);
    features = mkFeatures (features."synstructure"."0.10.1" or {});
  };
  features_.synstructure."0.10.1" = deps: f: updateFeatures f ({
    proc_macro2."${deps.synstructure."0.10.1".proc_macro2}".default = true;
    quote."${deps.synstructure."0.10.1".quote}".default = true;
    syn = fold recursiveUpdate {} [
      { "${deps.synstructure."0.10.1".syn}"."extra-traits" = true; }
      { "${deps.synstructure."0.10.1".syn}"."visit" = true; }
      { "${deps.synstructure."0.10.1".syn}".default = true; }
    ];
    synstructure."0.10.1".default = (f.synstructure."0.10.1".default or true);
    unicode_xid."${deps.synstructure."0.10.1".unicode_xid}".default = true;
  }) [
    (features_.proc_macro2."${deps."synstructure"."0.10.1"."proc_macro2"}" deps)
    (features_.quote."${deps."synstructure"."0.10.1"."quote"}" deps)
    (features_.syn."${deps."synstructure"."0.10.1"."syn"}" deps)
    (features_.unicode_xid."${deps."synstructure"."0.10.1"."unicode_xid"}" deps)
  ];


# end
# tempdir-0.3.7

  crates.tempdir."0.3.7" = deps: { features?(features_.tempdir."0.3.7" deps {}) }: buildRustCrate {
    crateName = "tempdir";
    version = "0.3.7";
    authors = [ "The Rust Project Developers" ];
    sha256 = "0y53sxybyljrr7lh0x0ysrsa7p7cljmwv9v80acy3rc6n97g67vy";
    dependencies = mapFeatures features ([
      (crates."rand"."${deps."tempdir"."0.3.7"."rand"}" deps)
      (crates."remove_dir_all"."${deps."tempdir"."0.3.7"."remove_dir_all"}" deps)
    ]);
  };
  features_.tempdir."0.3.7" = deps: f: updateFeatures f ({
    rand."${deps.tempdir."0.3.7".rand}".default = true;
    remove_dir_all."${deps.tempdir."0.3.7".remove_dir_all}".default = true;
    tempdir."0.3.7".default = (f.tempdir."0.3.7".default or true);
  }) [
    (features_.rand."${deps."tempdir"."0.3.7"."rand"}" deps)
    (features_.remove_dir_all."${deps."tempdir"."0.3.7"."remove_dir_all"}" deps)
  ];


# end
# termcolor-1.0.4

  crates.termcolor."1.0.4" = deps: { features?(features_.termcolor."1.0.4" deps {}) }: buildRustCrate {
    crateName = "termcolor";
    version = "1.0.4";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "0xydrjc0bxg08llcbcmkka29szdrfklk4vh6l6mdd67ajifqw1mv";
    dependencies = (if kernel == "windows" then mapFeatures features ([
      (crates."wincolor"."${deps."termcolor"."1.0.4"."wincolor"}" deps)
    ]) else []);
  };
  features_.termcolor."1.0.4" = deps: f: updateFeatures f ({
    termcolor."1.0.4".default = (f.termcolor."1.0.4".default or true);
    wincolor."${deps.termcolor."1.0.4".wincolor}".default = true;
  }) [
    (features_.wincolor."${deps."termcolor"."1.0.4"."wincolor"}" deps)
  ];


# end
# termion-1.5.1

  crates.termion."1.5.1" = deps: { features?(features_.termion."1.5.1" deps {}) }: buildRustCrate {
    crateName = "termion";
    version = "1.5.1";
    authors = [ "ticki <Ticki@users.noreply.github.com>" "gycos <alexandre.bury@gmail.com>" "IGI-111 <igi-111@protonmail.com>" ];
    sha256 = "02gq4vd8iws1f3gjrgrgpajsk2bk43nds5acbbb4s8dvrdvr8nf1";
    dependencies = (if !(kernel == "redox") then mapFeatures features ([
      (crates."libc"."${deps."termion"."1.5.1"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "redox" then mapFeatures features ([
      (crates."redox_syscall"."${deps."termion"."1.5.1"."redox_syscall"}" deps)
      (crates."redox_termios"."${deps."termion"."1.5.1"."redox_termios"}" deps)
    ]) else []);
  };
  features_.termion."1.5.1" = deps: f: updateFeatures f ({
    libc."${deps.termion."1.5.1".libc}".default = true;
    redox_syscall."${deps.termion."1.5.1".redox_syscall}".default = true;
    redox_termios."${deps.termion."1.5.1".redox_termios}".default = true;
    termion."1.5.1".default = (f.termion."1.5.1".default or true);
  }) [
    (features_.libc."${deps."termion"."1.5.1"."libc"}" deps)
    (features_.redox_syscall."${deps."termion"."1.5.1"."redox_syscall"}" deps)
    (features_.redox_termios."${deps."termion"."1.5.1"."redox_termios"}" deps)
  ];


# end
# textwrap-0.10.0

  crates.textwrap."0.10.0" = deps: { features?(features_.textwrap."0.10.0" deps {}) }: buildRustCrate {
    crateName = "textwrap";
    version = "0.10.0";
    authors = [ "Martin Geisler <martin@geisler.net>" ];
    sha256 = "1s8d5cna12smhgj0x2y1xphklyk2an1yzbadnj89p1vy5vnjpsas";
    dependencies = mapFeatures features ([
      (crates."unicode_width"."${deps."textwrap"."0.10.0"."unicode_width"}" deps)
    ]);
  };
  features_.textwrap."0.10.0" = deps: f: updateFeatures f ({
    textwrap."0.10.0".default = (f.textwrap."0.10.0".default or true);
    unicode_width."${deps.textwrap."0.10.0".unicode_width}".default = true;
  }) [
    (features_.unicode_width."${deps."textwrap"."0.10.0"."unicode_width"}" deps)
  ];


# end
# thread_local-0.3.6

  crates.thread_local."0.3.6" = deps: { features?(features_.thread_local."0.3.6" deps {}) }: buildRustCrate {
    crateName = "thread_local";
    version = "0.3.6";
    authors = [ "Amanieu d'Antras <amanieu@gmail.com>" ];
    sha256 = "02rksdwjmz2pw9bmgbb4c0bgkbq5z6nvg510sq1s6y2j1gam0c7i";
    dependencies = mapFeatures features ([
      (crates."lazy_static"."${deps."thread_local"."0.3.6"."lazy_static"}" deps)
    ]);
  };
  features_.thread_local."0.3.6" = deps: f: updateFeatures f ({
    lazy_static."${deps.thread_local."0.3.6".lazy_static}".default = true;
    thread_local."0.3.6".default = (f.thread_local."0.3.6".default or true);
  }) [
    (features_.lazy_static."${deps."thread_local"."0.3.6"."lazy_static"}" deps)
  ];


# end
# toml-0.4.10

  crates.toml."0.4.10" = deps: { features?(features_.toml."0.4.10" deps {}) }: buildRustCrate {
    crateName = "toml";
    version = "0.4.10";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0fs4kxl86w3kmgwcgcv23nk79zagayz1spg281r83w0ywf88d6f1";
    dependencies = mapFeatures features ([
      (crates."serde"."${deps."toml"."0.4.10"."serde"}" deps)
    ]);
  };
  features_.toml."0.4.10" = deps: f: updateFeatures f ({
    serde."${deps.toml."0.4.10".serde}".default = true;
    toml."0.4.10".default = (f.toml."0.4.10".default or true);
  }) [
    (features_.serde."${deps."toml"."0.4.10"."serde"}" deps)
  ];


# end
# toml-0.4.8

  crates.toml."0.4.8" = deps: { features?(features_.toml."0.4.8" deps {}) }: buildRustCrate {
    crateName = "toml";
    version = "0.4.8";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "1xm3chgsvi3qqi7vj8sb5xvnbfpkqyl4fiwh7y2cl6r4brwlmif1";
    dependencies = mapFeatures features ([
      (crates."serde"."${deps."toml"."0.4.8"."serde"}" deps)
    ]);
  };
  features_.toml."0.4.8" = deps: f: updateFeatures f ({
    serde."${deps.toml."0.4.8".serde}".default = true;
    toml."0.4.8".default = (f.toml."0.4.8".default or true);
  }) [
    (features_.serde."${deps."toml"."0.4.8"."serde"}" deps)
  ];


# end
# toml-0.5.0

  crates.toml."0.5.0" = deps: { features?(features_.toml."0.5.0" deps {}) }: buildRustCrate {
    crateName = "toml";
    version = "0.5.0";
    description = "A native Rust encoder and decoder of TOML-formatted files and streams. Provides\nimplementations of the standard Serialize/Deserialize traits for TOML data to\nfacilitate deserializing and serializing Rust structures.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0l2lqzbn5g9l376k01isq1nhb14inkr4c50qbjbdzh5qysz7dyk5";
    dependencies = mapFeatures features ([
      (crates."serde"."${deps."toml"."0.5.0"."serde"}" deps)
    ]);
    features = mkFeatures (features."toml"."0.5.0" or {});
  };
  features_.toml."0.5.0" = deps: f: updateFeatures f (rec {
    serde."${deps.toml."0.5.0".serde}".default = true;
    toml = fold recursiveUpdate {} [
      { "0.5.0"."linked-hash-map" =
        (f.toml."0.5.0"."linked-hash-map" or false) ||
        (f.toml."0.5.0".preserve_order or false) ||
        (toml."0.5.0"."preserve_order" or false); }
      { "0.5.0".default = (f.toml."0.5.0".default or true); }
    ];
  }) [
    (features_.serde."${deps."toml"."0.5.0"."serde"}" deps)
  ];


# end
# toml2nix-0.1.1

  crates.toml2nix."0.1.1" = deps: { features?(features_.toml2nix."0.1.1" deps {}) }: buildRustCrate {
    crateName = "toml2nix";
    version = "0.1.1";
    authors = [ "Pierre-??tienne Meunier <pierre-etienne.meunier@inria.fr>" ];
    sha256 = "167qyylp0s76h7r0n99as3jwry5mrn5q1wxh2sdwh51d5qnnw6b2";
    dependencies = mapFeatures features ([
      (crates."toml"."${deps."toml2nix"."0.1.1"."toml"}" deps)
    ]);
  };
  features_.toml2nix."0.1.1" = deps: f: updateFeatures f ({
    toml."${deps.toml2nix."0.1.1".toml}".default = true;
    toml2nix."0.1.1".default = (f.toml2nix."0.1.1".default or true);
  }) [
    (features_.toml."${deps."toml2nix"."0.1.1"."toml"}" deps)
  ];


# end
# ucd-util-0.1.1

  crates.ucd_util."0.1.1" = deps: { features?(features_.ucd_util."0.1.1" deps {}) }: buildRustCrate {
    crateName = "ucd-util";
    version = "0.1.1";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "02a8h3siipx52b832xc8m8rwasj6nx9jpiwfldw8hp6k205hgkn0";
  };
  features_.ucd_util."0.1.1" = deps: f: updateFeatures f ({
    ucd_util."0.1.1".default = (f.ucd_util."0.1.1".default or true);
  }) [];


# end
# ucd-util-0.1.3

  crates.ucd_util."0.1.3" = deps: { features?(features_.ucd_util."0.1.3" deps {}) }: buildRustCrate {
    crateName = "ucd-util";
    version = "0.1.3";
    description = "A small utility library for working with the Unicode character database.\n";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "1n1qi3jywq5syq90z9qd8qzbn58pcjgv1sx4sdmipm4jf9zanz15";
  };
  features_.ucd_util."0.1.3" = deps: f: updateFeatures f ({
    ucd_util."0.1.3".default = (f.ucd_util."0.1.3".default or true);
  }) [];


# end
# unicode-bidi-0.3.4

  crates.unicode_bidi."0.3.4" = deps: { features?(features_.unicode_bidi."0.3.4" deps {}) }: buildRustCrate {
    crateName = "unicode-bidi";
    version = "0.3.4";
    authors = [ "The Servo Project Developers" ];
    sha256 = "0lcd6jasrf8p9p0q20qyf10c6xhvw40m2c4rr105hbk6zy26nj1q";
    libName = "unicode_bidi";
    dependencies = mapFeatures features ([
      (crates."matches"."${deps."unicode_bidi"."0.3.4"."matches"}" deps)
    ]);
    features = mkFeatures (features."unicode_bidi"."0.3.4" or {});
  };
  features_.unicode_bidi."0.3.4" = deps: f: updateFeatures f (rec {
    matches."${deps.unicode_bidi."0.3.4".matches}".default = true;
    unicode_bidi = fold recursiveUpdate {} [
      { "0.3.4".default = (f.unicode_bidi."0.3.4".default or true); }
      { "0.3.4".flame =
        (f.unicode_bidi."0.3.4".flame or false) ||
        (f.unicode_bidi."0.3.4".flame_it or false) ||
        (unicode_bidi."0.3.4"."flame_it" or false); }
      { "0.3.4".flamer =
        (f.unicode_bidi."0.3.4".flamer or false) ||
        (f.unicode_bidi."0.3.4".flame_it or false) ||
        (unicode_bidi."0.3.4"."flame_it" or false); }
      { "0.3.4".serde =
        (f.unicode_bidi."0.3.4".serde or false) ||
        (f.unicode_bidi."0.3.4".with_serde or false) ||
        (unicode_bidi."0.3.4"."with_serde" or false); }
    ];
  }) [
    (features_.matches."${deps."unicode_bidi"."0.3.4"."matches"}" deps)
  ];


# end
# unicode-normalization-0.1.7

  crates.unicode_normalization."0.1.7" = deps: { features?(features_.unicode_normalization."0.1.7" deps {}) }: buildRustCrate {
    crateName = "unicode-normalization";
    version = "0.1.7";
    authors = [ "kwantam <kwantam@gmail.com>" ];
    sha256 = "1da2hv800pd0wilmn4idwpgv5p510hjxizjcfv6xzb40xcsjd8gs";
  };
  features_.unicode_normalization."0.1.7" = deps: f: updateFeatures f ({
    unicode_normalization."0.1.7".default = (f.unicode_normalization."0.1.7".default or true);
  }) [];


# end
# unicode-normalization-0.1.8

  crates.unicode_normalization."0.1.8" = deps: { features?(features_.unicode_normalization."0.1.8" deps {}) }: buildRustCrate {
    crateName = "unicode-normalization";
    version = "0.1.8";
    description = "This crate provides functions for normalization of\nUnicode strings, including Canonical and Compatible\nDecomposition and Recomposition, as described in\nUnicode Standard Annex #15.\n";
    authors = [ "kwantam <kwantam@gmail.com>" ];
    sha256 = "1pb26i2xd5zz0icabyqahikpca0iwj2jd4145pczc4bb7p641dsz";
    dependencies = mapFeatures features ([
      (crates."smallvec"."${deps."unicode_normalization"."0.1.8"."smallvec"}" deps)
    ]);
  };
  features_.unicode_normalization."0.1.8" = deps: f: updateFeatures f ({
    smallvec."${deps.unicode_normalization."0.1.8".smallvec}".default = true;
    unicode_normalization."0.1.8".default = (f.unicode_normalization."0.1.8".default or true);
  }) [
    (features_.smallvec."${deps."unicode_normalization"."0.1.8"."smallvec"}" deps)
  ];


# end
# unicode-width-0.1.5

  crates.unicode_width."0.1.5" = deps: { features?(features_.unicode_width."0.1.5" deps {}) }: buildRustCrate {
    crateName = "unicode-width";
    version = "0.1.5";
    authors = [ "kwantam <kwantam@gmail.com>" ];
    sha256 = "0886lc2aymwgy0lhavwn6s48ik3c61ykzzd3za6prgnw51j7bi4w";
    features = mkFeatures (features."unicode_width"."0.1.5" or {});
  };
  features_.unicode_width."0.1.5" = deps: f: updateFeatures f ({
    unicode_width."0.1.5".default = (f.unicode_width."0.1.5".default or true);
  }) [];


# end
# unicode-xid-0.1.0

  crates.unicode_xid."0.1.0" = deps: { features?(features_.unicode_xid."0.1.0" deps {}) }: buildRustCrate {
    crateName = "unicode-xid";
    version = "0.1.0";
    authors = [ "erick.tryzelaar <erick.tryzelaar@gmail.com>" "kwantam <kwantam@gmail.com>" ];
    sha256 = "05wdmwlfzxhq3nhsxn6wx4q8dhxzzfb9szsz6wiw092m1rjj01zj";
    features = mkFeatures (features."unicode_xid"."0.1.0" or {});
  };
  features_.unicode_xid."0.1.0" = deps: f: updateFeatures f ({
    unicode_xid."0.1.0".default = (f.unicode_xid."0.1.0".default or true);
  }) [];


# end
# url-1.7.2

  crates.url."1.7.2" = deps: { features?(features_.url."1.7.2" deps {}) }: buildRustCrate {
    crateName = "url";
    version = "1.7.2";
    authors = [ "The rust-url developers" ];
    sha256 = "0qzrjzd9r1niv7037x4cgnv98fs1vj0k18lpxx890ipc47x5gc09";
    dependencies = mapFeatures features ([
      (crates."idna"."${deps."url"."1.7.2"."idna"}" deps)
      (crates."matches"."${deps."url"."1.7.2"."matches"}" deps)
      (crates."percent_encoding"."${deps."url"."1.7.2"."percent_encoding"}" deps)
    ]);
    features = mkFeatures (features."url"."1.7.2" or {});
  };
  features_.url."1.7.2" = deps: f: updateFeatures f (rec {
    idna."${deps.url."1.7.2".idna}".default = true;
    matches."${deps.url."1.7.2".matches}".default = true;
    percent_encoding."${deps.url."1.7.2".percent_encoding}".default = true;
    url = fold recursiveUpdate {} [
      { "1.7.2".default = (f.url."1.7.2".default or true); }
      { "1.7.2".encoding =
        (f.url."1.7.2".encoding or false) ||
        (f.url."1.7.2".query_encoding or false) ||
        (url."1.7.2"."query_encoding" or false); }
      { "1.7.2".heapsize =
        (f.url."1.7.2".heapsize or false) ||
        (f.url."1.7.2".heap_size or false) ||
        (url."1.7.2"."heap_size" or false); }
    ];
  }) [
    (features_.idna."${deps."url"."1.7.2"."idna"}" deps)
    (features_.matches."${deps."url"."1.7.2"."matches"}" deps)
    (features_.percent_encoding."${deps."url"."1.7.2"."percent_encoding"}" deps)
  ];


# end
# utf8-ranges-1.0.1

  crates.utf8_ranges."1.0.1" = deps: { features?(features_.utf8_ranges."1.0.1" deps {}) }: buildRustCrate {
    crateName = "utf8-ranges";
    version = "1.0.1";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "1s56ihd2c8ba6191078wivvv59247szaiszrh8x2rxqfsxlfrnpp";
  };
  features_.utf8_ranges."1.0.1" = deps: f: updateFeatures f ({
    utf8_ranges."1.0.1".default = (f.utf8_ranges."1.0.1".default or true);
  }) [];


# end
# utf8-ranges-1.0.2

  crates.utf8_ranges."1.0.2" = deps: { features?(features_.utf8_ranges."1.0.2" deps {}) }: buildRustCrate {
    crateName = "utf8-ranges";
    version = "1.0.2";
    description = "Convert ranges of Unicode codepoints to UTF-8 byte ranges.";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "1my02laqsgnd8ib4dvjgd4rilprqjad6pb9jj9vi67csi5qs2281";
  };
  features_.utf8_ranges."1.0.2" = deps: f: updateFeatures f ({
    utf8_ranges."1.0.2".default = (f.utf8_ranges."1.0.2".default or true);
  }) [];


# end
# vec_map-0.8.1

  crates.vec_map."0.8.1" = deps: { features?(features_.vec_map."0.8.1" deps {}) }: buildRustCrate {
    crateName = "vec_map";
    version = "0.8.1";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" "Jorge Aparicio <japaricious@gmail.com>" "Alexis Beingessner <a.beingessner@gmail.com>" "Brian Anderson <>" "tbu- <>" "Manish Goregaokar <>" "Aaron Turon <aturon@mozilla.com>" "Adolfo Ochagav??a <>" "Niko Matsakis <>" "Steven Fackler <>" "Chase Southwood <csouth3@illinois.edu>" "Eduard Burtescu <>" "Florian Wilkens <>" "F??lix Raimundo <>" "Tibor Benke <>" "Markus Siemens <markus@m-siemens.de>" "Josh Branchaud <jbranchaud@gmail.com>" "Huon Wilson <dbau.pp@gmail.com>" "Corey Farwell <coref@rwell.org>" "Aaron Liblong <>" "Nick Cameron <nrc@ncameron.org>" "Patrick Walton <pcwalton@mimiga.net>" "Felix S Klock II <>" "Andrew Paseltiner <apaseltiner@gmail.com>" "Sean McArthur <sean.monstar@gmail.com>" "Vadim Petrochenkov <>" ];
    sha256 = "1jj2nrg8h3l53d43rwkpkikq5a5x15ms4rf1rw92hp5lrqhi8mpi";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."vec_map"."0.8.1" or {});
  };
  features_.vec_map."0.8.1" = deps: f: updateFeatures f (rec {
    vec_map = fold recursiveUpdate {} [
      { "0.8.1".default = (f.vec_map."0.8.1".default or true); }
      { "0.8.1".serde =
        (f.vec_map."0.8.1".serde or false) ||
        (f.vec_map."0.8.1".eders or false) ||
        (vec_map."0.8.1"."eders" or false); }
    ];
  }) [];


# end
# version_check-0.1.5

  crates.version_check."0.1.5" = deps: { features?(features_.version_check."0.1.5" deps {}) }: buildRustCrate {
    crateName = "version_check";
    version = "0.1.5";
    authors = [ "Sergio Benitez <sb@sergio.bz>" ];
    sha256 = "1yrx9xblmwbafw2firxyqbj8f771kkzfd24n3q7xgwiqyhi0y8qd";
  };
  features_.version_check."0.1.5" = deps: f: updateFeatures f ({
    version_check."0.1.5".default = (f.version_check."0.1.5".default or true);
  }) [];


# end
# winapi-0.3.6

  crates.winapi."0.3.6" = deps: { features?(features_.winapi."0.3.6" deps {}) }: buildRustCrate {
    crateName = "winapi";
    version = "0.3.6";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "1d9jfp4cjd82sr1q4dgdlrkvm33zhhav9d7ihr0nivqbncr059m4";
    build = "build.rs";
    dependencies = (if kernel == "i686-pc-windows-gnu" then mapFeatures features ([
      (crates."winapi_i686_pc_windows_gnu"."${deps."winapi"."0.3.6"."winapi_i686_pc_windows_gnu"}" deps)
    ]) else [])
      ++ (if kernel == "x86_64-pc-windows-gnu" then mapFeatures features ([
      (crates."winapi_x86_64_pc_windows_gnu"."${deps."winapi"."0.3.6"."winapi_x86_64_pc_windows_gnu"}" deps)
    ]) else []);
    features = mkFeatures (features."winapi"."0.3.6" or {});
  };
  features_.winapi."0.3.6" = deps: f: updateFeatures f ({
    winapi."0.3.6".default = (f.winapi."0.3.6".default or true);
    winapi_i686_pc_windows_gnu."${deps.winapi."0.3.6".winapi_i686_pc_windows_gnu}".default = true;
    winapi_x86_64_pc_windows_gnu."${deps.winapi."0.3.6".winapi_x86_64_pc_windows_gnu}".default = true;
  }) [
    (features_.winapi_i686_pc_windows_gnu."${deps."winapi"."0.3.6"."winapi_i686_pc_windows_gnu"}" deps)
    (features_.winapi_x86_64_pc_windows_gnu."${deps."winapi"."0.3.6"."winapi_x86_64_pc_windows_gnu"}" deps)
  ];


# end
# winapi-i686-pc-windows-gnu-0.4.0

  crates.winapi_i686_pc_windows_gnu."0.4.0" = deps: { features?(features_.winapi_i686_pc_windows_gnu."0.4.0" deps {}) }: buildRustCrate {
    crateName = "winapi-i686-pc-windows-gnu";
    version = "0.4.0";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "05ihkij18r4gamjpxj4gra24514can762imjzlmak5wlzidplzrp";
    build = "build.rs";
  };
  features_.winapi_i686_pc_windows_gnu."0.4.0" = deps: f: updateFeatures f ({
    winapi_i686_pc_windows_gnu."0.4.0".default = (f.winapi_i686_pc_windows_gnu."0.4.0".default or true);
  }) [];


# end
# winapi-util-0.1.1

  crates.winapi_util."0.1.1" = deps: { features?(features_.winapi_util."0.1.1" deps {}) }: buildRustCrate {
    crateName = "winapi-util";
    version = "0.1.1";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "10madanla73aagbklx6y73r2g2vwq9w8a0qcghbbbpn9vfr6a95f";
    dependencies = (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."winapi_util"."0.1.1"."winapi"}" deps)
    ]) else []);
  };
  features_.winapi_util."0.1.1" = deps: f: updateFeatures f ({
    winapi = fold recursiveUpdate {} [
      { "${deps.winapi_util."0.1.1".winapi}"."consoleapi" = true; }
      { "${deps.winapi_util."0.1.1".winapi}"."errhandlingapi" = true; }
      { "${deps.winapi_util."0.1.1".winapi}"."fileapi" = true; }
      { "${deps.winapi_util."0.1.1".winapi}"."minwindef" = true; }
      { "${deps.winapi_util."0.1.1".winapi}"."processenv" = true; }
      { "${deps.winapi_util."0.1.1".winapi}"."std" = true; }
      { "${deps.winapi_util."0.1.1".winapi}"."winbase" = true; }
      { "${deps.winapi_util."0.1.1".winapi}"."wincon" = true; }
      { "${deps.winapi_util."0.1.1".winapi}"."winerror" = true; }
      { "${deps.winapi_util."0.1.1".winapi}".default = true; }
    ];
    winapi_util."0.1.1".default = (f.winapi_util."0.1.1".default or true);
  }) [
    (features_.winapi."${deps."winapi_util"."0.1.1"."winapi"}" deps)
  ];


# end
# winapi-util-0.1.2

  crates.winapi_util."0.1.2" = deps: { features?(features_.winapi_util."0.1.2" deps {}) }: buildRustCrate {
    crateName = "winapi-util";
    version = "0.1.2";
    description = "A dumping ground for high level safe wrappers over winapi.";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "07jj7rg7nndd7bqhjin1xphbv8kb5clvhzpqpxkvm3wl84r3mj1h";
    dependencies = (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."winapi_util"."0.1.2"."winapi"}" deps)
    ]) else []);
  };
  features_.winapi_util."0.1.2" = deps: f: updateFeatures f ({
    winapi = fold recursiveUpdate {} [
      { "${deps.winapi_util."0.1.2".winapi}"."consoleapi" = true; }
      { "${deps.winapi_util."0.1.2".winapi}"."errhandlingapi" = true; }
      { "${deps.winapi_util."0.1.2".winapi}"."fileapi" = true; }
      { "${deps.winapi_util."0.1.2".winapi}"."minwindef" = true; }
      { "${deps.winapi_util."0.1.2".winapi}"."processenv" = true; }
      { "${deps.winapi_util."0.1.2".winapi}"."std" = true; }
      { "${deps.winapi_util."0.1.2".winapi}"."winbase" = true; }
      { "${deps.winapi_util."0.1.2".winapi}"."wincon" = true; }
      { "${deps.winapi_util."0.1.2".winapi}"."winerror" = true; }
      { "${deps.winapi_util."0.1.2".winapi}"."winnt" = true; }
      { "${deps.winapi_util."0.1.2".winapi}".default = true; }
    ];
    winapi_util."0.1.2".default = (f.winapi_util."0.1.2".default or true);
  }) [
    (features_.winapi."${deps."winapi_util"."0.1.2"."winapi"}" deps)
  ];


# end
# winapi-x86_64-pc-windows-gnu-0.4.0

  crates.winapi_x86_64_pc_windows_gnu."0.4.0" = deps: { features?(features_.winapi_x86_64_pc_windows_gnu."0.4.0" deps {}) }: buildRustCrate {
    crateName = "winapi-x86_64-pc-windows-gnu";
    version = "0.4.0";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "0n1ylmlsb8yg1v583i4xy0qmqg42275flvbc51hdqjjfjcl9vlbj";
    build = "build.rs";
  };
  features_.winapi_x86_64_pc_windows_gnu."0.4.0" = deps: f: updateFeatures f ({
    winapi_x86_64_pc_windows_gnu."0.4.0".default = (f.winapi_x86_64_pc_windows_gnu."0.4.0".default or true);
  }) [];


# end
# wincolor-1.0.1

  crates.wincolor."1.0.1" = deps: { features?(features_.wincolor."1.0.1" deps {}) }: buildRustCrate {
    crateName = "wincolor";
    version = "1.0.1";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "0gr7v4krmjba7yq16071rfacz42qbapas7mxk5nphjwb042a8gvz";
    dependencies = mapFeatures features ([
      (crates."winapi"."${deps."wincolor"."1.0.1"."winapi"}" deps)
      (crates."winapi_util"."${deps."wincolor"."1.0.1"."winapi_util"}" deps)
    ]);
  };
  features_.wincolor."1.0.1" = deps: f: updateFeatures f ({
    winapi = fold recursiveUpdate {} [
      { "${deps.wincolor."1.0.1".winapi}"."minwindef" = true; }
      { "${deps.wincolor."1.0.1".winapi}"."wincon" = true; }
      { "${deps.wincolor."1.0.1".winapi}".default = true; }
    ];
    winapi_util."${deps.wincolor."1.0.1".winapi_util}".default = true;
    wincolor."1.0.1".default = (f.wincolor."1.0.1".default or true);
  }) [
    (features_.winapi."${deps."wincolor"."1.0.1"."winapi"}" deps)
    (features_.winapi_util."${deps."wincolor"."1.0.1"."winapi_util"}" deps)
  ];


# end
# aho-corasick-0.7.3

  crates.aho_corasick."0.7.3" = deps: { features?(features_.aho_corasick."0.7.3" deps {}) }: buildRustCrate {
    crateName = "aho-corasick";
    version = "0.7.3";
    description = "Fast multiple substring searching.";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "0dn42fbdms4brigqphxrvzbjd1s4knyjlzky30kgvpnrcl4sqqdv";
    libName = "aho_corasick";
    dependencies = mapFeatures features ([
      (crates."memchr"."${deps."aho_corasick"."0.7.3"."memchr"}" deps)
    ]);
    features = mkFeatures (features."aho_corasick"."0.7.3" or {});
  };
  features_.aho_corasick."0.7.3" = deps: f: updateFeatures f (rec {
    aho_corasick = fold recursiveUpdate {} [
      { "0.7.3"."std" =
        (f.aho_corasick."0.7.3"."std" or false) ||
        (f.aho_corasick."0.7.3".default or false) ||
        (aho_corasick."0.7.3"."default" or false); }
      { "0.7.3".default = (f.aho_corasick."0.7.3".default or true); }
    ];
    memchr = fold recursiveUpdate {} [
      { "${deps.aho_corasick."0.7.3".memchr}"."use_std" =
        (f.memchr."${deps.aho_corasick."0.7.3".memchr}"."use_std" or false) ||
        (aho_corasick."0.7.3"."std" or false) ||
        (f."aho_corasick"."0.7.3"."std" or false); }
      { "${deps.aho_corasick."0.7.3".memchr}".default = (f.memchr."${deps.aho_corasick."0.7.3".memchr}".default or false); }
    ];
  }) [
    (features_.memchr."${deps."aho_corasick"."0.7.3"."memchr"}" deps)
  ];


# end
# backtrace-0.3.15

  crates.backtrace."0.3.15" = deps: { features?(features_.backtrace."0.3.15" deps {}) }: buildRustCrate {
    crateName = "backtrace";
    version = "0.3.15";
    description = "A library to acquire a stack trace (backtrace) at runtime in a Rust program.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" "The Rust Project Developers" ];
    sha256 = "0qgbc07aq9kfixv29s60xx666lmdpgmf27a78fwjlhnfzhqvkn0p";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."backtrace"."0.3.15"."cfg_if"}" deps)
      (crates."rustc_demangle"."${deps."backtrace"."0.3.15"."rustc_demangle"}" deps)
    ])
      ++ (if (kernel == "linux" || kernel == "darwin") && !(kernel == "fuchsia") && !(kernel == "emscripten") && !(kernel == "darwin") && !(kernel == "ios") then mapFeatures features ([
    ]
      ++ (if features.backtrace."0.3.15".backtrace-sys or false then [ (crates.backtrace_sys."${deps."backtrace"."0.3.15".backtrace_sys}" deps) ] else [])) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") || abi == "sgx" then mapFeatures features ([
      (crates."libc"."${deps."backtrace"."0.3.15"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."backtrace"."0.3.15"."winapi"}" deps)
    ]) else []);

    buildDependencies = mapFeatures features ([
      (crates."autocfg"."${deps."backtrace"."0.3.15"."autocfg"}" deps)
    ]);
    features = mkFeatures (features."backtrace"."0.3.15" or {});
  };
  features_.backtrace."0.3.15" = deps: f: updateFeatures f (rec {
    autocfg."${deps.backtrace."0.3.15".autocfg}".default = true;
    backtrace = fold recursiveUpdate {} [
      { "0.3.15"."addr2line" =
        (f.backtrace."0.3.15"."addr2line" or false) ||
        (f.backtrace."0.3.15".gimli-symbolize or false) ||
        (backtrace."0.3.15"."gimli-symbolize" or false); }
      { "0.3.15"."backtrace-sys" =
        (f.backtrace."0.3.15"."backtrace-sys" or false) ||
        (f.backtrace."0.3.15".libbacktrace or false) ||
        (backtrace."0.3.15"."libbacktrace" or false); }
      { "0.3.15"."coresymbolication" =
        (f.backtrace."0.3.15"."coresymbolication" or false) ||
        (f.backtrace."0.3.15".default or false) ||
        (backtrace."0.3.15"."default" or false); }
      { "0.3.15"."dbghelp" =
        (f.backtrace."0.3.15"."dbghelp" or false) ||
        (f.backtrace."0.3.15".default or false) ||
        (backtrace."0.3.15"."default" or false); }
      { "0.3.15"."dladdr" =
        (f.backtrace."0.3.15"."dladdr" or false) ||
        (f.backtrace."0.3.15".default or false) ||
        (backtrace."0.3.15"."default" or false); }
      { "0.3.15"."findshlibs" =
        (f.backtrace."0.3.15"."findshlibs" or false) ||
        (f.backtrace."0.3.15".gimli-symbolize or false) ||
        (backtrace."0.3.15"."gimli-symbolize" or false); }
      { "0.3.15"."gimli" =
        (f.backtrace."0.3.15"."gimli" or false) ||
        (f.backtrace."0.3.15".gimli-symbolize or false) ||
        (backtrace."0.3.15"."gimli-symbolize" or false); }
      { "0.3.15"."libbacktrace" =
        (f.backtrace."0.3.15"."libbacktrace" or false) ||
        (f.backtrace."0.3.15".default or false) ||
        (backtrace."0.3.15"."default" or false); }
      { "0.3.15"."libunwind" =
        (f.backtrace."0.3.15"."libunwind" or false) ||
        (f.backtrace."0.3.15".default or false) ||
        (backtrace."0.3.15"."default" or false); }
      { "0.3.15"."memmap" =
        (f.backtrace."0.3.15"."memmap" or false) ||
        (f.backtrace."0.3.15".gimli-symbolize or false) ||
        (backtrace."0.3.15"."gimli-symbolize" or false); }
      { "0.3.15"."object" =
        (f.backtrace."0.3.15"."object" or false) ||
        (f.backtrace."0.3.15".gimli-symbolize or false) ||
        (backtrace."0.3.15"."gimli-symbolize" or false); }
      { "0.3.15"."rustc-serialize" =
        (f.backtrace."0.3.15"."rustc-serialize" or false) ||
        (f.backtrace."0.3.15".serialize-rustc or false) ||
        (backtrace."0.3.15"."serialize-rustc" or false); }
      { "0.3.15"."serde" =
        (f.backtrace."0.3.15"."serde" or false) ||
        (f.backtrace."0.3.15".serialize-serde or false) ||
        (backtrace."0.3.15"."serialize-serde" or false); }
      { "0.3.15"."serde_derive" =
        (f.backtrace."0.3.15"."serde_derive" or false) ||
        (f.backtrace."0.3.15".serialize-serde or false) ||
        (backtrace."0.3.15"."serialize-serde" or false); }
      { "0.3.15"."std" =
        (f.backtrace."0.3.15"."std" or false) ||
        (f.backtrace."0.3.15".default or false) ||
        (backtrace."0.3.15"."default" or false) ||
        (f.backtrace."0.3.15".libbacktrace or false) ||
        (backtrace."0.3.15"."libbacktrace" or false); }
      { "0.3.15".default = (f.backtrace."0.3.15".default or true); }
    ];
    backtrace_sys."${deps.backtrace."0.3.15".backtrace_sys}".default = true;
    cfg_if."${deps.backtrace."0.3.15".cfg_if}".default = true;
    libc."${deps.backtrace."0.3.15".libc}".default = (f.libc."${deps.backtrace."0.3.15".libc}".default or false);
    rustc_demangle."${deps.backtrace."0.3.15".rustc_demangle}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.backtrace."0.3.15".winapi}"."dbghelp" = true; }
      { "${deps.backtrace."0.3.15".winapi}"."minwindef" = true; }
      { "${deps.backtrace."0.3.15".winapi}"."processthreadsapi" = true; }
      { "${deps.backtrace."0.3.15".winapi}"."winnt" = true; }
      { "${deps.backtrace."0.3.15".winapi}".default = true; }
    ];
  }) [
    (features_.cfg_if."${deps."backtrace"."0.3.15"."cfg_if"}" deps)
    (features_.rustc_demangle."${deps."backtrace"."0.3.15"."rustc_demangle"}" deps)
    (features_.autocfg."${deps."backtrace"."0.3.15"."autocfg"}" deps)
    (features_.backtrace_sys."${deps."backtrace"."0.3.15"."backtrace_sys"}" deps)
    (features_.libc."${deps."backtrace"."0.3.15"."libc"}" deps)
    (features_.winapi."${deps."backtrace"."0.3.15"."winapi"}" deps)
  ];


# end
# bstr-0.1.2

  crates.bstr."0.1.2" = deps: { features?(features_.bstr."0.1.2" deps {}) }: buildRustCrate {
    crateName = "bstr";
    version = "0.1.2";
    description = "A string type that is not required to be valid UTF-8.";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "1m30sssr8qghgf5fg17vvlrcr5mbbnv8fixzzfvzk3nan4bxyckf";
    dependencies = mapFeatures features ([
      (crates."memchr"."${deps."bstr"."0.1.2"."memchr"}" deps)
    ]);
    features = mkFeatures (features."bstr"."0.1.2" or {});
  };
  features_.bstr."0.1.2" = deps: f: updateFeatures f (rec {
    bstr = fold recursiveUpdate {} [
      { "0.1.2"."lazy_static" =
        (f.bstr."0.1.2"."lazy_static" or false) ||
        (f.bstr."0.1.2".unicode or false) ||
        (bstr."0.1.2"."unicode" or false); }
      { "0.1.2"."regex-automata" =
        (f.bstr."0.1.2"."regex-automata" or false) ||
        (f.bstr."0.1.2".unicode or false) ||
        (bstr."0.1.2"."unicode" or false); }
      { "0.1.2"."serde" =
        (f.bstr."0.1.2"."serde" or false) ||
        (f.bstr."0.1.2".serde1-nostd or false) ||
        (bstr."0.1.2"."serde1-nostd" or false); }
      { "0.1.2"."serde1-nostd" =
        (f.bstr."0.1.2"."serde1-nostd" or false) ||
        (f.bstr."0.1.2".serde1 or false) ||
        (bstr."0.1.2"."serde1" or false); }
      { "0.1.2"."std" =
        (f.bstr."0.1.2"."std" or false) ||
        (f.bstr."0.1.2".default or false) ||
        (bstr."0.1.2"."default" or false) ||
        (f.bstr."0.1.2".serde1 or false) ||
        (bstr."0.1.2"."serde1" or false); }
      { "0.1.2"."unicode" =
        (f.bstr."0.1.2"."unicode" or false) ||
        (f.bstr."0.1.2".default or false) ||
        (bstr."0.1.2"."default" or false); }
      { "0.1.2".default = (f.bstr."0.1.2".default or true); }
    ];
    memchr = fold recursiveUpdate {} [
      { "${deps.bstr."0.1.2".memchr}"."use_std" =
        (f.memchr."${deps.bstr."0.1.2".memchr}"."use_std" or false) ||
        (bstr."0.1.2"."std" or false) ||
        (f."bstr"."0.1.2"."std" or false); }
      { "${deps.bstr."0.1.2".memchr}".default = (f.memchr."${deps.bstr."0.1.2".memchr}".default or false); }
    ];
  }) [
    (features_.memchr."${deps."bstr"."0.1.2"."memchr"}" deps)
  ];


# end
# build_const-0.2.1

  crates.build_const."0.2.1" = deps: { features?(features_.build_const."0.2.1" deps {}) }: buildRustCrate {
    crateName = "build_const";
    version = "0.2.1";
    description = "library for creating importable constants from build.rs or a script";
    authors = [ "Garrett Berg <vitiral@gmail.com>" ];
    sha256 = "15249xzi3qlm72p4glxgavwyq70fx2sp4df6ii0sdlrixrrp77pl";
    features = mkFeatures (features."build_const"."0.2.1" or {});
  };
  features_.build_const."0.2.1" = deps: f: updateFeatures f (rec {
    build_const = fold recursiveUpdate {} [
      { "0.2.1"."std" =
        (f.build_const."0.2.1"."std" or false) ||
        (f.build_const."0.2.1".default or false) ||
        (build_const."0.2.1"."default" or false); }
      { "0.2.1".default = (f.build_const."0.2.1".default or true); }
    ];
  }) [];


# end
# byteorder-1.3.1

  crates.byteorder."1.3.1" = deps: { features?(features_.byteorder."1.3.1" deps {}) }: buildRustCrate {
    crateName = "byteorder";
    version = "1.3.1";
    description = "Library for reading/writing numbers in big-endian and little-endian.";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "1dd46l7fvmxfq90kh6ip1ghsxzzcdybac8f0mh2jivsdv9vy8k4w";
    build = "build.rs";
    features = mkFeatures (features."byteorder"."1.3.1" or {});
  };
  features_.byteorder."1.3.1" = deps: f: updateFeatures f (rec {
    byteorder = fold recursiveUpdate {} [
      { "1.3.1"."std" =
        (f.byteorder."1.3.1"."std" or false) ||
        (f.byteorder."1.3.1".default or false) ||
        (byteorder."1.3.1"."default" or false); }
      { "1.3.1".default = (f.byteorder."1.3.1".default or true); }
    ];
  }) [];


# end
# bytes-0.4.12

  crates.bytes."0.4.12" = deps: { features?(features_.bytes."0.4.12" deps {}) }: buildRustCrate {
    crateName = "bytes";
    version = "0.4.12";
    description = "Types and traits for working with bytes";
    authors = [ "Carl Lerche <me@carllerche.com>" ];
    sha256 = "0cw577vll9qp0h3l1sy24anr5mcnd5j26q9q7nw4f0mddssvfphf";
    dependencies = mapFeatures features ([
      (crates."byteorder"."${deps."bytes"."0.4.12"."byteorder"}" deps)
      (crates."iovec"."${deps."bytes"."0.4.12"."iovec"}" deps)
    ]);
    features = mkFeatures (features."bytes"."0.4.12" or {});
  };
  features_.bytes."0.4.12" = deps: f: updateFeatures f (rec {
    byteorder = fold recursiveUpdate {} [
      { "${deps.bytes."0.4.12".byteorder}"."i128" =
        (f.byteorder."${deps.bytes."0.4.12".byteorder}"."i128" or false) ||
        (bytes."0.4.12"."i128" or false) ||
        (f."bytes"."0.4.12"."i128" or false); }
      { "${deps.bytes."0.4.12".byteorder}".default = true; }
    ];
    bytes."0.4.12".default = (f.bytes."0.4.12".default or true);
    iovec."${deps.bytes."0.4.12".iovec}".default = true;
  }) [
    (features_.byteorder."${deps."bytes"."0.4.12"."byteorder"}" deps)
    (features_.iovec."${deps."bytes"."0.4.12"."iovec"}" deps)
  ];


# end
# bytesize-1.0.0

  crates.bytesize."1.0.0" = deps: { features?(features_.bytesize."1.0.0" deps {}) }: buildRustCrate {
    crateName = "bytesize";
    version = "1.0.0";
    description = "an utility for human-readable bytes representations";
    authors = [ "Hyunsik Choi <hyunsik.choi@gmail.com>" ];
    sha256 = "04j5hibh1sskjbifrm5d10vmd1fycfgm10cdfa9hpyir7lbkhbg9";
    dependencies = mapFeatures features ([
]);
  };
  features_.bytesize."1.0.0" = deps: f: updateFeatures f ({
    bytesize."1.0.0".default = (f.bytesize."1.0.0".default or true);
  }) [];


# end
# cargo-0.35.0

  crates.cargo."0.35.0" = deps: { features?(features_.cargo."0.35.0" deps {}) }: buildRustCrate {
    crateName = "cargo";
    version = "0.35.0";
    description = "Cargo, a package manager for Rust.\n";
    authors = [ "Yehuda Katz <wycats@gmail.com>" "Carl Lerche <me@carllerche.com>" "Alex Crichton <alex@alexcrichton.com>" ];
    edition = "2018";
    sha256 = "17nqb1cr70igaaahk1lr859jaa57p05i1q4smqhqpq1jswwpdsnn";
    libPath = "src/cargo/lib.rs";
    crateBin =
      [{  name = "cargo"; }];
    dependencies = mapFeatures features ([
      (crates."atty"."${deps."cargo"."0.35.0"."atty"}" deps)
      (crates."byteorder"."${deps."cargo"."0.35.0"."byteorder"}" deps)
      (crates."bytesize"."${deps."cargo"."0.35.0"."bytesize"}" deps)
      (crates."clap"."${deps."cargo"."0.35.0"."clap"}" deps)
      (crates."crates_io"."${deps."cargo"."0.35.0"."crates_io"}" deps)
      (crates."crossbeam_utils"."${deps."cargo"."0.35.0"."crossbeam_utils"}" deps)
      (crates."crypto_hash"."${deps."cargo"."0.35.0"."crypto_hash"}" deps)
      (crates."curl"."${deps."cargo"."0.35.0"."curl"}" deps)
      (crates."curl_sys"."${deps."cargo"."0.35.0"."curl_sys"}" deps)
      (crates."env_logger"."${deps."cargo"."0.35.0"."env_logger"}" deps)
      (crates."failure"."${deps."cargo"."0.35.0"."failure"}" deps)
      (crates."filetime"."${deps."cargo"."0.35.0"."filetime"}" deps)
      (crates."flate2"."${deps."cargo"."0.35.0"."flate2"}" deps)
      (crates."fs2"."${deps."cargo"."0.35.0"."fs2"}" deps)
      (crates."git2"."${deps."cargo"."0.35.0"."git2"}" deps)
      (crates."git2_curl"."${deps."cargo"."0.35.0"."git2_curl"}" deps)
      (crates."glob"."${deps."cargo"."0.35.0"."glob"}" deps)
      (crates."hex"."${deps."cargo"."0.35.0"."hex"}" deps)
      (crates."home"."${deps."cargo"."0.35.0"."home"}" deps)
      (crates."ignore"."${deps."cargo"."0.35.0"."ignore"}" deps)
      (crates."im_rc"."${deps."cargo"."0.35.0"."im_rc"}" deps)
      (crates."jobserver"."${deps."cargo"."0.35.0"."jobserver"}" deps)
      (crates."lazy_static"."${deps."cargo"."0.35.0"."lazy_static"}" deps)
      (crates."lazycell"."${deps."cargo"."0.35.0"."lazycell"}" deps)
      (crates."libc"."${deps."cargo"."0.35.0"."libc"}" deps)
      (crates."libgit2_sys"."${deps."cargo"."0.35.0"."libgit2_sys"}" deps)
      (crates."log"."${deps."cargo"."0.35.0"."log"}" deps)
      (crates."num_cpus"."${deps."cargo"."0.35.0"."num_cpus"}" deps)
      (crates."opener"."${deps."cargo"."0.35.0"."opener"}" deps)
      (crates."rustc_workspace_hack"."${deps."cargo"."0.35.0"."rustc_workspace_hack"}" deps)
      (crates."rustfix"."${deps."cargo"."0.35.0"."rustfix"}" deps)
      (crates."same_file"."${deps."cargo"."0.35.0"."same_file"}" deps)
      (crates."semver"."${deps."cargo"."0.35.0"."semver"}" deps)
      (crates."serde"."${deps."cargo"."0.35.0"."serde"}" deps)
      (crates."serde_ignored"."${deps."cargo"."0.35.0"."serde_ignored"}" deps)
      (crates."serde_json"."${deps."cargo"."0.35.0"."serde_json"}" deps)
      (crates."shell_escape"."${deps."cargo"."0.35.0"."shell_escape"}" deps)
      (crates."tar"."${deps."cargo"."0.35.0"."tar"}" deps)
      (crates."tempfile"."${deps."cargo"."0.35.0"."tempfile"}" deps)
      (crates."termcolor"."${deps."cargo"."0.35.0"."termcolor"}" deps)
      (crates."toml"."${deps."cargo"."0.35.0"."toml"}" deps)
      (crates."unicode_width"."${deps."cargo"."0.35.0"."unicode_width"}" deps)
      (crates."url"."${deps."cargo"."0.35.0"."url"}" deps)
      (crates."url_serde"."${deps."cargo"."0.35.0"."url_serde"}" deps)
    ])
      ++ (if kernel == "darwin" then mapFeatures features ([
      (crates."core_foundation"."${deps."cargo"."0.35.0"."core_foundation"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."fwdansi"."${deps."cargo"."0.35.0"."fwdansi"}" deps)
      (crates."miow"."${deps."cargo"."0.35.0"."miow"}" deps)
      (crates."winapi"."${deps."cargo"."0.35.0"."winapi"}" deps)
    ]) else []);
    features = mkFeatures (features."cargo"."0.35.0" or {});
  };
  features_.cargo."0.35.0" = deps: f: updateFeatures f (rec {
    atty."${deps.cargo."0.35.0".atty}".default = true;
    byteorder."${deps.cargo."0.35.0".byteorder}".default = true;
    bytesize."${deps.cargo."0.35.0".bytesize}".default = true;
    cargo = fold recursiveUpdate {} [
      { "0.35.0"."pretty_env_logger" =
        (f.cargo."0.35.0"."pretty_env_logger" or false) ||
        (f.cargo."0.35.0".pretty-env-logger or false) ||
        (cargo."0.35.0"."pretty-env-logger" or false); }
      { "0.35.0".default = (f.cargo."0.35.0".default or true); }
    ];
    clap."${deps.cargo."0.35.0".clap}".default = true;
    core_foundation = fold recursiveUpdate {} [
      { "${deps.cargo."0.35.0".core_foundation}"."mac_os_10_7_support" = true; }
      { "${deps.cargo."0.35.0".core_foundation}".default = true; }
    ];
    crates_io."${deps.cargo."0.35.0".crates_io}".default = true;
    crossbeam_utils."${deps.cargo."0.35.0".crossbeam_utils}".default = true;
    crypto_hash."${deps.cargo."0.35.0".crypto_hash}".default = true;
    curl = fold recursiveUpdate {} [
      { "${deps.cargo."0.35.0".curl}"."http2" = true; }
      { "${deps.cargo."0.35.0".curl}".default = true; }
    ];
    curl_sys."${deps.cargo."0.35.0".curl_sys}".default = true;
    env_logger."${deps.cargo."0.35.0".env_logger}".default = true;
    failure."${deps.cargo."0.35.0".failure}".default = true;
    filetime."${deps.cargo."0.35.0".filetime}".default = true;
    flate2 = fold recursiveUpdate {} [
      { "${deps.cargo."0.35.0".flate2}"."zlib" = true; }
      { "${deps.cargo."0.35.0".flate2}".default = true; }
    ];
    fs2."${deps.cargo."0.35.0".fs2}".default = true;
    fwdansi."${deps.cargo."0.35.0".fwdansi}".default = true;
    git2."${deps.cargo."0.35.0".git2}".default = true;
    git2_curl."${deps.cargo."0.35.0".git2_curl}".default = true;
    glob."${deps.cargo."0.35.0".glob}".default = true;
    hex."${deps.cargo."0.35.0".hex}".default = true;
    home."${deps.cargo."0.35.0".home}".default = true;
    ignore."${deps.cargo."0.35.0".ignore}".default = true;
    im_rc."${deps.cargo."0.35.0".im_rc}".default = true;
    jobserver."${deps.cargo."0.35.0".jobserver}".default = true;
    lazy_static."${deps.cargo."0.35.0".lazy_static}".default = true;
    lazycell."${deps.cargo."0.35.0".lazycell}".default = true;
    libc."${deps.cargo."0.35.0".libc}".default = true;
    libgit2_sys."${deps.cargo."0.35.0".libgit2_sys}".default = true;
    log."${deps.cargo."0.35.0".log}".default = true;
    miow."${deps.cargo."0.35.0".miow}".default = true;
    num_cpus."${deps.cargo."0.35.0".num_cpus}".default = true;
    opener."${deps.cargo."0.35.0".opener}".default = true;
    rustc_workspace_hack."${deps.cargo."0.35.0".rustc_workspace_hack}".default = true;
    rustfix."${deps.cargo."0.35.0".rustfix}".default = true;
    same_file."${deps.cargo."0.35.0".same_file}".default = true;
    semver = fold recursiveUpdate {} [
      { "${deps.cargo."0.35.0".semver}"."serde" = true; }
      { "${deps.cargo."0.35.0".semver}".default = true; }
    ];
    serde = fold recursiveUpdate {} [
      { "${deps.cargo."0.35.0".serde}"."derive" = true; }
      { "${deps.cargo."0.35.0".serde}".default = true; }
    ];
    serde_ignored."${deps.cargo."0.35.0".serde_ignored}".default = true;
    serde_json = fold recursiveUpdate {} [
      { "${deps.cargo."0.35.0".serde_json}"."raw_value" = true; }
      { "${deps.cargo."0.35.0".serde_json}".default = true; }
    ];
    shell_escape."${deps.cargo."0.35.0".shell_escape}".default = true;
    tar."${deps.cargo."0.35.0".tar}".default = (f.tar."${deps.cargo."0.35.0".tar}".default or false);
    tempfile."${deps.cargo."0.35.0".tempfile}".default = true;
    termcolor."${deps.cargo."0.35.0".termcolor}".default = true;
    toml."${deps.cargo."0.35.0".toml}".default = true;
    unicode_width."${deps.cargo."0.35.0".unicode_width}".default = true;
    url."${deps.cargo."0.35.0".url}".default = true;
    url_serde."${deps.cargo."0.35.0".url_serde}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.cargo."0.35.0".winapi}"."basetsd" = true; }
      { "${deps.cargo."0.35.0".winapi}"."handleapi" = true; }
      { "${deps.cargo."0.35.0".winapi}"."jobapi" = true; }
      { "${deps.cargo."0.35.0".winapi}"."jobapi2" = true; }
      { "${deps.cargo."0.35.0".winapi}"."memoryapi" = true; }
      { "${deps.cargo."0.35.0".winapi}"."minwindef" = true; }
      { "${deps.cargo."0.35.0".winapi}"."ntdef" = true; }
      { "${deps.cargo."0.35.0".winapi}"."ntstatus" = true; }
      { "${deps.cargo."0.35.0".winapi}"."processenv" = true; }
      { "${deps.cargo."0.35.0".winapi}"."processthreadsapi" = true; }
      { "${deps.cargo."0.35.0".winapi}"."psapi" = true; }
      { "${deps.cargo."0.35.0".winapi}"."synchapi" = true; }
      { "${deps.cargo."0.35.0".winapi}"."winbase" = true; }
      { "${deps.cargo."0.35.0".winapi}"."wincon" = true; }
      { "${deps.cargo."0.35.0".winapi}"."winerror" = true; }
      { "${deps.cargo."0.35.0".winapi}"."winnt" = true; }
      { "${deps.cargo."0.35.0".winapi}".default = true; }
    ];
  }) [
    (features_.atty."${deps."cargo"."0.35.0"."atty"}" deps)
    (features_.byteorder."${deps."cargo"."0.35.0"."byteorder"}" deps)
    (features_.bytesize."${deps."cargo"."0.35.0"."bytesize"}" deps)
    (features_.clap."${deps."cargo"."0.35.0"."clap"}" deps)
    (features_.crates_io."${deps."cargo"."0.35.0"."crates_io"}" deps)
    (features_.crossbeam_utils."${deps."cargo"."0.35.0"."crossbeam_utils"}" deps)
    (features_.crypto_hash."${deps."cargo"."0.35.0"."crypto_hash"}" deps)
    (features_.curl."${deps."cargo"."0.35.0"."curl"}" deps)
    (features_.curl_sys."${deps."cargo"."0.35.0"."curl_sys"}" deps)
    (features_.env_logger."${deps."cargo"."0.35.0"."env_logger"}" deps)
    (features_.failure."${deps."cargo"."0.35.0"."failure"}" deps)
    (features_.filetime."${deps."cargo"."0.35.0"."filetime"}" deps)
    (features_.flate2."${deps."cargo"."0.35.0"."flate2"}" deps)
    (features_.fs2."${deps."cargo"."0.35.0"."fs2"}" deps)
    (features_.git2."${deps."cargo"."0.35.0"."git2"}" deps)
    (features_.git2_curl."${deps."cargo"."0.35.0"."git2_curl"}" deps)
    (features_.glob."${deps."cargo"."0.35.0"."glob"}" deps)
    (features_.hex."${deps."cargo"."0.35.0"."hex"}" deps)
    (features_.home."${deps."cargo"."0.35.0"."home"}" deps)
    (features_.ignore."${deps."cargo"."0.35.0"."ignore"}" deps)
    (features_.im_rc."${deps."cargo"."0.35.0"."im_rc"}" deps)
    (features_.jobserver."${deps."cargo"."0.35.0"."jobserver"}" deps)
    (features_.lazy_static."${deps."cargo"."0.35.0"."lazy_static"}" deps)
    (features_.lazycell."${deps."cargo"."0.35.0"."lazycell"}" deps)
    (features_.libc."${deps."cargo"."0.35.0"."libc"}" deps)
    (features_.libgit2_sys."${deps."cargo"."0.35.0"."libgit2_sys"}" deps)
    (features_.log."${deps."cargo"."0.35.0"."log"}" deps)
    (features_.num_cpus."${deps."cargo"."0.35.0"."num_cpus"}" deps)
    (features_.opener."${deps."cargo"."0.35.0"."opener"}" deps)
    (features_.rustc_workspace_hack."${deps."cargo"."0.35.0"."rustc_workspace_hack"}" deps)
    (features_.rustfix."${deps."cargo"."0.35.0"."rustfix"}" deps)
    (features_.same_file."${deps."cargo"."0.35.0"."same_file"}" deps)
    (features_.semver."${deps."cargo"."0.35.0"."semver"}" deps)
    (features_.serde."${deps."cargo"."0.35.0"."serde"}" deps)
    (features_.serde_ignored."${deps."cargo"."0.35.0"."serde_ignored"}" deps)
    (features_.serde_json."${deps."cargo"."0.35.0"."serde_json"}" deps)
    (features_.shell_escape."${deps."cargo"."0.35.0"."shell_escape"}" deps)
    (features_.tar."${deps."cargo"."0.35.0"."tar"}" deps)
    (features_.tempfile."${deps."cargo"."0.35.0"."tempfile"}" deps)
    (features_.termcolor."${deps."cargo"."0.35.0"."termcolor"}" deps)
    (features_.toml."${deps."cargo"."0.35.0"."toml"}" deps)
    (features_.unicode_width."${deps."cargo"."0.35.0"."unicode_width"}" deps)
    (features_.url."${deps."cargo"."0.35.0"."url"}" deps)
    (features_.url_serde."${deps."cargo"."0.35.0"."url_serde"}" deps)
    (features_.core_foundation."${deps."cargo"."0.35.0"."core_foundation"}" deps)
    (features_.fwdansi."${deps."cargo"."0.35.0"."fwdansi"}" deps)
    (features_.miow."${deps."cargo"."0.35.0"."miow"}" deps)
    (features_.winapi."${deps."cargo"."0.35.0"."winapi"}" deps)
  ];


# end
# cc-1.0.35

  crates.cc."1.0.35" = deps: { features?(features_.cc."1.0.35" deps {}) }: buildRustCrate {
    crateName = "cc";
    version = "1.0.35";
    description = "A build-time dependency for Cargo build scripts to assist in invoking the native\nC compiler to compile native C code into a static archive to be linked into Rust\ncode.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0dq3d2hgc5r14lk97ajj4mw30fibznjzrl9w745fqhwnq51jp7dj";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."cc"."1.0.35" or {});
  };
  features_.cc."1.0.35" = deps: f: updateFeatures f (rec {
    cc = fold recursiveUpdate {} [
      { "1.0.35"."rayon" =
        (f.cc."1.0.35"."rayon" or false) ||
        (f.cc."1.0.35".parallel or false) ||
        (cc."1.0.35"."parallel" or false); }
      { "1.0.35".default = (f.cc."1.0.35".default or true); }
    ];
  }) [];


# end
# clap-2.33.0

  crates.clap."2.33.0" = deps: { features?(features_.clap."2.33.0" deps {}) }: buildRustCrate {
    crateName = "clap";
    version = "2.33.0";
    description = "A simple to use, efficient, and full-featured Command Line Argument Parser\n";
    authors = [ "Kevin K. <kbknapp@gmail.com>" ];
    sha256 = "054n9ngh6pkknpmd4acgdsp40iw6f5jzq8a4h2b76gnbvk6p5xjh";
    dependencies = mapFeatures features ([
      (crates."bitflags"."${deps."clap"."2.33.0"."bitflags"}" deps)
      (crates."textwrap"."${deps."clap"."2.33.0"."textwrap"}" deps)
      (crates."unicode_width"."${deps."clap"."2.33.0"."unicode_width"}" deps)
    ]
      ++ (if features.clap."2.33.0".atty or false then [ (crates.atty."${deps."clap"."2.33.0".atty}" deps) ] else [])
      ++ (if features.clap."2.33.0".strsim or false then [ (crates.strsim."${deps."clap"."2.33.0".strsim}" deps) ] else [])
      ++ (if features.clap."2.33.0".vec_map or false then [ (crates.vec_map."${deps."clap"."2.33.0".vec_map}" deps) ] else []))
      ++ (if !(kernel == "windows") then mapFeatures features ([
    ]
      ++ (if features.clap."2.33.0".ansi_term or false then [ (crates.ansi_term."${deps."clap"."2.33.0".ansi_term}" deps) ] else [])) else []);
    features = mkFeatures (features."clap"."2.33.0" or {});
  };
  features_.clap."2.33.0" = deps: f: updateFeatures f (rec {
    ansi_term."${deps.clap."2.33.0".ansi_term}".default = true;
    atty."${deps.clap."2.33.0".atty}".default = true;
    bitflags."${deps.clap."2.33.0".bitflags}".default = true;
    clap = fold recursiveUpdate {} [
      { "2.33.0"."ansi_term" =
        (f.clap."2.33.0"."ansi_term" or false) ||
        (f.clap."2.33.0".color or false) ||
        (clap."2.33.0"."color" or false); }
      { "2.33.0"."atty" =
        (f.clap."2.33.0"."atty" or false) ||
        (f.clap."2.33.0".color or false) ||
        (clap."2.33.0"."color" or false); }
      { "2.33.0"."clippy" =
        (f.clap."2.33.0"."clippy" or false) ||
        (f.clap."2.33.0".lints or false) ||
        (clap."2.33.0"."lints" or false); }
      { "2.33.0"."color" =
        (f.clap."2.33.0"."color" or false) ||
        (f.clap."2.33.0".default or false) ||
        (clap."2.33.0"."default" or false); }
      { "2.33.0"."strsim" =
        (f.clap."2.33.0"."strsim" or false) ||
        (f.clap."2.33.0".suggestions or false) ||
        (clap."2.33.0"."suggestions" or false); }
      { "2.33.0"."suggestions" =
        (f.clap."2.33.0"."suggestions" or false) ||
        (f.clap."2.33.0".default or false) ||
        (clap."2.33.0"."default" or false); }
      { "2.33.0"."term_size" =
        (f.clap."2.33.0"."term_size" or false) ||
        (f.clap."2.33.0".wrap_help or false) ||
        (clap."2.33.0"."wrap_help" or false); }
      { "2.33.0"."vec_map" =
        (f.clap."2.33.0"."vec_map" or false) ||
        (f.clap."2.33.0".default or false) ||
        (clap."2.33.0"."default" or false); }
      { "2.33.0"."yaml" =
        (f.clap."2.33.0"."yaml" or false) ||
        (f.clap."2.33.0".doc or false) ||
        (clap."2.33.0"."doc" or false); }
      { "2.33.0"."yaml-rust" =
        (f.clap."2.33.0"."yaml-rust" or false) ||
        (f.clap."2.33.0".yaml or false) ||
        (clap."2.33.0"."yaml" or false); }
      { "2.33.0".default = (f.clap."2.33.0".default or true); }
    ];
    strsim."${deps.clap."2.33.0".strsim}".default = true;
    textwrap = fold recursiveUpdate {} [
      { "${deps.clap."2.33.0".textwrap}"."term_size" =
        (f.textwrap."${deps.clap."2.33.0".textwrap}"."term_size" or false) ||
        (clap."2.33.0"."wrap_help" or false) ||
        (f."clap"."2.33.0"."wrap_help" or false); }
      { "${deps.clap."2.33.0".textwrap}".default = true; }
    ];
    unicode_width."${deps.clap."2.33.0".unicode_width}".default = true;
    vec_map."${deps.clap."2.33.0".vec_map}".default = true;
  }) [
    (features_.atty."${deps."clap"."2.33.0"."atty"}" deps)
    (features_.bitflags."${deps."clap"."2.33.0"."bitflags"}" deps)
    (features_.strsim."${deps."clap"."2.33.0"."strsim"}" deps)
    (features_.textwrap."${deps."clap"."2.33.0"."textwrap"}" deps)
    (features_.unicode_width."${deps."clap"."2.33.0"."unicode_width"}" deps)
    (features_.vec_map."${deps."clap"."2.33.0"."vec_map"}" deps)
    (features_.ansi_term."${deps."clap"."2.33.0"."ansi_term"}" deps)
  ];


# end
# commoncrypto-0.2.0

  crates.commoncrypto."0.2.0" = deps: { features?(features_.commoncrypto."0.2.0" deps {}) }: buildRustCrate {
    crateName = "commoncrypto";
    version = "0.2.0";
    description = "Idiomatic Rust wrappers for Mac OS X's CommonCrypto library";
    authors = [ "Mark Lee" ];
    sha256 = "1ywgmv5ai4f6yskr3wv3j1wzfsdm9km8j8lm4x4j5ccln5362xdf";
    dependencies = mapFeatures features ([
      (crates."commoncrypto_sys"."${deps."commoncrypto"."0.2.0"."commoncrypto_sys"}" deps)
    ]);
    features = mkFeatures (features."commoncrypto"."0.2.0" or {});
  };
  features_.commoncrypto."0.2.0" = deps: f: updateFeatures f (rec {
    commoncrypto = fold recursiveUpdate {} [
      { "0.2.0"."clippy" =
        (f.commoncrypto."0.2.0"."clippy" or false) ||
        (f.commoncrypto."0.2.0".lint or false) ||
        (commoncrypto."0.2.0"."lint" or false); }
      { "0.2.0".default = (f.commoncrypto."0.2.0".default or true); }
    ];
    commoncrypto_sys."${deps.commoncrypto."0.2.0".commoncrypto_sys}".default = true;
  }) [
    (features_.commoncrypto_sys."${deps."commoncrypto"."0.2.0"."commoncrypto_sys"}" deps)
  ];


# end
# commoncrypto-sys-0.2.0

  crates.commoncrypto_sys."0.2.0" = deps: { features?(features_.commoncrypto_sys."0.2.0" deps {}) }: buildRustCrate {
    crateName = "commoncrypto-sys";
    version = "0.2.0";
    description = "FFI bindings to Mac OS X's CommonCrypto library";
    authors = [ "Mark Lee" ];
    sha256 = "001i2g7xbfi48r2xjgxwrgjjjf00x9c24vfrs3g6p2q2djhwww4i";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."commoncrypto_sys"."0.2.0"."libc"}" deps)
    ]);
    features = mkFeatures (features."commoncrypto_sys"."0.2.0" or {});
  };
  features_.commoncrypto_sys."0.2.0" = deps: f: updateFeatures f (rec {
    commoncrypto_sys = fold recursiveUpdate {} [
      { "0.2.0"."clippy" =
        (f.commoncrypto_sys."0.2.0"."clippy" or false) ||
        (f.commoncrypto_sys."0.2.0".lint or false) ||
        (commoncrypto_sys."0.2.0"."lint" or false); }
      { "0.2.0".default = (f.commoncrypto_sys."0.2.0".default or true); }
    ];
    libc."${deps.commoncrypto_sys."0.2.0".libc}".default = true;
  }) [
    (features_.libc."${deps."commoncrypto_sys"."0.2.0"."libc"}" deps)
  ];


# end
# core-foundation-0.6.4

  crates.core_foundation."0.6.4" = deps: { features?(features_.core_foundation."0.6.4" deps {}) }: buildRustCrate {
    crateName = "core-foundation";
    version = "0.6.4";
    description = "Bindings to Core Foundation for macOS";
    authors = [ "The Servo Project Developers" ];
    sha256 = "1kabsqxh01m6l2b1gz8wgn0d1k6fyczww9kaks0sbmsz5g78ngzx";
    dependencies = mapFeatures features ([
      (crates."core_foundation_sys"."${deps."core_foundation"."0.6.4"."core_foundation_sys"}" deps)
      (crates."libc"."${deps."core_foundation"."0.6.4"."libc"}" deps)
    ]);
    features = mkFeatures (features."core_foundation"."0.6.4" or {});
  };
  features_.core_foundation."0.6.4" = deps: f: updateFeatures f (rec {
    core_foundation = fold recursiveUpdate {} [
      { "0.6.4"."chrono" =
        (f.core_foundation."0.6.4"."chrono" or false) ||
        (f.core_foundation."0.6.4".with-chrono or false) ||
        (core_foundation."0.6.4"."with-chrono" or false); }
      { "0.6.4"."uuid" =
        (f.core_foundation."0.6.4"."uuid" or false) ||
        (f.core_foundation."0.6.4".with-uuid or false) ||
        (core_foundation."0.6.4"."with-uuid" or false); }
      { "0.6.4".default = (f.core_foundation."0.6.4".default or true); }
    ];
    core_foundation_sys = fold recursiveUpdate {} [
      { "${deps.core_foundation."0.6.4".core_foundation_sys}"."mac_os_10_7_support" =
        (f.core_foundation_sys."${deps.core_foundation."0.6.4".core_foundation_sys}"."mac_os_10_7_support" or false) ||
        (core_foundation."0.6.4"."mac_os_10_7_support" or false) ||
        (f."core_foundation"."0.6.4"."mac_os_10_7_support" or false); }
      { "${deps.core_foundation."0.6.4".core_foundation_sys}"."mac_os_10_8_features" =
        (f.core_foundation_sys."${deps.core_foundation."0.6.4".core_foundation_sys}"."mac_os_10_8_features" or false) ||
        (core_foundation."0.6.4"."mac_os_10_8_features" or false) ||
        (f."core_foundation"."0.6.4"."mac_os_10_8_features" or false); }
      { "${deps.core_foundation."0.6.4".core_foundation_sys}".default = true; }
    ];
    libc."${deps.core_foundation."0.6.4".libc}".default = true;
  }) [
    (features_.core_foundation_sys."${deps."core_foundation"."0.6.4"."core_foundation_sys"}" deps)
    (features_.libc."${deps."core_foundation"."0.6.4"."libc"}" deps)
  ];


# end
# core-foundation-sys-0.6.2

  crates.core_foundation_sys."0.6.2" = deps: { features?(features_.core_foundation_sys."0.6.2" deps {}) }: buildRustCrate {
    crateName = "core-foundation-sys";
    version = "0.6.2";
    description = "Bindings to Core Foundation for OS X";
    authors = [ "The Servo Project Developers" ];
    sha256 = "1n2v6wlqkmqwhl7k6y50irx51p37xb0fcm3njbman82gnyq8di2c";
    build = "build.rs";
    features = mkFeatures (features."core_foundation_sys"."0.6.2" or {});
  };
  features_.core_foundation_sys."0.6.2" = deps: f: updateFeatures f ({
    core_foundation_sys."0.6.2".default = (f.core_foundation_sys."0.6.2".default or true);
  }) [];


# end
# crates-io-0.23.0

  crates.crates_io."0.23.0" = deps: { features?(features_.crates_io."0.23.0" deps {}) }: buildRustCrate {
    crateName = "crates-io";
    version = "0.23.0";
    description = "Helpers for interacting with crates.io\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    edition = "2018";
    sha256 = "0yf7zhlqnyci12rl9x6xrwlcp8slf8ldfn3d72ad6j2hyp2cb59y";
    libPath = "lib.rs";
    libName = "crates_io";
    dependencies = mapFeatures features ([
      (crates."curl"."${deps."crates_io"."0.23.0"."curl"}" deps)
      (crates."failure"."${deps."crates_io"."0.23.0"."failure"}" deps)
      (crates."http"."${deps."crates_io"."0.23.0"."http"}" deps)
      (crates."serde"."${deps."crates_io"."0.23.0"."serde"}" deps)
      (crates."serde_derive"."${deps."crates_io"."0.23.0"."serde_derive"}" deps)
      (crates."serde_json"."${deps."crates_io"."0.23.0"."serde_json"}" deps)
      (crates."url"."${deps."crates_io"."0.23.0"."url"}" deps)
    ]);
  };
  features_.crates_io."0.23.0" = deps: f: updateFeatures f ({
    crates_io."0.23.0".default = (f.crates_io."0.23.0".default or true);
    curl."${deps.crates_io."0.23.0".curl}".default = true;
    failure."${deps.crates_io."0.23.0".failure}".default = true;
    http."${deps.crates_io."0.23.0".http}".default = true;
    serde = fold recursiveUpdate {} [
      { "${deps.crates_io."0.23.0".serde}"."derive" = true; }
      { "${deps.crates_io."0.23.0".serde}".default = true; }
    ];
    serde_derive."${deps.crates_io."0.23.0".serde_derive}".default = true;
    serde_json."${deps.crates_io."0.23.0".serde_json}".default = true;
    url."${deps.crates_io."0.23.0".url}".default = true;
  }) [
    (features_.curl."${deps."crates_io"."0.23.0"."curl"}" deps)
    (features_.failure."${deps."crates_io"."0.23.0"."failure"}" deps)
    (features_.http."${deps."crates_io"."0.23.0"."http"}" deps)
    (features_.serde."${deps."crates_io"."0.23.0"."serde"}" deps)
    (features_.serde_derive."${deps."crates_io"."0.23.0"."serde_derive"}" deps)
    (features_.serde_json."${deps."crates_io"."0.23.0"."serde_json"}" deps)
    (features_.url."${deps."crates_io"."0.23.0"."url"}" deps)
  ];


# end
# crc-1.8.1

  crates.crc."1.8.1" = deps: { features?(features_.crc."1.8.1" deps {}) }: buildRustCrate {
    crateName = "crc";
    version = "1.8.1";
    description = "Rust implementation of CRC(16, 32, 64) with support of various standards";
    authors = [ "Rui Hu <code@mrhooray.com>" ];
    sha256 = "00m9jjqrddp3bqyanvyxv0hf6s56bx1wy51vcdcxg4n2jdhg109s";

    buildDependencies = mapFeatures features ([
      (crates."build_const"."${deps."crc"."1.8.1"."build_const"}" deps)
    ]);
    features = mkFeatures (features."crc"."1.8.1" or {});
  };
  features_.crc."1.8.1" = deps: f: updateFeatures f (rec {
    build_const."${deps.crc."1.8.1".build_const}".default = true;
    crc = fold recursiveUpdate {} [
      { "1.8.1"."std" =
        (f.crc."1.8.1"."std" or false) ||
        (f.crc."1.8.1".default or false) ||
        (crc."1.8.1"."default" or false); }
      { "1.8.1".default = (f.crc."1.8.1".default or true); }
    ];
  }) [
    (features_.build_const."${deps."crc"."1.8.1"."build_const"}" deps)
  ];


# end
# crc32fast-1.2.0

  crates.crc32fast."1.2.0" = deps: { features?(features_.crc32fast."1.2.0" deps {}) }: buildRustCrate {
    crateName = "crc32fast";
    version = "1.2.0";
    description = "Fast, SIMD-accelerated CRC32 (IEEE) checksum computation";
    authors = [ "Sam Rijs <srijs@airpost.net>" "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "1mx88ndqln6vzg7hjhjp8b7g0qggpqggsjrlsdqrfsrbpdzffcn8";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."crc32fast"."1.2.0"."cfg_if"}" deps)
    ]);
    features = mkFeatures (features."crc32fast"."1.2.0" or {});
  };
  features_.crc32fast."1.2.0" = deps: f: updateFeatures f (rec {
    cfg_if."${deps.crc32fast."1.2.0".cfg_if}".default = true;
    crc32fast = fold recursiveUpdate {} [
      { "1.2.0"."std" =
        (f.crc32fast."1.2.0"."std" or false) ||
        (f.crc32fast."1.2.0".default or false) ||
        (crc32fast."1.2.0"."default" or false); }
      { "1.2.0".default = (f.crc32fast."1.2.0".default or true); }
    ];
  }) [
    (features_.cfg_if."${deps."crc32fast"."1.2.0"."cfg_if"}" deps)
  ];


# end
# crossbeam-channel-0.3.8

  crates.crossbeam_channel."0.3.8" = deps: { features?(features_.crossbeam_channel."0.3.8" deps {}) }: buildRustCrate {
    crateName = "crossbeam-channel";
    version = "0.3.8";
    description = "Multi-producer multi-consumer channels for message passing";
    authors = [ "The Crossbeam Project Developers" ];
    sha256 = "0apm8why2qsgr8ykh9x677kc9ml7qp71mvirfkdzdn4c1jyqyyzm";
    dependencies = mapFeatures features ([
      (crates."crossbeam_utils"."${deps."crossbeam_channel"."0.3.8"."crossbeam_utils"}" deps)
      (crates."smallvec"."${deps."crossbeam_channel"."0.3.8"."smallvec"}" deps)
    ]);
  };
  features_.crossbeam_channel."0.3.8" = deps: f: updateFeatures f ({
    crossbeam_channel."0.3.8".default = (f.crossbeam_channel."0.3.8".default or true);
    crossbeam_utils."${deps.crossbeam_channel."0.3.8".crossbeam_utils}".default = true;
    smallvec."${deps.crossbeam_channel."0.3.8".smallvec}".default = true;
  }) [
    (features_.crossbeam_utils."${deps."crossbeam_channel"."0.3.8"."crossbeam_utils"}" deps)
    (features_.smallvec."${deps."crossbeam_channel"."0.3.8"."smallvec"}" deps)
  ];


# end
# crossbeam-utils-0.6.5

  crates.crossbeam_utils."0.6.5" = deps: { features?(features_.crossbeam_utils."0.6.5" deps {}) }: buildRustCrate {
    crateName = "crossbeam-utils";
    version = "0.6.5";
    description = "Utilities for concurrent programming";
    authors = [ "The Crossbeam Project Developers" ];
    sha256 = "1z7wgcl9d22r2x6769r5945rnwf3jqfrrmb16q7kzk292r1d4rdg";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."crossbeam_utils"."0.6.5"."cfg_if"}" deps)
    ]
      ++ (if features.crossbeam_utils."0.6.5".lazy_static or false then [ (crates.lazy_static."${deps."crossbeam_utils"."0.6.5".lazy_static}" deps) ] else []));
    features = mkFeatures (features."crossbeam_utils"."0.6.5" or {});
  };
  features_.crossbeam_utils."0.6.5" = deps: f: updateFeatures f (rec {
    cfg_if."${deps.crossbeam_utils."0.6.5".cfg_if}".default = true;
    crossbeam_utils = fold recursiveUpdate {} [
      { "0.6.5"."lazy_static" =
        (f.crossbeam_utils."0.6.5"."lazy_static" or false) ||
        (f.crossbeam_utils."0.6.5".std or false) ||
        (crossbeam_utils."0.6.5"."std" or false); }
      { "0.6.5"."std" =
        (f.crossbeam_utils."0.6.5"."std" or false) ||
        (f.crossbeam_utils."0.6.5".default or false) ||
        (crossbeam_utils."0.6.5"."default" or false); }
      { "0.6.5".default = (f.crossbeam_utils."0.6.5".default or true); }
    ];
    lazy_static."${deps.crossbeam_utils."0.6.5".lazy_static}".default = true;
  }) [
    (features_.cfg_if."${deps."crossbeam_utils"."0.6.5"."cfg_if"}" deps)
    (features_.lazy_static."${deps."crossbeam_utils"."0.6.5"."lazy_static"}" deps)
  ];


# end
# crypto-hash-0.3.3

  crates.crypto_hash."0.3.3" = deps: { features?(features_.crypto_hash."0.3.3" deps {}) }: buildRustCrate {
    crateName = "crypto-hash";
    version = "0.3.3";
    description = "A wrapper for OS-level cryptographic hash functions";
    authors = [ "Mark Lee" ];
    sha256 = "0ybl3q06snf0p0w5c743yipf1gyhim2z0yqczgdhclfmzgj4gxqy";
    dependencies = mapFeatures features ([
      (crates."hex"."${deps."crypto_hash"."0.3.3"."hex"}" deps)
    ])
      ++ (if kernel == "darwin" || kernel == "ios" then mapFeatures features ([
      (crates."commoncrypto"."${deps."crypto_hash"."0.3.3"."commoncrypto"}" deps)
    ]) else [])
      ++ (if !(kernel == "windows" || kernel == "darwin" || kernel == "ios") then mapFeatures features ([
      (crates."openssl"."${deps."crypto_hash"."0.3.3"."openssl"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."crypto_hash"."0.3.3"."winapi"}" deps)
    ]) else []);
  };
  features_.crypto_hash."0.3.3" = deps: f: updateFeatures f ({
    commoncrypto."${deps.crypto_hash."0.3.3".commoncrypto}".default = true;
    crypto_hash."0.3.3".default = (f.crypto_hash."0.3.3".default or true);
    hex."${deps.crypto_hash."0.3.3".hex}".default = true;
    openssl."${deps.crypto_hash."0.3.3".openssl}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.crypto_hash."0.3.3".winapi}"."minwindef" = true; }
      { "${deps.crypto_hash."0.3.3".winapi}"."wincrypt" = true; }
      { "${deps.crypto_hash."0.3.3".winapi}".default = true; }
    ];
  }) [
    (features_.hex."${deps."crypto_hash"."0.3.3"."hex"}" deps)
    (features_.commoncrypto."${deps."crypto_hash"."0.3.3"."commoncrypto"}" deps)
    (features_.openssl."${deps."crypto_hash"."0.3.3"."openssl"}" deps)
    (features_.winapi."${deps."crypto_hash"."0.3.3"."winapi"}" deps)
  ];


# end
# curl-0.4.21

  crates.curl."0.4.21" = deps: { features?(features_.curl."0.4.21" deps {}) }: buildRustCrate {
    crateName = "curl";
    version = "0.4.21";
    description = "Rust bindings to libcurl for making HTTP requests";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "1n13h0scc4s77ryf3w19n3myh4k1ls4bfxrx6y6ffvayjfnh13qy";
    dependencies = mapFeatures features ([
      (crates."curl_sys"."${deps."curl"."0.4.21"."curl_sys"}" deps)
      (crates."libc"."${deps."curl"."0.4.21"."libc"}" deps)
      (crates."socket2"."${deps."curl"."0.4.21"."socket2"}" deps)
    ])
      ++ (if (kernel == "linux" || kernel == "darwin") && !(kernel == "darwin") then mapFeatures features ([
    ]
      ++ (if features.curl."0.4.21".openssl-probe or false then [ (crates.openssl_probe."${deps."curl"."0.4.21".openssl_probe}" deps) ] else [])
      ++ (if features.curl."0.4.21".openssl-sys or false then [ (crates.openssl_sys."${deps."curl"."0.4.21".openssl_sys}" deps) ] else [])) else [])
      ++ (if abi == "msvc" then mapFeatures features ([
      (crates."kernel32_sys"."${deps."curl"."0.4.21"."kernel32_sys"}" deps)
      (crates."schannel"."${deps."curl"."0.4.21"."schannel"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."curl"."0.4.21"."winapi"}" deps)
    ]) else []);
    features = mkFeatures (features."curl"."0.4.21" or {});
  };
  features_.curl."0.4.21" = deps: f: updateFeatures f (rec {
    curl = fold recursiveUpdate {} [
      { "0.4.21"."openssl-probe" =
        (f.curl."0.4.21"."openssl-probe" or false) ||
        (f.curl."0.4.21".ssl or false) ||
        (curl."0.4.21"."ssl" or false); }
      { "0.4.21"."openssl-sys" =
        (f.curl."0.4.21"."openssl-sys" or false) ||
        (f.curl."0.4.21".ssl or false) ||
        (curl."0.4.21"."ssl" or false); }
      { "0.4.21"."ssl" =
        (f.curl."0.4.21"."ssl" or false) ||
        (f.curl."0.4.21".default or false) ||
        (curl."0.4.21"."default" or false); }
      { "0.4.21".default = (f.curl."0.4.21".default or true); }
    ];
    curl_sys = fold recursiveUpdate {} [
      { "${deps.curl."0.4.21".curl_sys}"."force-system-lib-on-osx" =
        (f.curl_sys."${deps.curl."0.4.21".curl_sys}"."force-system-lib-on-osx" or false) ||
        (curl."0.4.21"."force-system-lib-on-osx" or false) ||
        (f."curl"."0.4.21"."force-system-lib-on-osx" or false); }
      { "${deps.curl."0.4.21".curl_sys}"."http2" =
        (f.curl_sys."${deps.curl."0.4.21".curl_sys}"."http2" or false) ||
        (curl."0.4.21"."http2" or false) ||
        (f."curl"."0.4.21"."http2" or false); }
      { "${deps.curl."0.4.21".curl_sys}"."ssl" =
        (f.curl_sys."${deps.curl."0.4.21".curl_sys}"."ssl" or false) ||
        (curl."0.4.21"."ssl" or false) ||
        (f."curl"."0.4.21"."ssl" or false); }
      { "${deps.curl."0.4.21".curl_sys}"."static-curl" =
        (f.curl_sys."${deps.curl."0.4.21".curl_sys}"."static-curl" or false) ||
        (curl."0.4.21"."static-curl" or false) ||
        (f."curl"."0.4.21"."static-curl" or false); }
      { "${deps.curl."0.4.21".curl_sys}"."static-ssl" =
        (f.curl_sys."${deps.curl."0.4.21".curl_sys}"."static-ssl" or false) ||
        (curl."0.4.21"."static-ssl" or false) ||
        (f."curl"."0.4.21"."static-ssl" or false); }
      { "${deps.curl."0.4.21".curl_sys}".default = (f.curl_sys."${deps.curl."0.4.21".curl_sys}".default or false); }
    ];
    kernel32_sys."${deps.curl."0.4.21".kernel32_sys}".default = true;
    libc."${deps.curl."0.4.21".libc}".default = true;
    openssl_probe."${deps.curl."0.4.21".openssl_probe}".default = true;
    openssl_sys."${deps.curl."0.4.21".openssl_sys}".default = true;
    schannel."${deps.curl."0.4.21".schannel}".default = true;
    socket2."${deps.curl."0.4.21".socket2}".default = true;
    winapi."${deps.curl."0.4.21".winapi}".default = true;
  }) [
    (features_.curl_sys."${deps."curl"."0.4.21"."curl_sys"}" deps)
    (features_.libc."${deps."curl"."0.4.21"."libc"}" deps)
    (features_.socket2."${deps."curl"."0.4.21"."socket2"}" deps)
    (features_.openssl_probe."${deps."curl"."0.4.21"."openssl_probe"}" deps)
    (features_.openssl_sys."${deps."curl"."0.4.21"."openssl_sys"}" deps)
    (features_.kernel32_sys."${deps."curl"."0.4.21"."kernel32_sys"}" deps)
    (features_.schannel."${deps."curl"."0.4.21"."schannel"}" deps)
    (features_.winapi."${deps."curl"."0.4.21"."winapi"}" deps)
  ];


# end
# curl-sys-0.4.18

  crates.curl_sys."0.4.18" = deps: { features?(features_.curl_sys."0.4.18" deps {}) }: buildRustCrate {
    crateName = "curl-sys";
    version = "0.4.18";
    description = "Native bindings to the libcurl library";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "1y9qglyirlxhp62gh5vlzpq67jw7cyccvsajvmj30dv1sn7cn3vk";
    libPath = "lib.rs";
    libName = "curl_sys";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."curl_sys"."0.4.18"."libc"}" deps)
      (crates."libz_sys"."${deps."curl_sys"."0.4.18"."libz_sys"}" deps)
    ]
      ++ (if features.curl_sys."0.4.18".libnghttp2-sys or false then [ (crates.libnghttp2_sys."${deps."curl_sys"."0.4.18".libnghttp2_sys}" deps) ] else []))
      ++ (if (kernel == "linux" || kernel == "darwin") && !(kernel == "darwin") then mapFeatures features ([
    ]
      ++ (if features.curl_sys."0.4.18".openssl-sys or false then [ (crates.openssl_sys."${deps."curl_sys"."0.4.18".openssl_sys}" deps) ] else [])) else [])
      ++ (if abi == "msvc" then mapFeatures features ([
]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."curl_sys"."0.4.18"."winapi"}" deps)
    ]) else []);

    buildDependencies = mapFeatures features ([
      (crates."cc"."${deps."curl_sys"."0.4.18"."cc"}" deps)
      (crates."pkg_config"."${deps."curl_sys"."0.4.18"."pkg_config"}" deps)
    ]);
    features = mkFeatures (features."curl_sys"."0.4.18" or {});
  };
  features_.curl_sys."0.4.18" = deps: f: updateFeatures f (rec {
    cc."${deps.curl_sys."0.4.18".cc}".default = true;
    curl_sys = fold recursiveUpdate {} [
      { "0.4.18"."libnghttp2-sys" =
        (f.curl_sys."0.4.18"."libnghttp2-sys" or false) ||
        (f.curl_sys."0.4.18".http2 or false) ||
        (curl_sys."0.4.18"."http2" or false); }
      { "0.4.18"."openssl-sys" =
        (f.curl_sys."0.4.18"."openssl-sys" or false) ||
        (f.curl_sys."0.4.18".ssl or false) ||
        (curl_sys."0.4.18"."ssl" or false); }
      { "0.4.18"."ssl" =
        (f.curl_sys."0.4.18"."ssl" or false) ||
        (f.curl_sys."0.4.18".default or false) ||
        (curl_sys."0.4.18"."default" or false); }
      { "0.4.18".default = (f.curl_sys."0.4.18".default or true); }
    ];
    libc."${deps.curl_sys."0.4.18".libc}".default = true;
    libnghttp2_sys."${deps.curl_sys."0.4.18".libnghttp2_sys}".default = true;
    libz_sys."${deps.curl_sys."0.4.18".libz_sys}".default = true;
    openssl_sys."${deps.curl_sys."0.4.18".openssl_sys}".default = true;
    pkg_config."${deps.curl_sys."0.4.18".pkg_config}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.curl_sys."0.4.18".winapi}"."winsock2" = true; }
      { "${deps.curl_sys."0.4.18".winapi}"."ws2def" = true; }
      { "${deps.curl_sys."0.4.18".winapi}".default = true; }
    ];
  }) [
    (features_.libc."${deps."curl_sys"."0.4.18"."libc"}" deps)
    (features_.libnghttp2_sys."${deps."curl_sys"."0.4.18"."libnghttp2_sys"}" deps)
    (features_.libz_sys."${deps."curl_sys"."0.4.18"."libz_sys"}" deps)
    (features_.cc."${deps."curl_sys"."0.4.18"."cc"}" deps)
    (features_.pkg_config."${deps."curl_sys"."0.4.18"."pkg_config"}" deps)
    (features_.openssl_sys."${deps."curl_sys"."0.4.18"."openssl_sys"}" deps)
    (features_.winapi."${deps."curl_sys"."0.4.18"."winapi"}" deps)
  ];


# end
# docopt-1.1.0

  crates.docopt."1.1.0" = deps: { features?(features_.docopt."1.1.0" deps {}) }: buildRustCrate {
    crateName = "docopt";
    version = "1.1.0";
    description = "Command line argument parsing.";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    edition = "2018";
    sha256 = "1xjvfw8398qcxwhdmak1bw2j6zn125ch24dmrmghv50vnlbb997x";
    crateBin =
      [{  name = "docopt-wordlist";  path = "src/wordlist.rs"; }];
    dependencies = mapFeatures features ([
      (crates."lazy_static"."${deps."docopt"."1.1.0"."lazy_static"}" deps)
      (crates."regex"."${deps."docopt"."1.1.0"."regex"}" deps)
      (crates."serde"."${deps."docopt"."1.1.0"."serde"}" deps)
      (crates."strsim"."${deps."docopt"."1.1.0"."strsim"}" deps)
    ]);
  };
  features_.docopt."1.1.0" = deps: f: updateFeatures f ({
    docopt."1.1.0".default = (f.docopt."1.1.0".default or true);
    lazy_static."${deps.docopt."1.1.0".lazy_static}".default = true;
    regex."${deps.docopt."1.1.0".regex}".default = true;
    serde = fold recursiveUpdate {} [
      { "${deps.docopt."1.1.0".serde}"."derive" = true; }
      { "${deps.docopt."1.1.0".serde}".default = true; }
    ];
    strsim."${deps.docopt."1.1.0".strsim}".default = true;
  }) [
    (features_.lazy_static."${deps."docopt"."1.1.0"."lazy_static"}" deps)
    (features_.regex."${deps."docopt"."1.1.0"."regex"}" deps)
    (features_.serde."${deps."docopt"."1.1.0"."serde"}" deps)
    (features_.strsim."${deps."docopt"."1.1.0"."strsim"}" deps)
  ];


# end
# either-1.5.2

  crates.either."1.5.2" = deps: { features?(features_.either."1.5.2" deps {}) }: buildRustCrate {
    crateName = "either";
    version = "1.5.2";
    description = "The enum `Either` with variants `Left` and `Right` is a general purpose sum type with two cases.\n";
    authors = [ "bluss" ];
    sha256 = "1zqq1057c51f53ga4p9l4dd8ax6md27h1xjrjp2plkvml5iymks5";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."either"."1.5.2" or {});
  };
  features_.either."1.5.2" = deps: f: updateFeatures f (rec {
    either = fold recursiveUpdate {} [
      { "1.5.2"."use_std" =
        (f.either."1.5.2"."use_std" or false) ||
        (f.either."1.5.2".default or false) ||
        (either."1.5.2"."default" or false); }
      { "1.5.2".default = (f.either."1.5.2".default or true); }
    ];
  }) [];


# end
# filetime-0.2.4

  crates.filetime."0.2.4" = deps: { features?(features_.filetime."0.2.4" deps {}) }: buildRustCrate {
    crateName = "filetime";
    version = "0.2.4";
    description = "Platform-agnostic accessors of timestamps in File metadata\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "1lsc0qjihr8y56rlzdcldzr0nbljm8qqi691msgwhy6wrkawwx5d";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."filetime"."0.2.4"."cfg_if"}" deps)
    ])
      ++ (if kernel == "redox" then mapFeatures features ([
      (crates."redox_syscall"."${deps."filetime"."0.2.4"."redox_syscall"}" deps)
    ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."filetime"."0.2.4"."libc"}" deps)
    ]) else []);
  };
  features_.filetime."0.2.4" = deps: f: updateFeatures f ({
    cfg_if."${deps.filetime."0.2.4".cfg_if}".default = true;
    filetime."0.2.4".default = (f.filetime."0.2.4".default or true);
    libc."${deps.filetime."0.2.4".libc}".default = true;
    redox_syscall."${deps.filetime."0.2.4".redox_syscall}".default = true;
  }) [
    (features_.cfg_if."${deps."filetime"."0.2.4"."cfg_if"}" deps)
    (features_.redox_syscall."${deps."filetime"."0.2.4"."redox_syscall"}" deps)
    (features_.libc."${deps."filetime"."0.2.4"."libc"}" deps)
  ];


# end
# flate2-1.0.7

  crates.flate2."1.0.7" = deps: { features?(features_.flate2."1.0.7" deps {}) }: buildRustCrate {
    crateName = "flate2";
    version = "1.0.7";
    description = "Bindings to miniz.c for DEFLATE compression and decompression exposed as\nReader/Writer streams. Contains bindings for zlib, deflate, and gzip-based\nstreams.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "012vi948sap09hm1nmd228fqn7i5kp6wfb9zlz0m8ysq5if1s9mc";
    dependencies = mapFeatures features ([
      (crates."crc32fast"."${deps."flate2"."1.0.7"."crc32fast"}" deps)
      (crates."libc"."${deps."flate2"."1.0.7"."libc"}" deps)
    ]
      ++ (if features.flate2."1.0.7".libz-sys or false then [ (crates.libz_sys."${deps."flate2"."1.0.7".libz_sys}" deps) ] else [])
      ++ (if features.flate2."1.0.7".miniz-sys or false then [ (crates.miniz_sys."${deps."flate2"."1.0.7".miniz_sys}" deps) ] else [])
      ++ (if features.flate2."1.0.7".miniz_oxide_c_api or false then [ (crates.miniz_oxide_c_api."${deps."flate2"."1.0.7".miniz_oxide_c_api}" deps) ] else []))
      ++ (if cpu == "wasm32" && !(kernel == "emscripten") then mapFeatures features ([
      (crates."miniz_oxide_c_api"."${deps."flate2"."1.0.7"."miniz_oxide_c_api"}" deps)
    ]) else []);
    features = mkFeatures (features."flate2"."1.0.7" or {});
  };
  features_.flate2."1.0.7" = deps: f: updateFeatures f (rec {
    crc32fast."${deps.flate2."1.0.7".crc32fast}".default = true;
    flate2 = fold recursiveUpdate {} [
      { "1.0.7"."futures" =
        (f.flate2."1.0.7"."futures" or false) ||
        (f.flate2."1.0.7".tokio or false) ||
        (flate2."1.0.7"."tokio" or false); }
      { "1.0.7"."libz-sys" =
        (f.flate2."1.0.7"."libz-sys" or false) ||
        (f.flate2."1.0.7".zlib or false) ||
        (flate2."1.0.7"."zlib" or false); }
      { "1.0.7"."miniz-sys" =
        (f.flate2."1.0.7"."miniz-sys" or false) ||
        (f.flate2."1.0.7".default or false) ||
        (flate2."1.0.7"."default" or false); }
      { "1.0.7"."miniz_oxide_c_api" =
        (f.flate2."1.0.7"."miniz_oxide_c_api" or false) ||
        (f.flate2."1.0.7".rust_backend or false) ||
        (flate2."1.0.7"."rust_backend" or false); }
      { "1.0.7"."tokio-io" =
        (f.flate2."1.0.7"."tokio-io" or false) ||
        (f.flate2."1.0.7".tokio or false) ||
        (flate2."1.0.7"."tokio" or false); }
      { "1.0.7".default = (f.flate2."1.0.7".default or true); }
    ];
    libc."${deps.flate2."1.0.7".libc}".default = true;
    libz_sys."${deps.flate2."1.0.7".libz_sys}".default = true;
    miniz_oxide_c_api = fold recursiveUpdate {} [
      { "${deps.flate2."1.0.7".miniz_oxide_c_api}"."no_c_export" =
        (f.miniz_oxide_c_api."${deps.flate2."1.0.7".miniz_oxide_c_api}"."no_c_export" or false) ||
        true ||
        true; }
      { "${deps.flate2."1.0.7".miniz_oxide_c_api}".default = true; }
    ];
    miniz_sys."${deps.flate2."1.0.7".miniz_sys}".default = true;
  }) [
    (features_.crc32fast."${deps."flate2"."1.0.7"."crc32fast"}" deps)
    (features_.libc."${deps."flate2"."1.0.7"."libc"}" deps)
    (features_.libz_sys."${deps."flate2"."1.0.7"."libz_sys"}" deps)
    (features_.miniz_sys."${deps."flate2"."1.0.7"."miniz_sys"}" deps)
    (features_.miniz_oxide_c_api."${deps."flate2"."1.0.7"."miniz_oxide_c_api"}" deps)
    (features_.miniz_oxide_c_api."${deps."flate2"."1.0.7"."miniz_oxide_c_api"}" deps)
  ];


# end
# fnv-1.0.6

  crates.fnv."1.0.6" = deps: { features?(features_.fnv."1.0.6" deps {}) }: buildRustCrate {
    crateName = "fnv";
    version = "1.0.6";
    description = "Fowler???Noll???Vo hash function";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "128mlh23y3gg6ag5h8iiqlcbl59smisdzraqy88ldrf75kbw27ip";
    libPath = "lib.rs";
  };
  features_.fnv."1.0.6" = deps: f: updateFeatures f ({
    fnv."1.0.6".default = (f.fnv."1.0.6".default or true);
  }) [];


# end
# foreign-types-0.3.2

  crates.foreign_types."0.3.2" = deps: { features?(features_.foreign_types."0.3.2" deps {}) }: buildRustCrate {
    crateName = "foreign-types";
    version = "0.3.2";
    description = "A framework for Rust wrappers over C APIs";
    authors = [ "Steven Fackler <sfackler@gmail.com>" ];
    sha256 = "105n8sp2djb1s5lzrw04p7ss3dchr5qa3canmynx396nh3vwm2p8";
    dependencies = mapFeatures features ([
      (crates."foreign_types_shared"."${deps."foreign_types"."0.3.2"."foreign_types_shared"}" deps)
    ]);
  };
  features_.foreign_types."0.3.2" = deps: f: updateFeatures f ({
    foreign_types."0.3.2".default = (f.foreign_types."0.3.2".default or true);
    foreign_types_shared."${deps.foreign_types."0.3.2".foreign_types_shared}".default = true;
  }) [
    (features_.foreign_types_shared."${deps."foreign_types"."0.3.2"."foreign_types_shared"}" deps)
  ];


# end
# foreign-types-shared-0.1.1

  crates.foreign_types_shared."0.1.1" = deps: { features?(features_.foreign_types_shared."0.1.1" deps {}) }: buildRustCrate {
    crateName = "foreign-types-shared";
    version = "0.1.1";
    description = "An internal crate used by foreign-types";
    authors = [ "Steven Fackler <sfackler@gmail.com>" ];
    sha256 = "0b6cnvqbflws8dxywk4589vgbz80049lz4x1g9dfy4s1ppd3g4z5";
  };
  features_.foreign_types_shared."0.1.1" = deps: f: updateFeatures f ({
    foreign_types_shared."0.1.1".default = (f.foreign_types_shared."0.1.1".default or true);
  }) [];


# end
# fs2-0.4.3

  crates.fs2."0.4.3" = deps: { features?(features_.fs2."0.4.3" deps {}) }: buildRustCrate {
    crateName = "fs2";
    version = "0.4.3";
    description = "Cross-platform file locks and file duplication.";
    authors = [ "Dan Burkert <dan@danburkert.com>" ];
    sha256 = "1crj36rhhpk3qby9yj7r77w7sld0mzab2yicmphbdkfymbmp3ldp";
    dependencies = (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."fs2"."0.4.3"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."fs2"."0.4.3"."winapi"}" deps)
    ]) else []);
  };
  features_.fs2."0.4.3" = deps: f: updateFeatures f ({
    fs2."0.4.3".default = (f.fs2."0.4.3".default or true);
    libc."${deps.fs2."0.4.3".libc}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.fs2."0.4.3".winapi}"."fileapi" = true; }
      { "${deps.fs2."0.4.3".winapi}"."handleapi" = true; }
      { "${deps.fs2."0.4.3".winapi}"."processthreadsapi" = true; }
      { "${deps.fs2."0.4.3".winapi}"."std" = true; }
      { "${deps.fs2."0.4.3".winapi}"."winbase" = true; }
      { "${deps.fs2."0.4.3".winapi}"."winerror" = true; }
      { "${deps.fs2."0.4.3".winapi}".default = true; }
    ];
  }) [
    (features_.libc."${deps."fs2"."0.4.3"."libc"}" deps)
    (features_.winapi."${deps."fs2"."0.4.3"."winapi"}" deps)
  ];


# end
# fwdansi-1.0.1

  crates.fwdansi."1.0.1" = deps: { features?(features_.fwdansi."1.0.1" deps {}) }: buildRustCrate {
    crateName = "fwdansi";
    version = "1.0.1";
    description = "Forwards a byte string with ANSI escape code to a termcolor terminal";
    authors = [ "kennytm <kennytm@gmail.com>" ];
    sha256 = "00mzclq1wx55p6x5xx4yhpj70vsrivk2w1wbzq8bnf6xnl2km0xn";
    dependencies = mapFeatures features ([
      (crates."memchr"."${deps."fwdansi"."1.0.1"."memchr"}" deps)
      (crates."termcolor"."${deps."fwdansi"."1.0.1"."termcolor"}" deps)
    ]);
  };
  features_.fwdansi."1.0.1" = deps: f: updateFeatures f ({
    fwdansi."1.0.1".default = (f.fwdansi."1.0.1".default or true);
    memchr."${deps.fwdansi."1.0.1".memchr}".default = true;
    termcolor."${deps.fwdansi."1.0.1".termcolor}".default = true;
  }) [
    (features_.memchr."${deps."fwdansi"."1.0.1"."memchr"}" deps)
    (features_.termcolor."${deps."fwdansi"."1.0.1"."termcolor"}" deps)
  ];


# end
# git2-0.8.0

  crates.git2."0.8.0" = deps: { features?(features_.git2."0.8.0" deps {}) }: buildRustCrate {
    crateName = "git2";
    version = "0.8.0";
    description = "Bindings to libgit2 for interoperating with git repositories. This library is\nboth threadsafe and memory safe and allows both reading and writing git\nrepositories.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0nkzglhq7lrdzv23jakygv6h5kks2mdr7xh73chnr7bqdc36mi43";
    dependencies = mapFeatures features ([
      (crates."bitflags"."${deps."git2"."0.8.0"."bitflags"}" deps)
      (crates."libc"."${deps."git2"."0.8.0"."libc"}" deps)
      (crates."libgit2_sys"."${deps."git2"."0.8.0"."libgit2_sys"}" deps)
      (crates."log"."${deps."git2"."0.8.0"."log"}" deps)
      (crates."url"."${deps."git2"."0.8.0"."url"}" deps)
    ])
      ++ (if (kernel == "linux" || kernel == "darwin") && !(kernel == "darwin") then mapFeatures features ([
    ]
      ++ (if features.git2."0.8.0".openssl-probe or false then [ (crates.openssl_probe."${deps."git2"."0.8.0".openssl_probe}" deps) ] else [])
      ++ (if features.git2."0.8.0".openssl-sys or false then [ (crates.openssl_sys."${deps."git2"."0.8.0".openssl_sys}" deps) ] else [])) else []);
    features = mkFeatures (features."git2"."0.8.0" or {});
  };
  features_.git2."0.8.0" = deps: f: updateFeatures f (rec {
    bitflags."${deps.git2."0.8.0".bitflags}".default = true;
    git2 = fold recursiveUpdate {} [
      { "0.8.0"."curl" =
        (f.git2."0.8.0"."curl" or false) ||
        (f.git2."0.8.0".default or false) ||
        (git2."0.8.0"."default" or false); }
      { "0.8.0"."https" =
        (f.git2."0.8.0"."https" or false) ||
        (f.git2."0.8.0".default or false) ||
        (git2."0.8.0"."default" or false); }
      { "0.8.0"."openssl-probe" =
        (f.git2."0.8.0"."openssl-probe" or false) ||
        (f.git2."0.8.0".https or false) ||
        (git2."0.8.0"."https" or false); }
      { "0.8.0"."openssl-sys" =
        (f.git2."0.8.0"."openssl-sys" or false) ||
        (f.git2."0.8.0".https or false) ||
        (git2."0.8.0"."https" or false); }
      { "0.8.0"."ssh" =
        (f.git2."0.8.0"."ssh" or false) ||
        (f.git2."0.8.0".default or false) ||
        (git2."0.8.0"."default" or false); }
      { "0.8.0"."ssh_key_from_memory" =
        (f.git2."0.8.0"."ssh_key_from_memory" or false) ||
        (f.git2."0.8.0".default or false) ||
        (git2."0.8.0"."default" or false); }
      { "0.8.0".default = (f.git2."0.8.0".default or true); }
    ];
    libc."${deps.git2."0.8.0".libc}".default = true;
    libgit2_sys = fold recursiveUpdate {} [
      { "${deps.git2."0.8.0".libgit2_sys}"."curl" =
        (f.libgit2_sys."${deps.git2."0.8.0".libgit2_sys}"."curl" or false) ||
        (git2."0.8.0"."curl" or false) ||
        (f."git2"."0.8.0"."curl" or false); }
      { "${deps.git2."0.8.0".libgit2_sys}"."https" =
        (f.libgit2_sys."${deps.git2."0.8.0".libgit2_sys}"."https" or false) ||
        (git2."0.8.0"."https" or false) ||
        (f."git2"."0.8.0"."https" or false); }
      { "${deps.git2."0.8.0".libgit2_sys}"."ssh" =
        (f.libgit2_sys."${deps.git2."0.8.0".libgit2_sys}"."ssh" or false) ||
        (git2."0.8.0"."ssh" or false) ||
        (f."git2"."0.8.0"."ssh" or false); }
      { "${deps.git2."0.8.0".libgit2_sys}"."ssh_key_from_memory" =
        (f.libgit2_sys."${deps.git2."0.8.0".libgit2_sys}"."ssh_key_from_memory" or false) ||
        (git2."0.8.0"."ssh_key_from_memory" or false) ||
        (f."git2"."0.8.0"."ssh_key_from_memory" or false); }
      { "${deps.git2."0.8.0".libgit2_sys}".default = true; }
    ];
    log."${deps.git2."0.8.0".log}".default = true;
    openssl_probe."${deps.git2."0.8.0".openssl_probe}".default = true;
    openssl_sys."${deps.git2."0.8.0".openssl_sys}".default = true;
    url."${deps.git2."0.8.0".url}".default = true;
  }) [
    (features_.bitflags."${deps."git2"."0.8.0"."bitflags"}" deps)
    (features_.libc."${deps."git2"."0.8.0"."libc"}" deps)
    (features_.libgit2_sys."${deps."git2"."0.8.0"."libgit2_sys"}" deps)
    (features_.log."${deps."git2"."0.8.0"."log"}" deps)
    (features_.url."${deps."git2"."0.8.0"."url"}" deps)
    (features_.openssl_probe."${deps."git2"."0.8.0"."openssl_probe"}" deps)
    (features_.openssl_sys."${deps."git2"."0.8.0"."openssl_sys"}" deps)
  ];


# end
# git2-curl-0.9.0

  crates.git2_curl."0.9.0" = deps: { features?(features_.git2_curl."0.9.0" deps {}) }: buildRustCrate {
    crateName = "git2-curl";
    version = "0.9.0";
    description = "Backend for an HTTP transport in libgit2 powered by libcurl.\n\nIntended to be used with the git2 crate.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0m7bjx7pbrd7hiwwbazgigv9anici9jfwgzhp3q47smbwszdv2hh";
    dependencies = mapFeatures features ([
      (crates."curl"."${deps."git2_curl"."0.9.0"."curl"}" deps)
      (crates."git2"."${deps."git2_curl"."0.9.0"."git2"}" deps)
      (crates."log"."${deps."git2_curl"."0.9.0"."log"}" deps)
      (crates."url"."${deps."git2_curl"."0.9.0"."url"}" deps)
    ]);
  };
  features_.git2_curl."0.9.0" = deps: f: updateFeatures f ({
    curl."${deps.git2_curl."0.9.0".curl}".default = true;
    git2."${deps.git2_curl."0.9.0".git2}".default = (f.git2."${deps.git2_curl."0.9.0".git2}".default or false);
    git2_curl."0.9.0".default = (f.git2_curl."0.9.0".default or true);
    log."${deps.git2_curl."0.9.0".log}".default = true;
    url."${deps.git2_curl."0.9.0".url}".default = true;
  }) [
    (features_.curl."${deps."git2_curl"."0.9.0"."curl"}" deps)
    (features_.git2."${deps."git2_curl"."0.9.0"."git2"}" deps)
    (features_.log."${deps."git2_curl"."0.9.0"."log"}" deps)
    (features_.url."${deps."git2_curl"."0.9.0"."url"}" deps)
  ];


# end
# glob-0.2.11

  crates.glob."0.2.11" = deps: { features?(features_.glob."0.2.11" deps {}) }: buildRustCrate {
    crateName = "glob";
    version = "0.2.11";
    description = "Support for matching file paths against Unix shell style patterns.\n";
    authors = [ "The Rust Project Developers" ];
    sha256 = "104389jjxs8r2f5cc9p0axhjmndgln60ih5x4f00ccgg9d3zarlf";
  };
  features_.glob."0.2.11" = deps: f: updateFeatures f ({
    glob."0.2.11".default = (f.glob."0.2.11".default or true);
  }) [];


# end
# globset-0.4.3

  crates.globset."0.4.3" = deps: { features?(features_.globset."0.4.3" deps {}) }: buildRustCrate {
    crateName = "globset";
    version = "0.4.3";
    description = "Cross platform single glob and glob set matching. Glob set matching is the\nprocess of matching one or more glob patterns against a single candidate path\nsimultaneously, and returning all of the globs that matched.\n";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "0vj99vw55mp7w44p1157f9c44q5lms6sn0mllhavwrwdn3iyfrij";
    dependencies = mapFeatures features ([
      (crates."aho_corasick"."${deps."globset"."0.4.3"."aho_corasick"}" deps)
      (crates."bstr"."${deps."globset"."0.4.3"."bstr"}" deps)
      (crates."fnv"."${deps."globset"."0.4.3"."fnv"}" deps)
      (crates."log"."${deps."globset"."0.4.3"."log"}" deps)
      (crates."regex"."${deps."globset"."0.4.3"."regex"}" deps)
    ]);
    features = mkFeatures (features."globset"."0.4.3" or {});
  };
  features_.globset."0.4.3" = deps: f: updateFeatures f ({
    aho_corasick."${deps.globset."0.4.3".aho_corasick}".default = true;
    bstr = fold recursiveUpdate {} [
      { "${deps.globset."0.4.3".bstr}"."std" = true; }
      { "${deps.globset."0.4.3".bstr}".default = (f.bstr."${deps.globset."0.4.3".bstr}".default or false); }
    ];
    fnv."${deps.globset."0.4.3".fnv}".default = true;
    globset."0.4.3".default = (f.globset."0.4.3".default or true);
    log."${deps.globset."0.4.3".log}".default = true;
    regex."${deps.globset."0.4.3".regex}".default = true;
  }) [
    (features_.aho_corasick."${deps."globset"."0.4.3"."aho_corasick"}" deps)
    (features_.bstr."${deps."globset"."0.4.3"."bstr"}" deps)
    (features_.fnv."${deps."globset"."0.4.3"."fnv"}" deps)
    (features_.log."${deps."globset"."0.4.3"."log"}" deps)
    (features_.regex."${deps."globset"."0.4.3"."regex"}" deps)
  ];


# end
# hashbrown-0.1.8

  crates.hashbrown."0.1.8" = deps: { features?(features_.hashbrown."0.1.8" deps {}) }: buildRustCrate {
    crateName = "hashbrown";
    version = "0.1.8";
    description = "A Rust port of Google's SwissTable hash map";
    authors = [ "Amanieu d'Antras <amanieu@gmail.com>" ];
    sha256 = "047fk80pg59cdn5lz4h2a514fmgmya896dvy3dqqviia52a27fzh";
    dependencies = mapFeatures features ([
      (crates."byteorder"."${deps."hashbrown"."0.1.8"."byteorder"}" deps)
      (crates."scopeguard"."${deps."hashbrown"."0.1.8"."scopeguard"}" deps)
    ]);
    features = mkFeatures (features."hashbrown"."0.1.8" or {});
  };
  features_.hashbrown."0.1.8" = deps: f: updateFeatures f ({
    byteorder."${deps.hashbrown."0.1.8".byteorder}".default = (f.byteorder."${deps.hashbrown."0.1.8".byteorder}".default or false);
    hashbrown."0.1.8".default = (f.hashbrown."0.1.8".default or true);
    scopeguard."${deps.hashbrown."0.1.8".scopeguard}".default = (f.scopeguard."${deps.hashbrown."0.1.8".scopeguard}".default or false);
  }) [
    (features_.byteorder."${deps."hashbrown"."0.1.8"."byteorder"}" deps)
    (features_.scopeguard."${deps."hashbrown"."0.1.8"."scopeguard"}" deps)
  ];


# end
# hex-0.3.2

  crates.hex."0.3.2" = deps: { features?(features_.hex."0.3.2" deps {}) }: buildRustCrate {
    crateName = "hex";
    version = "0.3.2";
    description = "Encoding and decoding data into/from hexadecimal representation.";
    authors = [ "KokaKiwi <kokakiwi@kokakiwi.net>" ];
    sha256 = "0hs0xfb4x67y4ss9mmbjmibkwakbn3xf23i21m409bw2zqk9b6kz";
    features = mkFeatures (features."hex"."0.3.2" or {});
  };
  features_.hex."0.3.2" = deps: f: updateFeatures f ({
    hex."0.3.2".default = (f.hex."0.3.2".default or true);
  }) [];


# end
# home-0.3.4

  crates.home."0.3.4" = deps: { features?(features_.home."0.3.4" deps {}) }: buildRustCrate {
    crateName = "home";
    version = "0.3.4";
    description = "Shared definitions of home directories";
    authors = [ "Brian Anderson <andersrb@gmail.com>" ];
    sha256 = "19fbzvv74wqxqpdlz6ri1p270i8hp17h8njjj68k98sgrabkcr0n";
    dependencies = (if kernel == "windows" then mapFeatures features ([
      (crates."scopeguard"."${deps."home"."0.3.4"."scopeguard"}" deps)
      (crates."winapi"."${deps."home"."0.3.4"."winapi"}" deps)
    ]) else []);
  };
  features_.home."0.3.4" = deps: f: updateFeatures f ({
    home."0.3.4".default = (f.home."0.3.4".default or true);
    scopeguard."${deps.home."0.3.4".scopeguard}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.home."0.3.4".winapi}"."errhandlingapi" = true; }
      { "${deps.home."0.3.4".winapi}"."handleapi" = true; }
      { "${deps.home."0.3.4".winapi}"."processthreadsapi" = true; }
      { "${deps.home."0.3.4".winapi}"."std" = true; }
      { "${deps.home."0.3.4".winapi}"."userenv" = true; }
      { "${deps.home."0.3.4".winapi}"."winerror" = true; }
      { "${deps.home."0.3.4".winapi}"."winnt" = true; }
      { "${deps.home."0.3.4".winapi}".default = true; }
    ];
  }) [
    (features_.scopeguard."${deps."home"."0.3.4"."scopeguard"}" deps)
    (features_.winapi."${deps."home"."0.3.4"."winapi"}" deps)
  ];


# end
# http-0.1.17

  crates.http."0.1.17" = deps: { features?(features_.http."0.1.17" deps {}) }: buildRustCrate {
    crateName = "http";
    version = "0.1.17";
    description = "A set of types for representing HTTP requests and responses.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" "Carl Lerche <me@carllerche.com>" "Sean McArthur <sean@seanmonstar.com>" ];
    sha256 = "0q71wgggg1h5kjyg1gb4m70g3ian9qwrkx2b9wwvfyafrkmjpg9c";
    dependencies = mapFeatures features ([
      (crates."bytes"."${deps."http"."0.1.17"."bytes"}" deps)
      (crates."fnv"."${deps."http"."0.1.17"."fnv"}" deps)
      (crates."itoa"."${deps."http"."0.1.17"."itoa"}" deps)
    ]);
  };
  features_.http."0.1.17" = deps: f: updateFeatures f ({
    bytes."${deps.http."0.1.17".bytes}".default = true;
    fnv."${deps.http."0.1.17".fnv}".default = true;
    http."0.1.17".default = (f.http."0.1.17".default or true);
    itoa."${deps.http."0.1.17".itoa}".default = true;
  }) [
    (features_.bytes."${deps."http"."0.1.17"."bytes"}" deps)
    (features_.fnv."${deps."http"."0.1.17"."fnv"}" deps)
    (features_.itoa."${deps."http"."0.1.17"."itoa"}" deps)
  ];


# end
# ignore-0.4.7

  crates.ignore."0.4.7" = deps: { features?(features_.ignore."0.4.7" deps {}) }: buildRustCrate {
    crateName = "ignore";
    version = "0.4.7";
    description = "A fast library for efficiently matching ignore files such as `.gitignore`\nagainst file paths.\n";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "10ky0pnkzk6spa416sxvhcpc1nxq56n6mxkmhzy3ws57x9v75nkj";
    dependencies = mapFeatures features ([
      (crates."crossbeam_channel"."${deps."ignore"."0.4.7"."crossbeam_channel"}" deps)
      (crates."globset"."${deps."ignore"."0.4.7"."globset"}" deps)
      (crates."lazy_static"."${deps."ignore"."0.4.7"."lazy_static"}" deps)
      (crates."log"."${deps."ignore"."0.4.7"."log"}" deps)
      (crates."memchr"."${deps."ignore"."0.4.7"."memchr"}" deps)
      (crates."regex"."${deps."ignore"."0.4.7"."regex"}" deps)
      (crates."same_file"."${deps."ignore"."0.4.7"."same_file"}" deps)
      (crates."thread_local"."${deps."ignore"."0.4.7"."thread_local"}" deps)
      (crates."walkdir"."${deps."ignore"."0.4.7"."walkdir"}" deps)
    ])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi_util"."${deps."ignore"."0.4.7"."winapi_util"}" deps)
    ]) else []);
    features = mkFeatures (features."ignore"."0.4.7" or {});
  };
  features_.ignore."0.4.7" = deps: f: updateFeatures f (rec {
    crossbeam_channel."${deps.ignore."0.4.7".crossbeam_channel}".default = true;
    globset = fold recursiveUpdate {} [
      { "${deps.ignore."0.4.7".globset}"."simd-accel" =
        (f.globset."${deps.ignore."0.4.7".globset}"."simd-accel" or false) ||
        (ignore."0.4.7"."simd-accel" or false) ||
        (f."ignore"."0.4.7"."simd-accel" or false); }
      { "${deps.ignore."0.4.7".globset}".default = true; }
    ];
    ignore."0.4.7".default = (f.ignore."0.4.7".default or true);
    lazy_static."${deps.ignore."0.4.7".lazy_static}".default = true;
    log."${deps.ignore."0.4.7".log}".default = true;
    memchr."${deps.ignore."0.4.7".memchr}".default = true;
    regex."${deps.ignore."0.4.7".regex}".default = true;
    same_file."${deps.ignore."0.4.7".same_file}".default = true;
    thread_local."${deps.ignore."0.4.7".thread_local}".default = true;
    walkdir."${deps.ignore."0.4.7".walkdir}".default = true;
    winapi_util."${deps.ignore."0.4.7".winapi_util}".default = true;
  }) [
    (features_.crossbeam_channel."${deps."ignore"."0.4.7"."crossbeam_channel"}" deps)
    (features_.globset."${deps."ignore"."0.4.7"."globset"}" deps)
    (features_.lazy_static."${deps."ignore"."0.4.7"."lazy_static"}" deps)
    (features_.log."${deps."ignore"."0.4.7"."log"}" deps)
    (features_.memchr."${deps."ignore"."0.4.7"."memchr"}" deps)
    (features_.regex."${deps."ignore"."0.4.7"."regex"}" deps)
    (features_.same_file."${deps."ignore"."0.4.7"."same_file"}" deps)
    (features_.thread_local."${deps."ignore"."0.4.7"."thread_local"}" deps)
    (features_.walkdir."${deps."ignore"."0.4.7"."walkdir"}" deps)
    (features_.winapi_util."${deps."ignore"."0.4.7"."winapi_util"}" deps)
  ];


# end
# im-rc-12.3.4

  crates.im_rc."12.3.4" = deps: { features?(features_.im_rc."12.3.4" deps {}) }: buildRustCrate {
    crateName = "im-rc";
    version = "12.3.4";
    description = "Immutable collection datatypes (the fast but not thread safe version)";
    authors = [ "Bodil Stokke <bodil@bodil.org>" ];
    edition = "2018";
    sha256 = "0l53vjm7ycccb0lxj1zpgvlik5rpngnf9gggvgb3jbdv2jxjkdhz";
    libPath = "./src/lib.rs";
    build = "./build.rs";
    dependencies = mapFeatures features ([
      (crates."sized_chunks"."${deps."im_rc"."12.3.4"."sized_chunks"}" deps)
      (crates."typenum"."${deps."im_rc"."12.3.4"."typenum"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."rustc_version"."${deps."im_rc"."12.3.4"."rustc_version"}" deps)
    ]);
  };
  features_.im_rc."12.3.4" = deps: f: updateFeatures f ({
    im_rc."12.3.4".default = (f.im_rc."12.3.4".default or true);
    rustc_version."${deps.im_rc."12.3.4".rustc_version}".default = true;
    sized_chunks."${deps.im_rc."12.3.4".sized_chunks}".default = true;
    typenum."${deps.im_rc."12.3.4".typenum}".default = true;
  }) [
    (features_.sized_chunks."${deps."im_rc"."12.3.4"."sized_chunks"}" deps)
    (features_.typenum."${deps."im_rc"."12.3.4"."typenum"}" deps)
    (features_.rustc_version."${deps."im_rc"."12.3.4"."rustc_version"}" deps)
  ];


# end
# iovec-0.1.2

  crates.iovec."0.1.2" = deps: { features?(features_.iovec."0.1.2" deps {}) }: buildRustCrate {
    crateName = "iovec";
    version = "0.1.2";
    description = "Portable buffer type for scatter/gather I/O operations\n";
    authors = [ "Carl Lerche <me@carllerche.com>" ];
    sha256 = "0vjymmb7wj4v4kza5jjn48fcdb85j3k37y7msjl3ifz0p9yiyp2r";
    dependencies = (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."iovec"."0.1.2"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."iovec"."0.1.2"."winapi"}" deps)
    ]) else []);
  };
  features_.iovec."0.1.2" = deps: f: updateFeatures f ({
    iovec."0.1.2".default = (f.iovec."0.1.2".default or true);
    libc."${deps.iovec."0.1.2".libc}".default = true;
    winapi."${deps.iovec."0.1.2".winapi}".default = true;
  }) [
    (features_.libc."${deps."iovec"."0.1.2"."libc"}" deps)
    (features_.winapi."${deps."iovec"."0.1.2"."winapi"}" deps)
  ];


# end
# itertools-0.7.11

  crates.itertools."0.7.11" = deps: { features?(features_.itertools."0.7.11" deps {}) }: buildRustCrate {
    crateName = "itertools";
    version = "0.7.11";
    description = "Extra iterator adaptors, iterator methods, free functions, and macros.";
    authors = [ "bluss" ];
    sha256 = "0gavmkvn2c3cwfwk5zl5p7saiqn4ww227am5ykn6pgfm7c6ppz56";
    dependencies = mapFeatures features ([
      (crates."either"."${deps."itertools"."0.7.11"."either"}" deps)
    ]);
    features = mkFeatures (features."itertools"."0.7.11" or {});
  };
  features_.itertools."0.7.11" = deps: f: updateFeatures f (rec {
    either."${deps.itertools."0.7.11".either}".default = (f.either."${deps.itertools."0.7.11".either}".default or false);
    itertools = fold recursiveUpdate {} [
      { "0.7.11"."use_std" =
        (f.itertools."0.7.11"."use_std" or false) ||
        (f.itertools."0.7.11".default or false) ||
        (itertools."0.7.11"."default" or false); }
      { "0.7.11".default = (f.itertools."0.7.11".default or true); }
    ];
  }) [
    (features_.either."${deps."itertools"."0.7.11"."either"}" deps)
  ];


# end
# jobserver-0.1.13

  crates.jobserver."0.1.13" = deps: { features?(features_.jobserver."0.1.13" deps {}) }: buildRustCrate {
    crateName = "jobserver";
    version = "0.1.13";
    description = "An implementation of the GNU make jobserver for Rust\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "01h08h0k9i7cvlnlw53jf398d03k5kxrs7m30xl7h9s5dlw0vi9i";
    dependencies = mapFeatures features ([
      (crates."log"."${deps."jobserver"."0.1.13"."log"}" deps)
    ])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."jobserver"."0.1.13"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."rand"."${deps."jobserver"."0.1.13"."rand"}" deps)
    ]) else []);
  };
  features_.jobserver."0.1.13" = deps: f: updateFeatures f ({
    jobserver."0.1.13".default = (f.jobserver."0.1.13".default or true);
    libc."${deps.jobserver."0.1.13".libc}".default = true;
    log."${deps.jobserver."0.1.13".log}".default = true;
    rand."${deps.jobserver."0.1.13".rand}".default = true;
  }) [
    (features_.log."${deps."jobserver"."0.1.13"."log"}" deps)
    (features_.libc."${deps."jobserver"."0.1.13"."libc"}" deps)
    (features_.rand."${deps."jobserver"."0.1.13"."rand"}" deps)
  ];


# end
# kernel32-sys-0.2.2

  crates.kernel32_sys."0.2.2" = deps: { features?(features_.kernel32_sys."0.2.2" deps {}) }: buildRustCrate {
    crateName = "kernel32-sys";
    version = "0.2.2";
    description = "Contains function definitions for the Windows API library kernel32. See winapi for types and constants.";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "1lrw1hbinyvr6cp28g60z97w32w8vsk6pahk64pmrv2fmby8srfj";
    libName = "kernel32";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."winapi"."${deps."kernel32_sys"."0.2.2"."winapi"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."winapi_build"."${deps."kernel32_sys"."0.2.2"."winapi_build"}" deps)
    ]);
  };
  features_.kernel32_sys."0.2.2" = deps: f: updateFeatures f ({
    kernel32_sys."0.2.2".default = (f.kernel32_sys."0.2.2".default or true);
    winapi."${deps.kernel32_sys."0.2.2".winapi}".default = true;
    winapi_build."${deps.kernel32_sys."0.2.2".winapi_build}".default = true;
  }) [
    (features_.winapi."${deps."kernel32_sys"."0.2.2"."winapi"}" deps)
    (features_.winapi_build."${deps."kernel32_sys"."0.2.2"."winapi_build"}" deps)
  ];


# end
# lazycell-1.2.1

  crates.lazycell."1.2.1" = deps: { features?(features_.lazycell."1.2.1" deps {}) }: buildRustCrate {
    crateName = "lazycell";
    version = "1.2.1";
    description = "A library providing a lazily filled Cell struct";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" "Nikita Pekin <contact@nikitapek.in>" ];
    sha256 = "1m4h2q9rgxrgc7xjnws1x81lrb68jll8w3pykx1a9bhr29q2mcwm";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."lazycell"."1.2.1" or {});
  };
  features_.lazycell."1.2.1" = deps: f: updateFeatures f (rec {
    lazycell = fold recursiveUpdate {} [
      { "1.2.1"."clippy" =
        (f.lazycell."1.2.1"."clippy" or false) ||
        (f.lazycell."1.2.1".nightly-testing or false) ||
        (lazycell."1.2.1"."nightly-testing" or false); }
      { "1.2.1"."nightly" =
        (f.lazycell."1.2.1"."nightly" or false) ||
        (f.lazycell."1.2.1".nightly-testing or false) ||
        (lazycell."1.2.1"."nightly-testing" or false); }
      { "1.2.1".default = (f.lazycell."1.2.1".default or true); }
    ];
  }) [];


# end
# libc-0.2.51

  crates.libc."0.2.51" = deps: { features?(features_.libc."0.2.51" deps {}) }: buildRustCrate {
    crateName = "libc";
    version = "0.2.51";
    description = "Raw FFI bindings to platform libraries like libc.\n";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1lzavxj1ymm7vghs6nmzq9shprdlqby73py9k30gwvv0dwy365cv";
    build = "build.rs";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."libc"."0.2.51" or {});
  };
  features_.libc."0.2.51" = deps: f: updateFeatures f (rec {
    libc = fold recursiveUpdate {} [
      { "0.2.51"."align" =
        (f.libc."0.2.51"."align" or false) ||
        (f.libc."0.2.51".rustc-dep-of-std or false) ||
        (libc."0.2.51"."rustc-dep-of-std" or false); }
      { "0.2.51"."rustc-std-workspace-core" =
        (f.libc."0.2.51"."rustc-std-workspace-core" or false) ||
        (f.libc."0.2.51".rustc-dep-of-std or false) ||
        (libc."0.2.51"."rustc-dep-of-std" or false); }
      { "0.2.51"."use_std" =
        (f.libc."0.2.51"."use_std" or false) ||
        (f.libc."0.2.51".default or false) ||
        (libc."0.2.51"."default" or false); }
      { "0.2.51".default = (f.libc."0.2.51".default or true); }
    ];
  }) [];


# end
# libgit2-sys-0.7.11

  crates.libgit2_sys."0.7.11" = deps: { features?(features_.libgit2_sys."0.7.11" deps {}) }: buildRustCrate {
    crateName = "libgit2-sys";
    version = "0.7.11";
    description = "Native bindings to the libgit2 library";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "12wyfl7xl7lpz65s17j5rf9xfkn461792f67jqsz0ign3daaac9h";
    libPath = "lib.rs";
    libName = "libgit2_sys";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."libgit2_sys"."0.7.11"."libc"}" deps)
      (crates."libz_sys"."${deps."libgit2_sys"."0.7.11"."libz_sys"}" deps)
    ]
      ++ (if features.libgit2_sys."0.7.11".curl-sys or false then [ (crates.curl_sys."${deps."libgit2_sys"."0.7.11".curl_sys}" deps) ] else [])
      ++ (if features.libgit2_sys."0.7.11".libssh2-sys or false then [ (crates.libssh2_sys."${deps."libgit2_sys"."0.7.11".libssh2_sys}" deps) ] else []))
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
    ]
      ++ (if features.libgit2_sys."0.7.11".openssl-sys or false then [ (crates.openssl_sys."${deps."libgit2_sys"."0.7.11".openssl_sys}" deps) ] else [])) else []);

    buildDependencies = mapFeatures features ([
      (crates."cc"."${deps."libgit2_sys"."0.7.11"."cc"}" deps)
      (crates."pkg_config"."${deps."libgit2_sys"."0.7.11"."pkg_config"}" deps)
    ]);
    features = mkFeatures (features."libgit2_sys"."0.7.11" or {});
  };
  features_.libgit2_sys."0.7.11" = deps: f: updateFeatures f (rec {
    cc."${deps.libgit2_sys."0.7.11".cc}".default = true;
    curl_sys."${deps.libgit2_sys."0.7.11".curl_sys}".default = true;
    libc."${deps.libgit2_sys."0.7.11".libc}".default = true;
    libgit2_sys = fold recursiveUpdate {} [
      { "0.7.11"."curl-sys" =
        (f.libgit2_sys."0.7.11"."curl-sys" or false) ||
        (f.libgit2_sys."0.7.11".curl or false) ||
        (libgit2_sys."0.7.11"."curl" or false); }
      { "0.7.11"."libssh2-sys" =
        (f.libgit2_sys."0.7.11"."libssh2-sys" or false) ||
        (f.libgit2_sys."0.7.11".ssh or false) ||
        (libgit2_sys."0.7.11"."ssh" or false); }
      { "0.7.11"."openssl-sys" =
        (f.libgit2_sys."0.7.11"."openssl-sys" or false) ||
        (f.libgit2_sys."0.7.11".https or false) ||
        (libgit2_sys."0.7.11"."https" or false); }
      { "0.7.11".default = (f.libgit2_sys."0.7.11".default or true); }
    ];
    libssh2_sys."${deps.libgit2_sys."0.7.11".libssh2_sys}".default = true;
    libz_sys."${deps.libgit2_sys."0.7.11".libz_sys}".default = true;
    openssl_sys."${deps.libgit2_sys."0.7.11".openssl_sys}".default = true;
    pkg_config."${deps.libgit2_sys."0.7.11".pkg_config}".default = true;
  }) [
    (features_.curl_sys."${deps."libgit2_sys"."0.7.11"."curl_sys"}" deps)
    (features_.libc."${deps."libgit2_sys"."0.7.11"."libc"}" deps)
    (features_.libssh2_sys."${deps."libgit2_sys"."0.7.11"."libssh2_sys"}" deps)
    (features_.libz_sys."${deps."libgit2_sys"."0.7.11"."libz_sys"}" deps)
    (features_.cc."${deps."libgit2_sys"."0.7.11"."cc"}" deps)
    (features_.pkg_config."${deps."libgit2_sys"."0.7.11"."pkg_config"}" deps)
    (features_.openssl_sys."${deps."libgit2_sys"."0.7.11"."openssl_sys"}" deps)
  ];


# end
# libnghttp2-sys-0.1.1

  crates.libnghttp2_sys."0.1.1" = deps: { features?(features_.libnghttp2_sys."0.1.1" deps {}) }: buildRustCrate {
    crateName = "libnghttp2-sys";
    version = "0.1.1";
    description = "FFI bindings for libnghttp2 (nghttp2)\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "08z41i7d8pm0jzv6p77kp22hh0a4psdy109n6nxr8x2k1ibjxk8w";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."libnghttp2_sys"."0.1.1"."libc"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."cc"."${deps."libnghttp2_sys"."0.1.1"."cc"}" deps)
    ]);
  };
  features_.libnghttp2_sys."0.1.1" = deps: f: updateFeatures f ({
    cc."${deps.libnghttp2_sys."0.1.1".cc}".default = true;
    libc."${deps.libnghttp2_sys."0.1.1".libc}".default = true;
    libnghttp2_sys."0.1.1".default = (f.libnghttp2_sys."0.1.1".default or true);
  }) [
    (features_.libc."${deps."libnghttp2_sys"."0.1.1"."libc"}" deps)
    (features_.cc."${deps."libnghttp2_sys"."0.1.1"."cc"}" deps)
  ];


# end
# libssh2-sys-0.2.11

  crates.libssh2_sys."0.2.11" = deps: { features?(features_.libssh2_sys."0.2.11" deps {}) }: buildRustCrate {
    crateName = "libssh2-sys";
    version = "0.2.11";
    description = "Native bindings to the libssh2 library";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "1mjily9qjjjf31pzvlxyqnp1midjc77s6sd303j46d14igna7nhi";
    libPath = "lib.rs";
    libName = "libssh2_sys";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."libssh2_sys"."0.2.11"."libc"}" deps)
      (crates."libz_sys"."${deps."libssh2_sys"."0.2.11"."libz_sys"}" deps)
    ])
      ++ (if abi == "msvc" then mapFeatures features ([
]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."openssl_sys"."${deps."libssh2_sys"."0.2.11"."openssl_sys"}" deps)
    ]) else []);

    buildDependencies = mapFeatures features ([
      (crates."cc"."${deps."libssh2_sys"."0.2.11"."cc"}" deps)
      (crates."pkg_config"."${deps."libssh2_sys"."0.2.11"."pkg_config"}" deps)
    ]);
  };
  features_.libssh2_sys."0.2.11" = deps: f: updateFeatures f ({
    cc."${deps.libssh2_sys."0.2.11".cc}".default = true;
    libc."${deps.libssh2_sys."0.2.11".libc}".default = true;
    libssh2_sys."0.2.11".default = (f.libssh2_sys."0.2.11".default or true);
    libz_sys."${deps.libssh2_sys."0.2.11".libz_sys}".default = true;
    openssl_sys."${deps.libssh2_sys."0.2.11".openssl_sys}".default = true;
    pkg_config."${deps.libssh2_sys."0.2.11".pkg_config}".default = true;
  }) [
    (features_.libc."${deps."libssh2_sys"."0.2.11"."libc"}" deps)
    (features_.libz_sys."${deps."libssh2_sys"."0.2.11"."libz_sys"}" deps)
    (features_.cc."${deps."libssh2_sys"."0.2.11"."cc"}" deps)
    (features_.pkg_config."${deps."libssh2_sys"."0.2.11"."pkg_config"}" deps)
    (features_.openssl_sys."${deps."libssh2_sys"."0.2.11"."openssl_sys"}" deps)
  ];


# end
# libz-sys-1.0.25

  crates.libz_sys."1.0.25" = deps: { features?(features_.libz_sys."1.0.25" deps {}) }: buildRustCrate {
    crateName = "libz-sys";
    version = "1.0.25";
    description = "Bindings to the system libz library (also known as zlib).\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "195jzg8mgjbvmkbpx1rzkzrqm0g2fdivk79v44c9lzl64r3f9fym";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."libz_sys"."1.0.25"."libc"}" deps)
    ])
      ++ (if abi == "msvc" then mapFeatures features ([
]) else []);

    buildDependencies = mapFeatures features ([
      (crates."cc"."${deps."libz_sys"."1.0.25"."cc"}" deps)
      (crates."pkg_config"."${deps."libz_sys"."1.0.25"."pkg_config"}" deps)
    ]);
    features = mkFeatures (features."libz_sys"."1.0.25" or {});
  };
  features_.libz_sys."1.0.25" = deps: f: updateFeatures f ({
    cc."${deps.libz_sys."1.0.25".cc}".default = true;
    libc."${deps.libz_sys."1.0.25".libc}".default = true;
    libz_sys."1.0.25".default = (f.libz_sys."1.0.25".default or true);
    pkg_config."${deps.libz_sys."1.0.25".pkg_config}".default = true;
  }) [
    (features_.libc."${deps."libz_sys"."1.0.25"."libc"}" deps)
    (features_.cc."${deps."libz_sys"."1.0.25"."cc"}" deps)
    (features_.pkg_config."${deps."libz_sys"."1.0.25"."pkg_config"}" deps)
  ];


# end
# lock_api-0.1.5

  crates.lock_api."0.1.5" = deps: { features?(features_.lock_api."0.1.5" deps {}) }: buildRustCrate {
    crateName = "lock_api";
    version = "0.1.5";
    description = "Wrappers to create fully-featured Mutex and RwLock types. Compatible with no_std.";
    authors = [ "Amanieu d'Antras <amanieu@gmail.com>" ];
    sha256 = "132sidr5hvjfkaqm3l95zpcpi8yk5ddd0g79zf1ad4v65sxirqqm";
    dependencies = mapFeatures features ([
      (crates."scopeguard"."${deps."lock_api"."0.1.5"."scopeguard"}" deps)
    ]);
    features = mkFeatures (features."lock_api"."0.1.5" or {});
  };
  features_.lock_api."0.1.5" = deps: f: updateFeatures f ({
    lock_api."0.1.5".default = (f.lock_api."0.1.5".default or true);
    scopeguard."${deps.lock_api."0.1.5".scopeguard}".default = (f.scopeguard."${deps.lock_api."0.1.5".scopeguard}".default or false);
  }) [
    (features_.scopeguard."${deps."lock_api"."0.1.5"."scopeguard"}" deps)
  ];


# end
# matrixmultiply-0.1.15

  crates.matrixmultiply."0.1.15" = deps: { features?(features_.matrixmultiply."0.1.15" deps {}) }: buildRustCrate {
    crateName = "matrixmultiply";
    version = "0.1.15";
    description = "General matrix multiplication of f32 and f64 matrices in Rust. Supports matrices with general strides. Uses a microkernel strategy, so that the implementation is easy to parallelize and optimize. `RUSTFLAGS=\"-C target-cpu=native\"` is your friend here.";
    authors = [ "bluss" ];
    sha256 = "0ix1i4lnkfqnzv8f9wr34bf0mlr1sx5hr7yr70k4npxmwxscvdj5";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."rawpointer"."${deps."matrixmultiply"."0.1.15"."rawpointer"}" deps)
    ]);
  };
  features_.matrixmultiply."0.1.15" = deps: f: updateFeatures f ({
    matrixmultiply."0.1.15".default = (f.matrixmultiply."0.1.15".default or true);
    rawpointer."${deps.matrixmultiply."0.1.15".rawpointer}".default = true;
  }) [
    (features_.rawpointer."${deps."matrixmultiply"."0.1.15"."rawpointer"}" deps)
  ];


# end
# miniz-sys-0.1.11

  crates.miniz_sys."0.1.11" = deps: { features?(features_.miniz_sys."0.1.11" deps {}) }: buildRustCrate {
    crateName = "miniz-sys";
    version = "0.1.11";
    description = "Bindings to the miniz.c library.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0l2wsakqjj7kc06dwxlpz4h8wih0f9d1idrz5gb1svipvh81khsm";
    libPath = "lib.rs";
    libName = "miniz_sys";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."miniz_sys"."0.1.11"."libc"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."cc"."${deps."miniz_sys"."0.1.11"."cc"}" deps)
    ]);
  };
  features_.miniz_sys."0.1.11" = deps: f: updateFeatures f ({
    cc."${deps.miniz_sys."0.1.11".cc}".default = true;
    libc."${deps.miniz_sys."0.1.11".libc}".default = true;
    miniz_sys."0.1.11".default = (f.miniz_sys."0.1.11".default or true);
  }) [
    (features_.libc."${deps."miniz_sys"."0.1.11"."libc"}" deps)
    (features_.cc."${deps."miniz_sys"."0.1.11"."cc"}" deps)
  ];


# end
# miniz_oxide-0.2.1

  crates.miniz_oxide."0.2.1" = deps: { features?(features_.miniz_oxide."0.2.1" deps {}) }: buildRustCrate {
    crateName = "miniz_oxide";
    version = "0.2.1";
    description = "DEFLATE compression and decompression library rewritten in Rust based on miniz";
    authors = [ "Frommi <daniil.liferenko@gmail.com>" ];
    sha256 = "1ly14vlk0gq7czi1323l2dsy5y8dpvdwld4h9083i0y3hx9iyfdz";
    dependencies = mapFeatures features ([
      (crates."adler32"."${deps."miniz_oxide"."0.2.1"."adler32"}" deps)
    ]);
  };
  features_.miniz_oxide."0.2.1" = deps: f: updateFeatures f ({
    adler32."${deps.miniz_oxide."0.2.1".adler32}".default = true;
    miniz_oxide."0.2.1".default = (f.miniz_oxide."0.2.1".default or true);
  }) [
    (features_.adler32."${deps."miniz_oxide"."0.2.1"."adler32"}" deps)
  ];


# end
# miniz_oxide_c_api-0.2.1

  crates.miniz_oxide_c_api."0.2.1" = deps: { features?(features_.miniz_oxide_c_api."0.2.1" deps {}) }: buildRustCrate {
    crateName = "miniz_oxide_c_api";
    version = "0.2.1";
    description = "DEFLATE compression and decompression API designed to be Rust drop-in replacement for miniz";
    authors = [ "Frommi <daniil.liferenko@gmail.com>" ];
    sha256 = "1zsk334nhy2rvyhbr0815l0gp6w40al6rxxafkycaafx3m9j8cj2";
    build = "src/build.rs";
    dependencies = mapFeatures features ([
      (crates."crc"."${deps."miniz_oxide_c_api"."0.2.1"."crc"}" deps)
      (crates."libc"."${deps."miniz_oxide_c_api"."0.2.1"."libc"}" deps)
      (crates."miniz_oxide"."${deps."miniz_oxide_c_api"."0.2.1"."miniz_oxide"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."cc"."${deps."miniz_oxide_c_api"."0.2.1"."cc"}" deps)
    ]);
    features = mkFeatures (features."miniz_oxide_c_api"."0.2.1" or {});
  };
  features_.miniz_oxide_c_api."0.2.1" = deps: f: updateFeatures f (rec {
    cc."${deps.miniz_oxide_c_api."0.2.1".cc}".default = true;
    crc."${deps.miniz_oxide_c_api."0.2.1".crc}".default = true;
    libc."${deps.miniz_oxide_c_api."0.2.1".libc}".default = true;
    miniz_oxide."${deps.miniz_oxide_c_api."0.2.1".miniz_oxide}".default = true;
    miniz_oxide_c_api = fold recursiveUpdate {} [
      { "0.2.1"."build_orig_miniz" =
        (f.miniz_oxide_c_api."0.2.1"."build_orig_miniz" or false) ||
        (f.miniz_oxide_c_api."0.2.1".benching or false) ||
        (miniz_oxide_c_api."0.2.1"."benching" or false) ||
        (f.miniz_oxide_c_api."0.2.1".fuzzing or false) ||
        (miniz_oxide_c_api."0.2.1"."fuzzing" or false); }
      { "0.2.1"."build_stub_miniz" =
        (f.miniz_oxide_c_api."0.2.1"."build_stub_miniz" or false) ||
        (f.miniz_oxide_c_api."0.2.1".miniz_zip or false) ||
        (miniz_oxide_c_api."0.2.1"."miniz_zip" or false); }
      { "0.2.1"."no_c_export" =
        (f.miniz_oxide_c_api."0.2.1"."no_c_export" or false) ||
        (f.miniz_oxide_c_api."0.2.1".benching or false) ||
        (miniz_oxide_c_api."0.2.1"."benching" or false) ||
        (f.miniz_oxide_c_api."0.2.1".fuzzing or false) ||
        (miniz_oxide_c_api."0.2.1"."fuzzing" or false); }
      { "0.2.1".default = (f.miniz_oxide_c_api."0.2.1".default or true); }
    ];
  }) [
    (features_.crc."${deps."miniz_oxide_c_api"."0.2.1"."crc"}" deps)
    (features_.libc."${deps."miniz_oxide_c_api"."0.2.1"."libc"}" deps)
    (features_.miniz_oxide."${deps."miniz_oxide_c_api"."0.2.1"."miniz_oxide"}" deps)
    (features_.cc."${deps."miniz_oxide_c_api"."0.2.1"."cc"}" deps)
  ];


# end
# miow-0.3.3

  crates.miow."0.3.3" = deps: { features?(features_.miow."0.3.3" deps {}) }: buildRustCrate {
    crateName = "miow";
    version = "0.3.3";
    description = "A zero overhead I/O library for Windows, focusing on IOCP and Async I/O\nabstractions.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "1mlk5mn00cl6bmf8qlpc6r85dxf4l45vbkbzshsr1mrkb3hn1j57";
    dependencies = mapFeatures features ([
      (crates."socket2"."${deps."miow"."0.3.3"."socket2"}" deps)
      (crates."winapi"."${deps."miow"."0.3.3"."winapi"}" deps)
    ]);
  };
  features_.miow."0.3.3" = deps: f: updateFeatures f ({
    miow."0.3.3".default = (f.miow."0.3.3".default or true);
    socket2."${deps.miow."0.3.3".socket2}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.miow."0.3.3".winapi}"."fileapi" = true; }
      { "${deps.miow."0.3.3".winapi}"."handleapi" = true; }
      { "${deps.miow."0.3.3".winapi}"."ioapiset" = true; }
      { "${deps.miow."0.3.3".winapi}"."minwindef" = true; }
      { "${deps.miow."0.3.3".winapi}"."namedpipeapi" = true; }
      { "${deps.miow."0.3.3".winapi}"."ntdef" = true; }
      { "${deps.miow."0.3.3".winapi}"."std" = true; }
      { "${deps.miow."0.3.3".winapi}"."synchapi" = true; }
      { "${deps.miow."0.3.3".winapi}"."winerror" = true; }
      { "${deps.miow."0.3.3".winapi}"."winsock2" = true; }
      { "${deps.miow."0.3.3".winapi}"."ws2def" = true; }
      { "${deps.miow."0.3.3".winapi}"."ws2ipdef" = true; }
      { "${deps.miow."0.3.3".winapi}".default = true; }
    ];
  }) [
    (features_.socket2."${deps."miow"."0.3.3"."socket2"}" deps)
    (features_.winapi."${deps."miow"."0.3.3"."winapi"}" deps)
  ];


# end
# ndarray-0.12.1

  crates.ndarray."0.12.1" = deps: { features?(features_.ndarray."0.12.1" deps {}) }: buildRustCrate {
    crateName = "ndarray";
    version = "0.12.1";
    description = "An n-dimensional array for general elements and for numerics. Lightweight array views and slicing; views support chunking and splitting.";
    authors = [ "bluss" "Jim Turner" ];
    sha256 = "13708k97kdjfj6g4z1yapjln0v4m7zj0114h8snw44fj79l00346";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."itertools"."${deps."ndarray"."0.12.1"."itertools"}" deps)
      (crates."matrixmultiply"."${deps."ndarray"."0.12.1"."matrixmultiply"}" deps)
      (crates."num_complex"."${deps."ndarray"."0.12.1"."num_complex"}" deps)
      (crates."num_traits"."${deps."ndarray"."0.12.1"."num_traits"}" deps)
    ]);
    features = mkFeatures (features."ndarray"."0.12.1" or {});
  };
  features_.ndarray."0.12.1" = deps: f: updateFeatures f (rec {
    itertools."${deps.ndarray."0.12.1".itertools}".default = (f.itertools."${deps.ndarray."0.12.1".itertools}".default or false);
    matrixmultiply."${deps.ndarray."0.12.1".matrixmultiply}".default = true;
    ndarray = fold recursiveUpdate {} [
      { "0.12.1"."blas" =
        (f.ndarray."0.12.1"."blas" or false) ||
        (f.ndarray."0.12.1".test-blas-openblas-sys or false) ||
        (ndarray."0.12.1"."test-blas-openblas-sys" or false); }
      { "0.12.1"."blas-src" =
        (f.ndarray."0.12.1"."blas-src" or false) ||
        (f.ndarray."0.12.1".blas or false) ||
        (ndarray."0.12.1"."blas" or false); }
      { "0.12.1"."cblas-sys" =
        (f.ndarray."0.12.1"."cblas-sys" or false) ||
        (f.ndarray."0.12.1".blas or false) ||
        (ndarray."0.12.1"."blas" or false); }
      { "0.12.1"."rustc-serialize" =
        (f.ndarray."0.12.1"."rustc-serialize" or false) ||
        (f.ndarray."0.12.1".docs or false) ||
        (ndarray."0.12.1"."docs" or false); }
      { "0.12.1"."serde" =
        (f.ndarray."0.12.1"."serde" or false) ||
        (f.ndarray."0.12.1".serde-1 or false) ||
        (ndarray."0.12.1"."serde-1" or false); }
      { "0.12.1"."serde-1" =
        (f.ndarray."0.12.1"."serde-1" or false) ||
        (f.ndarray."0.12.1".docs or false) ||
        (ndarray."0.12.1"."docs" or false); }
      { "0.12.1"."test-blas-openblas-sys" =
        (f.ndarray."0.12.1"."test-blas-openblas-sys" or false) ||
        (f.ndarray."0.12.1".test or false) ||
        (ndarray."0.12.1"."test" or false); }
      { "0.12.1".default = (f.ndarray."0.12.1".default or true); }
    ];
    num_complex."${deps.ndarray."0.12.1".num_complex}".default = true;
    num_traits."${deps.ndarray."0.12.1".num_traits}".default = true;
  }) [
    (features_.itertools."${deps."ndarray"."0.12.1"."itertools"}" deps)
    (features_.matrixmultiply."${deps."ndarray"."0.12.1"."matrixmultiply"}" deps)
    (features_.num_complex."${deps."ndarray"."0.12.1"."num_complex"}" deps)
    (features_.num_traits."${deps."ndarray"."0.12.1"."num_traits"}" deps)
  ];


# end
# num-complex-0.2.1

  crates.num_complex."0.2.1" = deps: { features?(features_.num_complex."0.2.1" deps {}) }: buildRustCrate {
    crateName = "num-complex";
    version = "0.2.1";
    description = "Complex numbers implementation for Rust";
    authors = [ "The Rust Project Developers" ];
    sha256 = "12lpp62ahc80p33cpw2771l8bwl0q13rl5vq0jzkqib1l5z8q80z";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."num_traits"."${deps."num_complex"."0.2.1"."num_traits"}" deps)
    ]);
    features = mkFeatures (features."num_complex"."0.2.1" or {});
  };
  features_.num_complex."0.2.1" = deps: f: updateFeatures f (rec {
    num_complex = fold recursiveUpdate {} [
      { "0.2.1"."std" =
        (f.num_complex."0.2.1"."std" or false) ||
        (f.num_complex."0.2.1".default or false) ||
        (num_complex."0.2.1"."default" or false); }
      { "0.2.1".default = (f.num_complex."0.2.1".default or true); }
    ];
    num_traits = fold recursiveUpdate {} [
      { "${deps.num_complex."0.2.1".num_traits}"."i128" =
        (f.num_traits."${deps.num_complex."0.2.1".num_traits}"."i128" or false) ||
        (num_complex."0.2.1"."i128" or false) ||
        (f."num_complex"."0.2.1"."i128" or false); }
      { "${deps.num_complex."0.2.1".num_traits}"."std" =
        (f.num_traits."${deps.num_complex."0.2.1".num_traits}"."std" or false) ||
        (num_complex."0.2.1"."std" or false) ||
        (f."num_complex"."0.2.1"."std" or false); }
      { "${deps.num_complex."0.2.1".num_traits}".default = (f.num_traits."${deps.num_complex."0.2.1".num_traits}".default or false); }
    ];
  }) [
    (features_.num_traits."${deps."num_complex"."0.2.1"."num_traits"}" deps)
  ];


# end
# num-traits-0.2.6

  crates.num_traits."0.2.6" = deps: { features?(features_.num_traits."0.2.6" deps {}) }: buildRustCrate {
    crateName = "num-traits";
    version = "0.2.6";
    description = "Numeric traits for generic mathematics";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1d20sil9n0wgznd1nycm3yjfj1mzyl41ambb7by1apxlyiil1azk";
    build = "build.rs";
    features = mkFeatures (features."num_traits"."0.2.6" or {});
  };
  features_.num_traits."0.2.6" = deps: f: updateFeatures f (rec {
    num_traits = fold recursiveUpdate {} [
      { "0.2.6"."std" =
        (f.num_traits."0.2.6"."std" or false) ||
        (f.num_traits."0.2.6".default or false) ||
        (num_traits."0.2.6"."default" or false); }
      { "0.2.6".default = (f.num_traits."0.2.6".default or true); }
    ];
  }) [];


# end
# num_cpus-1.10.0

  crates.num_cpus."1.10.0" = deps: { features?(features_.num_cpus."1.10.0" deps {}) }: buildRustCrate {
    crateName = "num_cpus";
    version = "1.10.0";
    description = "Get the number of CPUs on a machine.";
    authors = [ "Sean McArthur <sean@seanmonstar.com>" ];
    sha256 = "1411jyxy1wd8d59mv7cf6ynkvvar92czmwhb9l2c1brdkxbbiqn7";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."num_cpus"."1.10.0"."libc"}" deps)
    ]);
  };
  features_.num_cpus."1.10.0" = deps: f: updateFeatures f ({
    libc."${deps.num_cpus."1.10.0".libc}".default = true;
    num_cpus."1.10.0".default = (f.num_cpus."1.10.0".default or true);
  }) [
    (features_.libc."${deps."num_cpus"."1.10.0"."libc"}" deps)
  ];


# end
# once_cell-0.1.8

  crates.once_cell."0.1.8" = deps: { features?(features_.once_cell."0.1.8" deps {}) }: buildRustCrate {
    crateName = "once_cell";
    version = "0.1.8";
    description = "Single assignment cells and lazy static values without macros.";
    authors = [ "Aleksey Kladov <aleksey.kladov@gmail.com>" ];
    sha256 = "1n1da1x3cf3qbq9a925pimy6i0r12gcicwqjxc63nfb2bnzkg074";
    dependencies = mapFeatures features ([
    ]
      ++ (if features.once_cell."0.1.8".parking_lot or false then [ (crates.parking_lot."${deps."once_cell"."0.1.8".parking_lot}" deps) ] else []));
    features = mkFeatures (features."once_cell"."0.1.8" or {});
  };
  features_.once_cell."0.1.8" = deps: f: updateFeatures f (rec {
    once_cell = fold recursiveUpdate {} [
      { "0.1.8"."parking_lot" =
        (f.once_cell."0.1.8"."parking_lot" or false) ||
        (f.once_cell."0.1.8".default or false) ||
        (once_cell."0.1.8"."default" or false); }
      { "0.1.8".default = (f.once_cell."0.1.8".default or true); }
    ];
    parking_lot."${deps.once_cell."0.1.8".parking_lot}".default = true;
  }) [
    (features_.parking_lot."${deps."once_cell"."0.1.8"."parking_lot"}" deps)
  ];


# end
# opener-0.3.2

  crates.opener."0.3.2" = deps: { features?(features_.opener."0.3.2" deps {}) }: buildRustCrate {
    crateName = "opener";
    version = "0.3.2";
    description = "Open a file or link using the system default program.";
    authors = [ "Brian Bowman <seeker14491@gmail.com>" ];
    sha256 = "1ql2snax07n3xxn4nz9r6d95rhrri66qy5s5zl9jfsdbs193hzcm";
    dependencies = mapFeatures features ([
      (crates."failure"."${deps."opener"."0.3.2"."failure"}" deps)
      (crates."failure_derive"."${deps."opener"."0.3.2"."failure_derive"}" deps)
    ])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."opener"."0.3.2"."winapi"}" deps)
    ]) else []);
  };
  features_.opener."0.3.2" = deps: f: updateFeatures f ({
    failure."${deps.opener."0.3.2".failure}".default = true;
    failure_derive."${deps.opener."0.3.2".failure_derive}".default = true;
    opener."0.3.2".default = (f.opener."0.3.2".default or true);
    winapi = fold recursiveUpdate {} [
      { "${deps.opener."0.3.2".winapi}"."shellapi" = true; }
      { "${deps.opener."0.3.2".winapi}".default = true; }
    ];
  }) [
    (features_.failure."${deps."opener"."0.3.2"."failure"}" deps)
    (features_.failure_derive."${deps."opener"."0.3.2"."failure_derive"}" deps)
    (features_.winapi."${deps."opener"."0.3.2"."winapi"}" deps)
  ];


# end
# openssl-0.10.20

  crates.openssl."0.10.20" = deps: { features?(features_.openssl."0.10.20" deps {}) }: buildRustCrate {
    crateName = "openssl";
    version = "0.10.20";
    description = "OpenSSL bindings";
    authors = [ "Steven Fackler <sfackler@gmail.com>" ];
    sha256 = "1y3zkq988vx48a4j0i23mr7vm1wy5w71yws2v6hyf4vb5iw3r5s5";
    dependencies = mapFeatures features ([
      (crates."bitflags"."${deps."openssl"."0.10.20"."bitflags"}" deps)
      (crates."cfg_if"."${deps."openssl"."0.10.20"."cfg_if"}" deps)
      (crates."foreign_types"."${deps."openssl"."0.10.20"."foreign_types"}" deps)
      (crates."lazy_static"."${deps."openssl"."0.10.20"."lazy_static"}" deps)
      (crates."libc"."${deps."openssl"."0.10.20"."libc"}" deps)
      (crates."openssl_sys"."${deps."openssl"."0.10.20"."openssl_sys"}" deps)
    ]);
    features = mkFeatures (features."openssl"."0.10.20" or {});
  };
  features_.openssl."0.10.20" = deps: f: updateFeatures f (rec {
    bitflags."${deps.openssl."0.10.20".bitflags}".default = true;
    cfg_if."${deps.openssl."0.10.20".cfg_if}".default = true;
    foreign_types."${deps.openssl."0.10.20".foreign_types}".default = true;
    lazy_static."${deps.openssl."0.10.20".lazy_static}".default = true;
    libc."${deps.openssl."0.10.20".libc}".default = true;
    openssl."0.10.20".default = (f.openssl."0.10.20".default or true);
    openssl_sys = fold recursiveUpdate {} [
      { "${deps.openssl."0.10.20".openssl_sys}"."vendored" =
        (f.openssl_sys."${deps.openssl."0.10.20".openssl_sys}"."vendored" or false) ||
        (openssl."0.10.20"."vendored" or false) ||
        (f."openssl"."0.10.20"."vendored" or false); }
      { "${deps.openssl."0.10.20".openssl_sys}".default = true; }
    ];
  }) [
    (features_.bitflags."${deps."openssl"."0.10.20"."bitflags"}" deps)
    (features_.cfg_if."${deps."openssl"."0.10.20"."cfg_if"}" deps)
    (features_.foreign_types."${deps."openssl"."0.10.20"."foreign_types"}" deps)
    (features_.lazy_static."${deps."openssl"."0.10.20"."lazy_static"}" deps)
    (features_.libc."${deps."openssl"."0.10.20"."libc"}" deps)
    (features_.openssl_sys."${deps."openssl"."0.10.20"."openssl_sys"}" deps)
  ];


# end
# openssl-probe-0.1.2

  crates.openssl_probe."0.1.2" = deps: { features?(features_.openssl_probe."0.1.2" deps {}) }: buildRustCrate {
    crateName = "openssl-probe";
    version = "0.1.2";
    description = "Tool for helping to find SSL certificate locations on the system for OpenSSL\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "1a89fznx26vvaxyrxdvgf6iwai5xvs6xjvpjin68fgvrslv6n15a";
  };
  features_.openssl_probe."0.1.2" = deps: f: updateFeatures f ({
    openssl_probe."0.1.2".default = (f.openssl_probe."0.1.2".default or true);
  }) [];


# end
# openssl-src-111.2.1+1.1.1b

  crates.openssl_src."111.2.1+1.1.1b" = deps: { features?(features_.openssl_src."111.2.1+1.1.1b" deps {}) }: buildRustCrate {
    crateName = "openssl-src";
    version = "111.2.1+1.1.1b";
    description = "Source of OpenSSL and logic to build it.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0gfa29r16ds88a3sjcgkc2q5dkhgnxk58gly313r05xqj4zi2pxc";
    dependencies = mapFeatures features ([
      (crates."cc"."${deps."openssl_src"."111.2.1+1.1.1b"."cc"}" deps)
    ]);
  };
  features_.openssl_src."111.2.1+1.1.1b" = deps: f: updateFeatures f ({
    cc."${deps.openssl_src."111.2.1+1.1.1b".cc}".default = true;
    openssl_src."111.2.1+1.1.1b".default = (f.openssl_src."111.2.1+1.1.1b".default or true);
  }) [
    (features_.cc."${deps."openssl_src"."111.2.1+1.1.1b"."cc"}" deps)
  ];


# end
# openssl-sys-0.9.43

  crates.openssl_sys."0.9.43" = deps: { features?(features_.openssl_sys."0.9.43" deps {}) }: buildRustCrate {
    crateName = "openssl-sys";
    version = "0.9.43";
    description = "FFI bindings to OpenSSL";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" "Steven Fackler <sfackler@gmail.com>" ];
    sha256 = "1ip0f94jakr85pxjhrkg9w9lgiiy1yga3ckm6c8xb13klsr7ky9y";
    build = "build/main.rs";
    dependencies = mapFeatures features ([
      (crates."libc"."${deps."openssl_sys"."0.9.43"."libc"}" deps)
    ])
      ++ (if abi == "msvc" then mapFeatures features ([
]) else []);

    buildDependencies = mapFeatures features ([
      (crates."cc"."${deps."openssl_sys"."0.9.43"."cc"}" deps)
      (crates."pkg_config"."${deps."openssl_sys"."0.9.43"."pkg_config"}" deps)
      (crates."rustc_version"."${deps."openssl_sys"."0.9.43"."rustc_version"}" deps)
    ]
      ++ (if features.openssl_sys."0.9.43".openssl-src or false then [ (crates.openssl_src."${deps."openssl_sys"."0.9.43".openssl_src}" deps) ] else []));
    features = mkFeatures (features."openssl_sys"."0.9.43" or {});
  };
  features_.openssl_sys."0.9.43" = deps: f: updateFeatures f (rec {
    cc."${deps.openssl_sys."0.9.43".cc}".default = true;
    libc."${deps.openssl_sys."0.9.43".libc}".default = true;
    openssl_src."${deps.openssl_sys."0.9.43".openssl_src}".default = true;
    openssl_sys = fold recursiveUpdate {} [
      { "0.9.43"."openssl-src" =
        (f.openssl_sys."0.9.43"."openssl-src" or false) ||
        (f.openssl_sys."0.9.43".vendored or false) ||
        (openssl_sys."0.9.43"."vendored" or false); }
      { "0.9.43".default = (f.openssl_sys."0.9.43".default or true); }
    ];
    pkg_config."${deps.openssl_sys."0.9.43".pkg_config}".default = true;
    rustc_version."${deps.openssl_sys."0.9.43".rustc_version}".default = true;
  }) [
    (features_.libc."${deps."openssl_sys"."0.9.43"."libc"}" deps)
    (features_.cc."${deps."openssl_sys"."0.9.43"."cc"}" deps)
    (features_.openssl_src."${deps."openssl_sys"."0.9.43"."openssl_src"}" deps)
    (features_.pkg_config."${deps."openssl_sys"."0.9.43"."pkg_config"}" deps)
    (features_.rustc_version."${deps."openssl_sys"."0.9.43"."rustc_version"}" deps)
  ];


# end
# parking_lot-0.7.1

  crates.parking_lot."0.7.1" = deps: { features?(features_.parking_lot."0.7.1" deps {}) }: buildRustCrate {
    crateName = "parking_lot";
    version = "0.7.1";
    description = "More compact and efficient implementations of the standard synchronization primitives.";
    authors = [ "Amanieu d'Antras <amanieu@gmail.com>" ];
    sha256 = "1qpb49xd176hqqabxdb48f1hvylfbf68rpz8yfrhw0x68ys0lkq1";
    dependencies = mapFeatures features ([
      (crates."lock_api"."${deps."parking_lot"."0.7.1"."lock_api"}" deps)
      (crates."parking_lot_core"."${deps."parking_lot"."0.7.1"."parking_lot_core"}" deps)
    ]);
    features = mkFeatures (features."parking_lot"."0.7.1" or {});
  };
  features_.parking_lot."0.7.1" = deps: f: updateFeatures f (rec {
    lock_api = fold recursiveUpdate {} [
      { "${deps.parking_lot."0.7.1".lock_api}"."nightly" =
        (f.lock_api."${deps.parking_lot."0.7.1".lock_api}"."nightly" or false) ||
        (parking_lot."0.7.1"."nightly" or false) ||
        (f."parking_lot"."0.7.1"."nightly" or false); }
      { "${deps.parking_lot."0.7.1".lock_api}"."owning_ref" =
        (f.lock_api."${deps.parking_lot."0.7.1".lock_api}"."owning_ref" or false) ||
        (parking_lot."0.7.1"."owning_ref" or false) ||
        (f."parking_lot"."0.7.1"."owning_ref" or false); }
      { "${deps.parking_lot."0.7.1".lock_api}".default = true; }
    ];
    parking_lot = fold recursiveUpdate {} [
      { "0.7.1"."owning_ref" =
        (f.parking_lot."0.7.1"."owning_ref" or false) ||
        (f.parking_lot."0.7.1".default or false) ||
        (parking_lot."0.7.1"."default" or false); }
      { "0.7.1".default = (f.parking_lot."0.7.1".default or true); }
    ];
    parking_lot_core = fold recursiveUpdate {} [
      { "${deps.parking_lot."0.7.1".parking_lot_core}"."deadlock_detection" =
        (f.parking_lot_core."${deps.parking_lot."0.7.1".parking_lot_core}"."deadlock_detection" or false) ||
        (parking_lot."0.7.1"."deadlock_detection" or false) ||
        (f."parking_lot"."0.7.1"."deadlock_detection" or false); }
      { "${deps.parking_lot."0.7.1".parking_lot_core}"."nightly" =
        (f.parking_lot_core."${deps.parking_lot."0.7.1".parking_lot_core}"."nightly" or false) ||
        (parking_lot."0.7.1"."nightly" or false) ||
        (f."parking_lot"."0.7.1"."nightly" or false); }
      { "${deps.parking_lot."0.7.1".parking_lot_core}".default = true; }
    ];
  }) [
    (features_.lock_api."${deps."parking_lot"."0.7.1"."lock_api"}" deps)
    (features_.parking_lot_core."${deps."parking_lot"."0.7.1"."parking_lot_core"}" deps)
  ];


# end
# parking_lot_core-0.4.0

  crates.parking_lot_core."0.4.0" = deps: { features?(features_.parking_lot_core."0.4.0" deps {}) }: buildRustCrate {
    crateName = "parking_lot_core";
    version = "0.4.0";
    description = "An advanced API for creating custom synchronization primitives.";
    authors = [ "Amanieu d'Antras <amanieu@gmail.com>" ];
    sha256 = "1mzk5i240ddvhwnz65hhjk4cq61z235g1n8bd7al4mg6vx437c16";
    dependencies = mapFeatures features ([
      (crates."rand"."${deps."parking_lot_core"."0.4.0"."rand"}" deps)
      (crates."smallvec"."${deps."parking_lot_core"."0.4.0"."smallvec"}" deps)
    ])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."parking_lot_core"."0.4.0"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."parking_lot_core"."0.4.0"."winapi"}" deps)
    ]) else []);

    buildDependencies = mapFeatures features ([
      (crates."rustc_version"."${deps."parking_lot_core"."0.4.0"."rustc_version"}" deps)
    ]);
    features = mkFeatures (features."parking_lot_core"."0.4.0" or {});
  };
  features_.parking_lot_core."0.4.0" = deps: f: updateFeatures f (rec {
    libc."${deps.parking_lot_core."0.4.0".libc}".default = true;
    parking_lot_core = fold recursiveUpdate {} [
      { "0.4.0"."backtrace" =
        (f.parking_lot_core."0.4.0"."backtrace" or false) ||
        (f.parking_lot_core."0.4.0".deadlock_detection or false) ||
        (parking_lot_core."0.4.0"."deadlock_detection" or false); }
      { "0.4.0"."petgraph" =
        (f.parking_lot_core."0.4.0"."petgraph" or false) ||
        (f.parking_lot_core."0.4.0".deadlock_detection or false) ||
        (parking_lot_core."0.4.0"."deadlock_detection" or false); }
      { "0.4.0"."thread-id" =
        (f.parking_lot_core."0.4.0"."thread-id" or false) ||
        (f.parking_lot_core."0.4.0".deadlock_detection or false) ||
        (parking_lot_core."0.4.0"."deadlock_detection" or false); }
      { "0.4.0".default = (f.parking_lot_core."0.4.0".default or true); }
    ];
    rand."${deps.parking_lot_core."0.4.0".rand}".default = true;
    rustc_version."${deps.parking_lot_core."0.4.0".rustc_version}".default = true;
    smallvec."${deps.parking_lot_core."0.4.0".smallvec}".default = true;
    winapi = fold recursiveUpdate {} [
      { "${deps.parking_lot_core."0.4.0".winapi}"."errhandlingapi" = true; }
      { "${deps.parking_lot_core."0.4.0".winapi}"."handleapi" = true; }
      { "${deps.parking_lot_core."0.4.0".winapi}"."minwindef" = true; }
      { "${deps.parking_lot_core."0.4.0".winapi}"."ntstatus" = true; }
      { "${deps.parking_lot_core."0.4.0".winapi}"."winbase" = true; }
      { "${deps.parking_lot_core."0.4.0".winapi}"."winerror" = true; }
      { "${deps.parking_lot_core."0.4.0".winapi}"."winnt" = true; }
      { "${deps.parking_lot_core."0.4.0".winapi}".default = true; }
    ];
  }) [
    (features_.rand."${deps."parking_lot_core"."0.4.0"."rand"}" deps)
    (features_.smallvec."${deps."parking_lot_core"."0.4.0"."smallvec"}" deps)
    (features_.rustc_version."${deps."parking_lot_core"."0.4.0"."rustc_version"}" deps)
    (features_.libc."${deps."parking_lot_core"."0.4.0"."libc"}" deps)
    (features_.winapi."${deps."parking_lot_core"."0.4.0"."winapi"}" deps)
  ];


# end
# pkg-config-0.3.14

  crates.pkg_config."0.3.14" = deps: { features?(features_.pkg_config."0.3.14" deps {}) }: buildRustCrate {
    crateName = "pkg-config";
    version = "0.3.14";
    description = "A library to run the pkg-config system tool at build time in order to be used in\nCargo build scripts.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0207fsarrm412j0dh87lfcas72n8mxar7q3mgflsbsrqnb140sv6";
  };
  features_.pkg_config."0.3.14" = deps: f: updateFeatures f ({
    pkg_config."0.3.14".default = (f.pkg_config."0.3.14".default or true);
  }) [];


# end
# quote-0.6.12

  crates.quote."0.6.12" = deps: { features?(features_.quote."0.6.12" deps {}) }: buildRustCrate {
    crateName = "quote";
    version = "0.6.12";
    description = "Quasi-quoting macro quote!(...)";
    authors = [ "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "1ckd2d2sy0hrwrqcr47dn0n3hyh7ygpc026l8xaycccyg27mihv9";
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."quote"."0.6.12"."proc_macro2"}" deps)
    ]);
    features = mkFeatures (features."quote"."0.6.12" or {});
  };
  features_.quote."0.6.12" = deps: f: updateFeatures f (rec {
    proc_macro2 = fold recursiveUpdate {} [
      { "${deps.quote."0.6.12".proc_macro2}"."proc-macro" =
        (f.proc_macro2."${deps.quote."0.6.12".proc_macro2}"."proc-macro" or false) ||
        (quote."0.6.12"."proc-macro" or false) ||
        (f."quote"."0.6.12"."proc-macro" or false); }
      { "${deps.quote."0.6.12".proc_macro2}".default = (f.proc_macro2."${deps.quote."0.6.12".proc_macro2}".default or false); }
    ];
    quote = fold recursiveUpdate {} [
      { "0.6.12"."proc-macro" =
        (f.quote."0.6.12"."proc-macro" or false) ||
        (f.quote."0.6.12".default or false) ||
        (quote."0.6.12"."default" or false); }
      { "0.6.12".default = (f.quote."0.6.12".default or true); }
    ];
  }) [
    (features_.proc_macro2."${deps."quote"."0.6.12"."proc_macro2"}" deps)
  ];


# end
# rand-0.6.5

  crates.rand."0.6.5" = deps: { features?(features_.rand."0.6.5" deps {}) }: buildRustCrate {
    crateName = "rand";
    version = "0.6.5";
    description = "Random number generators and other randomness functionality.\n";
    authors = [ "The Rand Project Developers" "The Rust Project Developers" ];
    sha256 = "0zbck48159aj8zrwzf80sd9xxh96w4f4968nshwjpysjvflimvgb";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."rand_chacha"."${deps."rand"."0.6.5"."rand_chacha"}" deps)
      (crates."rand_core"."${deps."rand"."0.6.5"."rand_core"}" deps)
      (crates."rand_hc"."${deps."rand"."0.6.5"."rand_hc"}" deps)
      (crates."rand_isaac"."${deps."rand"."0.6.5"."rand_isaac"}" deps)
      (crates."rand_jitter"."${deps."rand"."0.6.5"."rand_jitter"}" deps)
      (crates."rand_pcg"."${deps."rand"."0.6.5"."rand_pcg"}" deps)
      (crates."rand_xorshift"."${deps."rand"."0.6.5"."rand_xorshift"}" deps)
    ]
      ++ (if features.rand."0.6.5".rand_os or false then [ (crates.rand_os."${deps."rand"."0.6.5".rand_os}" deps) ] else []))
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."rand"."0.6.5"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."rand"."0.6.5"."winapi"}" deps)
    ]) else []);

    buildDependencies = mapFeatures features ([
      (crates."autocfg"."${deps."rand"."0.6.5"."autocfg"}" deps)
    ]);
    features = mkFeatures (features."rand"."0.6.5" or {});
  };
  features_.rand."0.6.5" = deps: f: updateFeatures f (rec {
    autocfg."${deps.rand."0.6.5".autocfg}".default = true;
    libc."${deps.rand."0.6.5".libc}".default = (f.libc."${deps.rand."0.6.5".libc}".default or false);
    rand = fold recursiveUpdate {} [
      { "0.6.5"."alloc" =
        (f.rand."0.6.5"."alloc" or false) ||
        (f.rand."0.6.5".std or false) ||
        (rand."0.6.5"."std" or false); }
      { "0.6.5"."packed_simd" =
        (f.rand."0.6.5"."packed_simd" or false) ||
        (f.rand."0.6.5".simd_support or false) ||
        (rand."0.6.5"."simd_support" or false); }
      { "0.6.5"."rand_os" =
        (f.rand."0.6.5"."rand_os" or false) ||
        (f.rand."0.6.5".std or false) ||
        (rand."0.6.5"."std" or false); }
      { "0.6.5"."simd_support" =
        (f.rand."0.6.5"."simd_support" or false) ||
        (f.rand."0.6.5".nightly or false) ||
        (rand."0.6.5"."nightly" or false); }
      { "0.6.5"."std" =
        (f.rand."0.6.5"."std" or false) ||
        (f.rand."0.6.5".default or false) ||
        (rand."0.6.5"."default" or false); }
      { "0.6.5".default = (f.rand."0.6.5".default or true); }
    ];
    rand_chacha."${deps.rand."0.6.5".rand_chacha}".default = true;
    rand_core = fold recursiveUpdate {} [
      { "${deps.rand."0.6.5".rand_core}"."alloc" =
        (f.rand_core."${deps.rand."0.6.5".rand_core}"."alloc" or false) ||
        (rand."0.6.5"."alloc" or false) ||
        (f."rand"."0.6.5"."alloc" or false); }
      { "${deps.rand."0.6.5".rand_core}"."serde1" =
        (f.rand_core."${deps.rand."0.6.5".rand_core}"."serde1" or false) ||
        (rand."0.6.5"."serde1" or false) ||
        (f."rand"."0.6.5"."serde1" or false); }
      { "${deps.rand."0.6.5".rand_core}"."std" =
        (f.rand_core."${deps.rand."0.6.5".rand_core}"."std" or false) ||
        (rand."0.6.5"."std" or false) ||
        (f."rand"."0.6.5"."std" or false); }
      { "${deps.rand."0.6.5".rand_core}".default = true; }
    ];
    rand_hc."${deps.rand."0.6.5".rand_hc}".default = true;
    rand_isaac = fold recursiveUpdate {} [
      { "${deps.rand."0.6.5".rand_isaac}"."serde1" =
        (f.rand_isaac."${deps.rand."0.6.5".rand_isaac}"."serde1" or false) ||
        (rand."0.6.5"."serde1" or false) ||
        (f."rand"."0.6.5"."serde1" or false); }
      { "${deps.rand."0.6.5".rand_isaac}".default = true; }
    ];
    rand_jitter = fold recursiveUpdate {} [
      { "${deps.rand."0.6.5".rand_jitter}"."std" =
        (f.rand_jitter."${deps.rand."0.6.5".rand_jitter}"."std" or false) ||
        (rand."0.6.5"."std" or false) ||
        (f."rand"."0.6.5"."std" or false); }
      { "${deps.rand."0.6.5".rand_jitter}".default = true; }
    ];
    rand_os = fold recursiveUpdate {} [
      { "${deps.rand."0.6.5".rand_os}"."stdweb" =
        (f.rand_os."${deps.rand."0.6.5".rand_os}"."stdweb" or false) ||
        (rand."0.6.5"."stdweb" or false) ||
        (f."rand"."0.6.5"."stdweb" or false); }
      { "${deps.rand."0.6.5".rand_os}"."wasm-bindgen" =
        (f.rand_os."${deps.rand."0.6.5".rand_os}"."wasm-bindgen" or false) ||
        (rand."0.6.5"."wasm-bindgen" or false) ||
        (f."rand"."0.6.5"."wasm-bindgen" or false); }
      { "${deps.rand."0.6.5".rand_os}".default = true; }
    ];
    rand_pcg."${deps.rand."0.6.5".rand_pcg}".default = true;
    rand_xorshift = fold recursiveUpdate {} [
      { "${deps.rand."0.6.5".rand_xorshift}"."serde1" =
        (f.rand_xorshift."${deps.rand."0.6.5".rand_xorshift}"."serde1" or false) ||
        (rand."0.6.5"."serde1" or false) ||
        (f."rand"."0.6.5"."serde1" or false); }
      { "${deps.rand."0.6.5".rand_xorshift}".default = true; }
    ];
    winapi = fold recursiveUpdate {} [
      { "${deps.rand."0.6.5".winapi}"."minwindef" = true; }
      { "${deps.rand."0.6.5".winapi}"."ntsecapi" = true; }
      { "${deps.rand."0.6.5".winapi}"."profileapi" = true; }
      { "${deps.rand."0.6.5".winapi}"."winnt" = true; }
      { "${deps.rand."0.6.5".winapi}".default = true; }
    ];
  }) [
    (features_.rand_chacha."${deps."rand"."0.6.5"."rand_chacha"}" deps)
    (features_.rand_core."${deps."rand"."0.6.5"."rand_core"}" deps)
    (features_.rand_hc."${deps."rand"."0.6.5"."rand_hc"}" deps)
    (features_.rand_isaac."${deps."rand"."0.6.5"."rand_isaac"}" deps)
    (features_.rand_jitter."${deps."rand"."0.6.5"."rand_jitter"}" deps)
    (features_.rand_os."${deps."rand"."0.6.5"."rand_os"}" deps)
    (features_.rand_pcg."${deps."rand"."0.6.5"."rand_pcg"}" deps)
    (features_.rand_xorshift."${deps."rand"."0.6.5"."rand_xorshift"}" deps)
    (features_.autocfg."${deps."rand"."0.6.5"."autocfg"}" deps)
    (features_.libc."${deps."rand"."0.6.5"."libc"}" deps)
    (features_.winapi."${deps."rand"."0.6.5"."winapi"}" deps)
  ];


# end
# rand_chacha-0.1.1

  crates.rand_chacha."0.1.1" = deps: { features?(features_.rand_chacha."0.1.1" deps {}) }: buildRustCrate {
    crateName = "rand_chacha";
    version = "0.1.1";
    description = "ChaCha random number generator\n";
    authors = [ "The Rand Project Developers" "The Rust Project Developers" ];
    sha256 = "0xnxm4mjd7wjnh18zxc1yickw58axbycp35ciraplqdfwn1gffwi";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rand_chacha"."0.1.1"."rand_core"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."autocfg"."${deps."rand_chacha"."0.1.1"."autocfg"}" deps)
    ]);
  };
  features_.rand_chacha."0.1.1" = deps: f: updateFeatures f ({
    autocfg."${deps.rand_chacha."0.1.1".autocfg}".default = true;
    rand_chacha."0.1.1".default = (f.rand_chacha."0.1.1".default or true);
    rand_core."${deps.rand_chacha."0.1.1".rand_core}".default = (f.rand_core."${deps.rand_chacha."0.1.1".rand_core}".default or false);
  }) [
    (features_.rand_core."${deps."rand_chacha"."0.1.1"."rand_core"}" deps)
    (features_.autocfg."${deps."rand_chacha"."0.1.1"."autocfg"}" deps)
  ];


# end
# rand_hc-0.1.0

  crates.rand_hc."0.1.0" = deps: { features?(features_.rand_hc."0.1.0" deps {}) }: buildRustCrate {
    crateName = "rand_hc";
    version = "0.1.0";
    description = "HC128 random number generator\n";
    authors = [ "The Rand Project Developers" ];
    sha256 = "05agb75j87yp7y1zk8yf7bpm66hc0673r3dlypn0kazynr6fdgkz";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rand_hc"."0.1.0"."rand_core"}" deps)
    ]);
  };
  features_.rand_hc."0.1.0" = deps: f: updateFeatures f ({
    rand_core."${deps.rand_hc."0.1.0".rand_core}".default = (f.rand_core."${deps.rand_hc."0.1.0".rand_core}".default or false);
    rand_hc."0.1.0".default = (f.rand_hc."0.1.0".default or true);
  }) [
    (features_.rand_core."${deps."rand_hc"."0.1.0"."rand_core"}" deps)
  ];


# end
# rand_isaac-0.1.1

  crates.rand_isaac."0.1.1" = deps: { features?(features_.rand_isaac."0.1.1" deps {}) }: buildRustCrate {
    crateName = "rand_isaac";
    version = "0.1.1";
    description = "ISAAC random number generator\n";
    authors = [ "The Rand Project Developers" "The Rust Project Developers" ];
    sha256 = "10hhdh5b5sa03s6b63y9bafm956jwilx41s71jbrzl63ccx8lxdq";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rand_isaac"."0.1.1"."rand_core"}" deps)
    ]);
    features = mkFeatures (features."rand_isaac"."0.1.1" or {});
  };
  features_.rand_isaac."0.1.1" = deps: f: updateFeatures f (rec {
    rand_core = fold recursiveUpdate {} [
      { "${deps.rand_isaac."0.1.1".rand_core}"."serde1" =
        (f.rand_core."${deps.rand_isaac."0.1.1".rand_core}"."serde1" or false) ||
        (rand_isaac."0.1.1"."serde1" or false) ||
        (f."rand_isaac"."0.1.1"."serde1" or false); }
      { "${deps.rand_isaac."0.1.1".rand_core}".default = (f.rand_core."${deps.rand_isaac."0.1.1".rand_core}".default or false); }
    ];
    rand_isaac = fold recursiveUpdate {} [
      { "0.1.1"."serde" =
        (f.rand_isaac."0.1.1"."serde" or false) ||
        (f.rand_isaac."0.1.1".serde1 or false) ||
        (rand_isaac."0.1.1"."serde1" or false); }
      { "0.1.1"."serde_derive" =
        (f.rand_isaac."0.1.1"."serde_derive" or false) ||
        (f.rand_isaac."0.1.1".serde1 or false) ||
        (rand_isaac."0.1.1"."serde1" or false); }
      { "0.1.1".default = (f.rand_isaac."0.1.1".default or true); }
    ];
  }) [
    (features_.rand_core."${deps."rand_isaac"."0.1.1"."rand_core"}" deps)
  ];


# end
# rand_jitter-0.1.3

  crates.rand_jitter."0.1.3" = deps: { features?(features_.rand_jitter."0.1.3" deps {}) }: buildRustCrate {
    crateName = "rand_jitter";
    version = "0.1.3";
    description = "Random number generator based on timing jitter";
    authors = [ "The Rand Project Developers" ];
    sha256 = "1cb4q73rmh1inlx3liy6rabapcqh6p6c1plsd2lxw6dmi67d1qc3";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rand_jitter"."0.1.3"."rand_core"}" deps)
    ])
      ++ (if kernel == "darwin" || kernel == "ios" then mapFeatures features ([
      (crates."libc"."${deps."rand_jitter"."0.1.3"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."rand_jitter"."0.1.3"."winapi"}" deps)
    ]) else []);
    features = mkFeatures (features."rand_jitter"."0.1.3" or {});
  };
  features_.rand_jitter."0.1.3" = deps: f: updateFeatures f (rec {
    libc."${deps.rand_jitter."0.1.3".libc}".default = true;
    rand_core = fold recursiveUpdate {} [
      { "${deps.rand_jitter."0.1.3".rand_core}"."std" =
        (f.rand_core."${deps.rand_jitter."0.1.3".rand_core}"."std" or false) ||
        (rand_jitter."0.1.3"."std" or false) ||
        (f."rand_jitter"."0.1.3"."std" or false); }
      { "${deps.rand_jitter."0.1.3".rand_core}".default = true; }
    ];
    rand_jitter."0.1.3".default = (f.rand_jitter."0.1.3".default or true);
    winapi = fold recursiveUpdate {} [
      { "${deps.rand_jitter."0.1.3".winapi}"."profileapi" = true; }
      { "${deps.rand_jitter."0.1.3".winapi}".default = true; }
    ];
  }) [
    (features_.rand_core."${deps."rand_jitter"."0.1.3"."rand_core"}" deps)
    (features_.libc."${deps."rand_jitter"."0.1.3"."libc"}" deps)
    (features_.winapi."${deps."rand_jitter"."0.1.3"."winapi"}" deps)
  ];


# end
# rand_pcg-0.1.2

  crates.rand_pcg."0.1.2" = deps: { features?(features_.rand_pcg."0.1.2" deps {}) }: buildRustCrate {
    crateName = "rand_pcg";
    version = "0.1.2";
    description = "Selected PCG random number generators\n";
    authors = [ "The Rand Project Developers" ];
    sha256 = "04qgi2ai2z42li5h4aawvxbpnlqyjfnipz9d6k73mdnl6p1xq938";
    build = "build.rs";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rand_pcg"."0.1.2"."rand_core"}" deps)
    ]);

    buildDependencies = mapFeatures features ([
      (crates."autocfg"."${deps."rand_pcg"."0.1.2"."autocfg"}" deps)
    ]);
    features = mkFeatures (features."rand_pcg"."0.1.2" or {});
  };
  features_.rand_pcg."0.1.2" = deps: f: updateFeatures f (rec {
    autocfg."${deps.rand_pcg."0.1.2".autocfg}".default = true;
    rand_core."${deps.rand_pcg."0.1.2".rand_core}".default = true;
    rand_pcg = fold recursiveUpdate {} [
      { "0.1.2"."serde" =
        (f.rand_pcg."0.1.2"."serde" or false) ||
        (f.rand_pcg."0.1.2".serde1 or false) ||
        (rand_pcg."0.1.2"."serde1" or false); }
      { "0.1.2"."serde_derive" =
        (f.rand_pcg."0.1.2"."serde_derive" or false) ||
        (f.rand_pcg."0.1.2".serde1 or false) ||
        (rand_pcg."0.1.2"."serde1" or false); }
      { "0.1.2".default = (f.rand_pcg."0.1.2".default or true); }
    ];
  }) [
    (features_.rand_core."${deps."rand_pcg"."0.1.2"."rand_core"}" deps)
    (features_.autocfg."${deps."rand_pcg"."0.1.2"."autocfg"}" deps)
  ];


# end
# rand_xorshift-0.1.1

  crates.rand_xorshift."0.1.1" = deps: { features?(features_.rand_xorshift."0.1.1" deps {}) }: buildRustCrate {
    crateName = "rand_xorshift";
    version = "0.1.1";
    description = "Xorshift random number generator\n";
    authors = [ "The Rand Project Developers" "The Rust Project Developers" ];
    sha256 = "0v365c4h4lzxwz5k5kp9m0661s0sss7ylv74if0xb4svis9sswnn";
    dependencies = mapFeatures features ([
      (crates."rand_core"."${deps."rand_xorshift"."0.1.1"."rand_core"}" deps)
    ]);
    features = mkFeatures (features."rand_xorshift"."0.1.1" or {});
  };
  features_.rand_xorshift."0.1.1" = deps: f: updateFeatures f (rec {
    rand_core."${deps.rand_xorshift."0.1.1".rand_core}".default = (f.rand_core."${deps.rand_xorshift."0.1.1".rand_core}".default or false);
    rand_xorshift = fold recursiveUpdate {} [
      { "0.1.1"."serde" =
        (f.rand_xorshift."0.1.1"."serde" or false) ||
        (f.rand_xorshift."0.1.1".serde1 or false) ||
        (rand_xorshift."0.1.1"."serde1" or false); }
      { "0.1.1"."serde_derive" =
        (f.rand_xorshift."0.1.1"."serde_derive" or false) ||
        (f.rand_xorshift."0.1.1".serde1 or false) ||
        (rand_xorshift."0.1.1"."serde1" or false); }
      { "0.1.1".default = (f.rand_xorshift."0.1.1".default or true); }
    ];
  }) [
    (features_.rand_core."${deps."rand_xorshift"."0.1.1"."rand_core"}" deps)
  ];


# end
# rawpointer-0.1.0

  crates.rawpointer."0.1.0" = deps: { features?(features_.rawpointer."0.1.0" deps {}) }: buildRustCrate {
    crateName = "rawpointer";
    version = "0.1.0";
    description = "Extra methods for raw pointers.\n\nFor example `.post_inc()` and `.pre_dec()` (c.f. `ptr++` and `--ptr`) and\n`ptrdistance`.\n";
    authors = [ "bluss" ];
    sha256 = "0hblv2cv310ixf5f1jw4nk9w5pb95wh4dwqyjv07g2xrshbw6j04";
  };
  features_.rawpointer."0.1.0" = deps: f: updateFeatures f ({
    rawpointer."0.1.0".default = (f.rawpointer."0.1.0".default or true);
  }) [];


# end
# redox_syscall-0.1.54

  crates.redox_syscall."0.1.54" = deps: { features?(features_.redox_syscall."0.1.54" deps {}) }: buildRustCrate {
    crateName = "redox_syscall";
    version = "0.1.54";
    description = "A Rust library to access raw Redox system calls";
    authors = [ "Jeremy Soller <jackpot51@gmail.com>" ];
    sha256 = "1ndcp7brnvii87ndcd34fk846498r07iznphkslcy0shic9cp4rr";
    libName = "syscall";
  };
  features_.redox_syscall."0.1.54" = deps: f: updateFeatures f ({
    redox_syscall."0.1.54".default = (f.redox_syscall."0.1.54".default or true);
  }) [];


# end
# regex-1.1.6

  crates.regex."1.1.6" = deps: { features?(features_.regex."1.1.6" deps {}) }: buildRustCrate {
    crateName = "regex";
    version = "1.1.6";
    description = "An implementation of regular expressions for Rust. This implementation uses\nfinite automata and guarantees linear time matching on all inputs.\n";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1yynvabg03m5f65qxcw70qckkfjwi9xyfpjdp6yq7pk0xf0ydc0b";
    dependencies = mapFeatures features ([
      (crates."aho_corasick"."${deps."regex"."1.1.6"."aho_corasick"}" deps)
      (crates."memchr"."${deps."regex"."1.1.6"."memchr"}" deps)
      (crates."regex_syntax"."${deps."regex"."1.1.6"."regex_syntax"}" deps)
      (crates."thread_local"."${deps."regex"."1.1.6"."thread_local"}" deps)
      (crates."utf8_ranges"."${deps."regex"."1.1.6"."utf8_ranges"}" deps)
    ]);
    features = mkFeatures (features."regex"."1.1.6" or {});
  };
  features_.regex."1.1.6" = deps: f: updateFeatures f (rec {
    aho_corasick."${deps.regex."1.1.6".aho_corasick}".default = true;
    memchr."${deps.regex."1.1.6".memchr}".default = true;
    regex = fold recursiveUpdate {} [
      { "1.1.6"."pattern" =
        (f.regex."1.1.6"."pattern" or false) ||
        (f.regex."1.1.6".unstable or false) ||
        (regex."1.1.6"."unstable" or false); }
      { "1.1.6"."use_std" =
        (f.regex."1.1.6"."use_std" or false) ||
        (f.regex."1.1.6".default or false) ||
        (regex."1.1.6"."default" or false); }
      { "1.1.6".default = (f.regex."1.1.6".default or true); }
    ];
    regex_syntax."${deps.regex."1.1.6".regex_syntax}".default = true;
    thread_local."${deps.regex."1.1.6".thread_local}".default = true;
    utf8_ranges."${deps.regex."1.1.6".utf8_ranges}".default = true;
  }) [
    (features_.aho_corasick."${deps."regex"."1.1.6"."aho_corasick"}" deps)
    (features_.memchr."${deps."regex"."1.1.6"."memchr"}" deps)
    (features_.regex_syntax."${deps."regex"."1.1.6"."regex_syntax"}" deps)
    (features_.thread_local."${deps."regex"."1.1.6"."thread_local"}" deps)
    (features_.utf8_ranges."${deps."regex"."1.1.6"."utf8_ranges"}" deps)
  ];


# end
# regex-syntax-0.6.6

  crates.regex_syntax."0.6.6" = deps: { features?(features_.regex_syntax."0.6.6" deps {}) }: buildRustCrate {
    crateName = "regex-syntax";
    version = "0.6.6";
    description = "A regular expression parser.";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1cjrdc3affa3rjfaxkp91xnf9k0fsqn9z4xqc280vv39nvrl8p8b";
    dependencies = mapFeatures features ([
      (crates."ucd_util"."${deps."regex_syntax"."0.6.6"."ucd_util"}" deps)
    ]);
  };
  features_.regex_syntax."0.6.6" = deps: f: updateFeatures f ({
    regex_syntax."0.6.6".default = (f.regex_syntax."0.6.6".default or true);
    ucd_util."${deps.regex_syntax."0.6.6".ucd_util}".default = true;
  }) [
    (features_.ucd_util."${deps."regex_syntax"."0.6.6"."ucd_util"}" deps)
  ];


# end
# rustc-demangle-0.1.14

  crates.rustc_demangle."0.1.14" = deps: { features?(features_.rustc_demangle."0.1.14" deps {}) }: buildRustCrate {
    crateName = "rustc-demangle";
    version = "0.1.14";
    description = "Rust compiler symbol demangling.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "07vl0ms3a27fpry9kh9piv08w7d51i5m7bgphk7pw4jygwzdy31f";
    dependencies = mapFeatures features ([
]);
    features = mkFeatures (features."rustc_demangle"."0.1.14" or {});
  };
  features_.rustc_demangle."0.1.14" = deps: f: updateFeatures f (rec {
    rustc_demangle = fold recursiveUpdate {} [
      { "0.1.14"."compiler_builtins" =
        (f.rustc_demangle."0.1.14"."compiler_builtins" or false) ||
        (f.rustc_demangle."0.1.14".rustc-dep-of-std or false) ||
        (rustc_demangle."0.1.14"."rustc-dep-of-std" or false); }
      { "0.1.14"."core" =
        (f.rustc_demangle."0.1.14"."core" or false) ||
        (f.rustc_demangle."0.1.14".rustc-dep-of-std or false) ||
        (rustc_demangle."0.1.14"."rustc-dep-of-std" or false); }
      { "0.1.14".default = (f.rustc_demangle."0.1.14".default or true); }
    ];
  }) [];


# end
# rustc-workspace-hack-1.0.0

  crates.rustc_workspace_hack."1.0.0" = deps: { features?(features_.rustc_workspace_hack."1.0.0" deps {}) }: buildRustCrate {
    crateName = "rustc-workspace-hack";
    version = "1.0.0";
    description = "Hack for the compiler's own build system\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "0arpdp472j4lrwxbmf4z21d8kh95rbbphnzccf605pqq2rvczv3p";
  };
  features_.rustc_workspace_hack."1.0.0" = deps: f: updateFeatures f ({
    rustc_workspace_hack."1.0.0".default = (f.rustc_workspace_hack."1.0.0".default or true);
  }) [];


# end
# rustc_version-0.2.3

  crates.rustc_version."0.2.3" = deps: { features?(features_.rustc_version."0.2.3" deps {}) }: buildRustCrate {
    crateName = "rustc_version";
    version = "0.2.3";
    description = "A library for querying the version of a installed rustc compiler";
    authors = [ "Marvin L??bel <loebel.marvin@gmail.com>" ];
    sha256 = "0rgwzbgs3i9fqjm1p4ra3n7frafmpwl29c8lw85kv1rxn7n2zaa7";
    dependencies = mapFeatures features ([
      (crates."semver"."${deps."rustc_version"."0.2.3"."semver"}" deps)
    ]);
  };
  features_.rustc_version."0.2.3" = deps: f: updateFeatures f ({
    rustc_version."0.2.3".default = (f.rustc_version."0.2.3".default or true);
    semver."${deps.rustc_version."0.2.3".semver}".default = true;
  }) [
    (features_.semver."${deps."rustc_version"."0.2.3"."semver"}" deps)
  ];


# end
# rustfix-0.4.5

  crates.rustfix."0.4.5" = deps: { features?(features_.rustfix."0.4.5" deps {}) }: buildRustCrate {
    crateName = "rustfix";
    version = "0.4.5";
    description = "Automatically apply the suggestions made by rustc";
    authors = [ "Pascal Hertleif <killercup@gmail.com>" "Oliver Schneider <oli-obk@users.noreply.github.com>" ];
    sha256 = "16nz3wbxspl6awwy3k3ym8yqiyq1jad82m2cf8mrz5h3arfp208l";
    dependencies = mapFeatures features ([
      (crates."failure"."${deps."rustfix"."0.4.5"."failure"}" deps)
      (crates."log"."${deps."rustfix"."0.4.5"."log"}" deps)
      (crates."serde"."${deps."rustfix"."0.4.5"."serde"}" deps)
      (crates."serde_derive"."${deps."rustfix"."0.4.5"."serde_derive"}" deps)
      (crates."serde_json"."${deps."rustfix"."0.4.5"."serde_json"}" deps)
    ]);
  };
  features_.rustfix."0.4.5" = deps: f: updateFeatures f ({
    failure."${deps.rustfix."0.4.5".failure}".default = true;
    log."${deps.rustfix."0.4.5".log}".default = true;
    rustfix."0.4.5".default = (f.rustfix."0.4.5".default or true);
    serde."${deps.rustfix."0.4.5".serde}".default = true;
    serde_derive."${deps.rustfix."0.4.5".serde_derive}".default = true;
    serde_json."${deps.rustfix."0.4.5".serde_json}".default = true;
  }) [
    (features_.failure."${deps."rustfix"."0.4.5"."failure"}" deps)
    (features_.log."${deps."rustfix"."0.4.5"."log"}" deps)
    (features_.serde."${deps."rustfix"."0.4.5"."serde"}" deps)
    (features_.serde_derive."${deps."rustfix"."0.4.5"."serde_derive"}" deps)
    (features_.serde_json."${deps."rustfix"."0.4.5"."serde_json"}" deps)
  ];


# end
# same-file-1.0.4

  crates.same_file."1.0.4" = deps: { features?(features_.same_file."1.0.4" deps {}) }: buildRustCrate {
    crateName = "same-file";
    version = "1.0.4";
    description = "A simple crate for determining whether two file paths point to the same file.\n";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "1zs244ssl381cqlnh2g42g3i60qip4z72i26z44d6kas3y3gy77q";
    dependencies = (if kernel == "windows" then mapFeatures features ([
      (crates."winapi_util"."${deps."same_file"."1.0.4"."winapi_util"}" deps)
    ]) else []);
  };
  features_.same_file."1.0.4" = deps: f: updateFeatures f ({
    same_file."1.0.4".default = (f.same_file."1.0.4".default or true);
    winapi_util."${deps.same_file."1.0.4".winapi_util}".default = true;
  }) [
    (features_.winapi_util."${deps."same_file"."1.0.4"."winapi_util"}" deps)
  ];


# end
# schannel-0.1.15

  crates.schannel."0.1.15" = deps: { features?(features_.schannel."0.1.15" deps {}) }: buildRustCrate {
    crateName = "schannel";
    version = "0.1.15";
    description = "Schannel bindings for rust, allowing SSL/TLS (e.g. https) without openssl";
    authors = [ "Steven Fackler <sfackler@gmail.com>" "Steffen Butzer <steffen.butzer@outlook.com>" ];
    sha256 = "1x9i0z9y8n5cg23ppyglgqdlz6rwcv2a489m5qpfk6l2ib8a1jdv";
    dependencies = mapFeatures features ([
      (crates."lazy_static"."${deps."schannel"."0.1.15"."lazy_static"}" deps)
      (crates."winapi"."${deps."schannel"."0.1.15"."winapi"}" deps)
    ]);
  };
  features_.schannel."0.1.15" = deps: f: updateFeatures f ({
    lazy_static."${deps.schannel."0.1.15".lazy_static}".default = true;
    schannel."0.1.15".default = (f.schannel."0.1.15".default or true);
    winapi = fold recursiveUpdate {} [
      { "${deps.schannel."0.1.15".winapi}"."lmcons" = true; }
      { "${deps.schannel."0.1.15".winapi}"."minschannel" = true; }
      { "${deps.schannel."0.1.15".winapi}"."schannel" = true; }
      { "${deps.schannel."0.1.15".winapi}"."securitybaseapi" = true; }
      { "${deps.schannel."0.1.15".winapi}"."sspi" = true; }
      { "${deps.schannel."0.1.15".winapi}"."sysinfoapi" = true; }
      { "${deps.schannel."0.1.15".winapi}"."timezoneapi" = true; }
      { "${deps.schannel."0.1.15".winapi}"."winbase" = true; }
      { "${deps.schannel."0.1.15".winapi}"."wincrypt" = true; }
      { "${deps.schannel."0.1.15".winapi}"."winerror" = true; }
      { "${deps.schannel."0.1.15".winapi}".default = true; }
    ];
  }) [
    (features_.lazy_static."${deps."schannel"."0.1.15"."lazy_static"}" deps)
    (features_.winapi."${deps."schannel"."0.1.15"."winapi"}" deps)
  ];


# end
# scopeguard-0.3.3

  crates.scopeguard."0.3.3" = deps: { features?(features_.scopeguard."0.3.3" deps {}) }: buildRustCrate {
    crateName = "scopeguard";
    version = "0.3.3";
    description = "A RAII scope guard that will run a given closure when it goes out of scope,\neven if the code between panics (assuming unwinding panic).\n\nDefines the macros `defer!` and `defer_on_unwind!`; the latter only runs\nif the scope is extited through unwinding on panic.\n";
    authors = [ "bluss" ];
    sha256 = "0i1l013csrqzfz6c68pr5pi01hg5v5yahq8fsdmaxy6p8ygsjf3r";
    features = mkFeatures (features."scopeguard"."0.3.3" or {});
  };
  features_.scopeguard."0.3.3" = deps: f: updateFeatures f (rec {
    scopeguard = fold recursiveUpdate {} [
      { "0.3.3"."use_std" =
        (f.scopeguard."0.3.3"."use_std" or false) ||
        (f.scopeguard."0.3.3".default or false) ||
        (scopeguard."0.3.3"."default" or false); }
      { "0.3.3".default = (f.scopeguard."0.3.3".default or true); }
    ];
  }) [];


# end
# semver-0.9.0

  crates.semver."0.9.0" = deps: { features?(features_.semver."0.9.0" deps {}) }: buildRustCrate {
    crateName = "semver";
    version = "0.9.0";
    description = "Semantic version parsing and comparison.\n";
    authors = [ "Steve Klabnik <steve@steveklabnik.com>" "The Rust Project Developers" ];
    sha256 = "0azak2lb2wc36s3x15az886kck7rpnksrw14lalm157rg9sc9z63";
    dependencies = mapFeatures features ([
      (crates."semver_parser"."${deps."semver"."0.9.0"."semver_parser"}" deps)
    ]
      ++ (if features.semver."0.9.0".serde or false then [ (crates.serde."${deps."semver"."0.9.0".serde}" deps) ] else []));
    features = mkFeatures (features."semver"."0.9.0" or {});
  };
  features_.semver."0.9.0" = deps: f: updateFeatures f (rec {
    semver = fold recursiveUpdate {} [
      { "0.9.0"."serde" =
        (f.semver."0.9.0"."serde" or false) ||
        (f.semver."0.9.0".ci or false) ||
        (semver."0.9.0"."ci" or false); }
      { "0.9.0".default = (f.semver."0.9.0".default or true); }
    ];
    semver_parser."${deps.semver."0.9.0".semver_parser}".default = true;
    serde."${deps.semver."0.9.0".serde}".default = true;
  }) [
    (features_.semver_parser."${deps."semver"."0.9.0"."semver_parser"}" deps)
    (features_.serde."${deps."semver"."0.9.0"."serde"}" deps)
  ];


# end
# semver-parser-0.7.0

  crates.semver_parser."0.7.0" = deps: { features?(features_.semver_parser."0.7.0" deps {}) }: buildRustCrate {
    crateName = "semver-parser";
    version = "0.7.0";
    description = "Parsing of the semver spec.\n";
    authors = [ "Steve Klabnik <steve@steveklabnik.com>" ];
    sha256 = "1da66c8413yakx0y15k8c055yna5lyb6fr0fw9318kdwkrk5k12h";
  };
  features_.semver_parser."0.7.0" = deps: f: updateFeatures f ({
    semver_parser."0.7.0".default = (f.semver_parser."0.7.0".default or true);
  }) [];


# end
# serde-1.0.90

  crates.serde."1.0.90" = deps: { features?(features_.serde."1.0.90" deps {}) }: buildRustCrate {
    crateName = "serde";
    version = "1.0.90";
    description = "A generic serialization/deserialization framework";
    authors = [ "Erick Tryzelaar <erick.tryzelaar@gmail.com>" "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "10b6n74m1dvb667vrn1db47ncb4h0mkqbg1dsamqjvv5vl5b5j56";
    build = "build.rs";
    dependencies = mapFeatures features ([
    ]
      ++ (if features.serde."1.0.90".serde_derive or false then [ (crates.serde_derive."${deps."serde"."1.0.90".serde_derive}" deps) ] else []));
    features = mkFeatures (features."serde"."1.0.90" or {});
  };
  features_.serde."1.0.90" = deps: f: updateFeatures f (rec {
    serde = fold recursiveUpdate {} [
      { "1.0.90"."serde_derive" =
        (f.serde."1.0.90"."serde_derive" or false) ||
        (f.serde."1.0.90".derive or false) ||
        (serde."1.0.90"."derive" or false); }
      { "1.0.90"."std" =
        (f.serde."1.0.90"."std" or false) ||
        (f.serde."1.0.90".default or false) ||
        (serde."1.0.90"."default" or false); }
      { "1.0.90"."unstable" =
        (f.serde."1.0.90"."unstable" or false) ||
        (f.serde."1.0.90".alloc or false) ||
        (serde."1.0.90"."alloc" or false); }
      { "1.0.90".default = (f.serde."1.0.90".default or true); }
    ];
    serde_derive."${deps.serde."1.0.90".serde_derive}".default = true;
  }) [
    (features_.serde_derive."${deps."serde"."1.0.90"."serde_derive"}" deps)
  ];


# end
# serde_derive-1.0.90

  crates.serde_derive."1.0.90" = deps: { features?(features_.serde_derive."1.0.90" deps {}) }: buildRustCrate {
    crateName = "serde_derive";
    version = "1.0.90";
    description = "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]";
    authors = [ "Erick Tryzelaar <erick.tryzelaar@gmail.com>" "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "1m4xgyl8jj3mxj0wszminzc1qf2gbkj9dpl17vi95nwl6m7i157y";
    procMacro = true;
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."serde_derive"."1.0.90"."proc_macro2"}" deps)
      (crates."quote"."${deps."serde_derive"."1.0.90"."quote"}" deps)
      (crates."syn"."${deps."serde_derive"."1.0.90"."syn"}" deps)
    ]);
    features = mkFeatures (features."serde_derive"."1.0.90" or {});
  };
  features_.serde_derive."1.0.90" = deps: f: updateFeatures f ({
    proc_macro2."${deps.serde_derive."1.0.90".proc_macro2}".default = true;
    quote."${deps.serde_derive."1.0.90".quote}".default = true;
    serde_derive."1.0.90".default = (f.serde_derive."1.0.90".default or true);
    syn = fold recursiveUpdate {} [
      { "${deps.serde_derive."1.0.90".syn}"."visit" = true; }
      { "${deps.serde_derive."1.0.90".syn}".default = true; }
    ];
  }) [
    (features_.proc_macro2."${deps."serde_derive"."1.0.90"."proc_macro2"}" deps)
    (features_.quote."${deps."serde_derive"."1.0.90"."quote"}" deps)
    (features_.syn."${deps."serde_derive"."1.0.90"."syn"}" deps)
  ];


# end
# serde_ignored-0.0.4

  crates.serde_ignored."0.0.4" = deps: { features?(features_.serde_ignored."0.0.4" deps {}) }: buildRustCrate {
    crateName = "serde_ignored";
    version = "0.0.4";
    description = "Find out about keys that are ignored when deserializing data";
    authors = [ "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "1ljsywm58p1s645rg2l9mchc5xa6mzxjpm8ag8nc2b74yp09h4jh";
    dependencies = mapFeatures features ([
      (crates."serde"."${deps."serde_ignored"."0.0.4"."serde"}" deps)
    ]);
  };
  features_.serde_ignored."0.0.4" = deps: f: updateFeatures f ({
    serde."${deps.serde_ignored."0.0.4".serde}".default = true;
    serde_ignored."0.0.4".default = (f.serde_ignored."0.0.4".default or true);
  }) [
    (features_.serde."${deps."serde_ignored"."0.0.4"."serde"}" deps)
  ];


# end
# shell-escape-0.1.4

  crates.shell_escape."0.1.4" = deps: { features?(features_.shell_escape."0.1.4" deps {}) }: buildRustCrate {
    crateName = "shell-escape";
    version = "0.1.4";
    description = "Escape characters that may have a special meaning in a shell";
    authors = [ "Steven Fackler <sfackler@gmail.com>" ];
    sha256 = "02ik28la039b8anx0sx8mbdp2yx66m64mjrjyy6x0dgpbmfxmc24";
  };
  features_.shell_escape."0.1.4" = deps: f: updateFeatures f ({
    shell_escape."0.1.4".default = (f.shell_escape."0.1.4".default or true);
  }) [];


# end
# sized-chunks-0.1.3

  crates.sized_chunks."0.1.3" = deps: { features?(features_.sized_chunks."0.1.3" deps {}) }: buildRustCrate {
    crateName = "sized-chunks";
    version = "0.1.3";
    description = "Efficient sized chunk datatypes";
    authors = [ "Bodil Stokke <bodil@bodil.org>" ];
    edition = "2018";
    sha256 = "0qp5yvy2kqpk5qhiq3ybwynv740j3wv97ar1kjx96hmmbman142i";
    dependencies = mapFeatures features ([
      (crates."typenum"."${deps."sized_chunks"."0.1.3"."typenum"}" deps)
    ]);
  };
  features_.sized_chunks."0.1.3" = deps: f: updateFeatures f ({
    sized_chunks."0.1.3".default = (f.sized_chunks."0.1.3".default or true);
    typenum."${deps.sized_chunks."0.1.3".typenum}".default = true;
  }) [
    (features_.typenum."${deps."sized_chunks"."0.1.3"."typenum"}" deps)
  ];


# end
# socket2-0.3.8

  crates.socket2."0.3.8" = deps: { features?(features_.socket2."0.3.8" deps {}) }: buildRustCrate {
    crateName = "socket2";
    version = "0.3.8";
    description = "Utilities for handling networking sockets with a maximal amount of configuration\npossible intended.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "1a71m20jxmf9kqqinksphc7wj1j7q672q29cpza7p9siyzyfx598";
    dependencies = (if (kernel == "linux" || kernel == "darwin") || kernel == "redox" then mapFeatures features ([
      (crates."cfg_if"."${deps."socket2"."0.3.8"."cfg_if"}" deps)
      (crates."libc"."${deps."socket2"."0.3.8"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "redox" then mapFeatures features ([
      (crates."redox_syscall"."${deps."socket2"."0.3.8"."redox_syscall"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."socket2"."0.3.8"."winapi"}" deps)
    ]) else []);
    features = mkFeatures (features."socket2"."0.3.8" or {});
  };
  features_.socket2."0.3.8" = deps: f: updateFeatures f ({
    cfg_if."${deps.socket2."0.3.8".cfg_if}".default = true;
    libc."${deps.socket2."0.3.8".libc}".default = true;
    redox_syscall."${deps.socket2."0.3.8".redox_syscall}".default = true;
    socket2."0.3.8".default = (f.socket2."0.3.8".default or true);
    winapi = fold recursiveUpdate {} [
      { "${deps.socket2."0.3.8".winapi}"."handleapi" = true; }
      { "${deps.socket2."0.3.8".winapi}"."minwindef" = true; }
      { "${deps.socket2."0.3.8".winapi}"."ws2def" = true; }
      { "${deps.socket2."0.3.8".winapi}"."ws2ipdef" = true; }
      { "${deps.socket2."0.3.8".winapi}"."ws2tcpip" = true; }
      { "${deps.socket2."0.3.8".winapi}".default = true; }
    ];
  }) [
    (features_.cfg_if."${deps."socket2"."0.3.8"."cfg_if"}" deps)
    (features_.libc."${deps."socket2"."0.3.8"."libc"}" deps)
    (features_.redox_syscall."${deps."socket2"."0.3.8"."redox_syscall"}" deps)
    (features_.winapi."${deps."socket2"."0.3.8"."winapi"}" deps)
  ];


# end
# strsim-0.8.0

  crates.strsim."0.8.0" = deps: { features?(features_.strsim."0.8.0" deps {}) }: buildRustCrate {
    crateName = "strsim";
    version = "0.8.0";
    description = "Implementations of string similarity metrics.\nIncludes Hamming, Levenshtein, OSA, Damerau-Levenshtein, Jaro, and Jaro-Winkler.\n";
    authors = [ "Danny Guo <dannyguo91@gmail.com>" ];
    sha256 = "0d3jsdz22wgjyxdakqnvdgmwjdvkximz50d9zfk4qlalw635qcvy";
  };
  features_.strsim."0.8.0" = deps: f: updateFeatures f ({
    strsim."0.8.0".default = (f.strsim."0.8.0".default or true);
  }) [];


# end
# strsim-0.9.1

  crates.strsim."0.9.1" = deps: { features?(features_.strsim."0.9.1" deps {}) }: buildRustCrate {
    crateName = "strsim";
    version = "0.9.1";
    description = "Implementations of string similarity metrics.\nIncludes Hamming, Levenshtein, OSA, Damerau-Levenshtein, Jaro, and Jaro-Winkler.\n";
    authors = [ "Danny Guo <dannyguo91@gmail.com>" ];
    sha256 = "0lpi3lrq6z5slay72ir1sg1ki0bvr3qia82lzx937gpc999i6bah";
    dependencies = mapFeatures features ([
      (crates."hashbrown"."${deps."strsim"."0.9.1"."hashbrown"}" deps)
      (crates."ndarray"."${deps."strsim"."0.9.1"."ndarray"}" deps)
    ]);
  };
  features_.strsim."0.9.1" = deps: f: updateFeatures f ({
    hashbrown."${deps.strsim."0.9.1".hashbrown}".default = true;
    ndarray."${deps.strsim."0.9.1".ndarray}".default = true;
    strsim."0.9.1".default = (f.strsim."0.9.1".default or true);
  }) [
    (features_.hashbrown."${deps."strsim"."0.9.1"."hashbrown"}" deps)
    (features_.ndarray."${deps."strsim"."0.9.1"."ndarray"}" deps)
  ];


# end
# syn-0.15.32

  crates.syn."0.15.32" = deps: { features?(features_.syn."0.15.32" deps {}) }: buildRustCrate {
    crateName = "syn";
    version = "0.15.32";
    description = "Parser for Rust source code";
    authors = [ "David Tolnay <dtolnay@gmail.com>" ];
    sha256 = "1xq1mbns8zyg2ls5927wqi7i7hn2y933czbqqds648gcdqccsqb0";
    dependencies = mapFeatures features ([
      (crates."proc_macro2"."${deps."syn"."0.15.32"."proc_macro2"}" deps)
      (crates."unicode_xid"."${deps."syn"."0.15.32"."unicode_xid"}" deps)
    ]
      ++ (if features.syn."0.15.32".quote or false then [ (crates.quote."${deps."syn"."0.15.32".quote}" deps) ] else []));
    features = mkFeatures (features."syn"."0.15.32" or {});
  };
  features_.syn."0.15.32" = deps: f: updateFeatures f (rec {
    proc_macro2 = fold recursiveUpdate {} [
      { "${deps.syn."0.15.32".proc_macro2}"."proc-macro" =
        (f.proc_macro2."${deps.syn."0.15.32".proc_macro2}"."proc-macro" or false) ||
        (syn."0.15.32"."proc-macro" or false) ||
        (f."syn"."0.15.32"."proc-macro" or false); }
      { "${deps.syn."0.15.32".proc_macro2}".default = (f.proc_macro2."${deps.syn."0.15.32".proc_macro2}".default or false); }
    ];
    quote = fold recursiveUpdate {} [
      { "${deps.syn."0.15.32".quote}"."proc-macro" =
        (f.quote."${deps.syn."0.15.32".quote}"."proc-macro" or false) ||
        (syn."0.15.32"."proc-macro" or false) ||
        (f."syn"."0.15.32"."proc-macro" or false); }
      { "${deps.syn."0.15.32".quote}".default = (f.quote."${deps.syn."0.15.32".quote}".default or false); }
    ];
    syn = fold recursiveUpdate {} [
      { "0.15.32"."clone-impls" =
        (f.syn."0.15.32"."clone-impls" or false) ||
        (f.syn."0.15.32".default or false) ||
        (syn."0.15.32"."default" or false); }
      { "0.15.32"."derive" =
        (f.syn."0.15.32"."derive" or false) ||
        (f.syn."0.15.32".default or false) ||
        (syn."0.15.32"."default" or false); }
      { "0.15.32"."parsing" =
        (f.syn."0.15.32"."parsing" or false) ||
        (f.syn."0.15.32".default or false) ||
        (syn."0.15.32"."default" or false); }
      { "0.15.32"."printing" =
        (f.syn."0.15.32"."printing" or false) ||
        (f.syn."0.15.32".default or false) ||
        (syn."0.15.32"."default" or false); }
      { "0.15.32"."proc-macro" =
        (f.syn."0.15.32"."proc-macro" or false) ||
        (f.syn."0.15.32".default or false) ||
        (syn."0.15.32"."default" or false); }
      { "0.15.32"."quote" =
        (f.syn."0.15.32"."quote" or false) ||
        (f.syn."0.15.32".printing or false) ||
        (syn."0.15.32"."printing" or false); }
      { "0.15.32".default = (f.syn."0.15.32".default or true); }
    ];
    unicode_xid."${deps.syn."0.15.32".unicode_xid}".default = true;
  }) [
    (features_.proc_macro2."${deps."syn"."0.15.32"."proc_macro2"}" deps)
    (features_.quote."${deps."syn"."0.15.32"."quote"}" deps)
    (features_.unicode_xid."${deps."syn"."0.15.32"."unicode_xid"}" deps)
  ];


# end
# tar-0.4.22

  crates.tar."0.4.22" = deps: { features?(features_.tar."0.4.22" deps {}) }: buildRustCrate {
    crateName = "tar";
    version = "0.4.22";
    description = "A Rust implementation of a TAR file reader and writer. This library does not\ncurrently handle compression, but it is abstract over all I/O readers and\nwriters. Additionally, great lengths are taken to ensure that the entire\ncontents are never required to be entirely resident in memory all at once.\n";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" ];
    sha256 = "1y2b5av1ckf7v7rw1p59fjddn2jwzv0xr69lgdd4l41g43c3zq9j";
    dependencies = mapFeatures features ([
      (crates."filetime"."${deps."tar"."0.4.22"."filetime"}" deps)
    ])
      ++ (if kernel == "redox" then mapFeatures features ([
      (crates."redox_syscall"."${deps."tar"."0.4.22"."redox_syscall"}" deps)
    ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."tar"."0.4.22"."libc"}" deps)
    ]) else []);
  };
  features_.tar."0.4.22" = deps: f: updateFeatures f (rec {
    filetime."${deps.tar."0.4.22".filetime}".default = true;
    libc."${deps.tar."0.4.22".libc}".default = true;
    redox_syscall."${deps.tar."0.4.22".redox_syscall}".default = true;
    tar = fold recursiveUpdate {} [
      { "0.4.22"."xattr" =
        (f.tar."0.4.22"."xattr" or false) ||
        (f.tar."0.4.22".default or false) ||
        (tar."0.4.22"."default" or false); }
      { "0.4.22".default = (f.tar."0.4.22".default or true); }
    ];
  }) [
    (features_.filetime."${deps."tar"."0.4.22"."filetime"}" deps)
    (features_.redox_syscall."${deps."tar"."0.4.22"."redox_syscall"}" deps)
    (features_.libc."${deps."tar"."0.4.22"."libc"}" deps)
  ];


# end
# tempfile-3.0.7

  crates.tempfile."3.0.7" = deps: { features?(features_.tempfile."3.0.7" deps {}) }: buildRustCrate {
    crateName = "tempfile";
    version = "3.0.7";
    description = "A library for managing temporary files and directories.\n";
    authors = [ "Steven Allen <steven@stebalien.com>" "The Rust Project Developers" "Ashley Mannix <ashleymannix@live.com.au>" "Jason White <jasonaw0@gmail.com>" ];
    sha256 = "19h7ch8fvisxrrmabcnhlfj6b8vg34zaw8491x141p0n0727niaf";
    dependencies = mapFeatures features ([
      (crates."cfg_if"."${deps."tempfile"."3.0.7"."cfg_if"}" deps)
      (crates."rand"."${deps."tempfile"."3.0.7"."rand"}" deps)
      (crates."remove_dir_all"."${deps."tempfile"."3.0.7"."remove_dir_all"}" deps)
    ])
      ++ (if kernel == "redox" then mapFeatures features ([
      (crates."redox_syscall"."${deps."tempfile"."3.0.7"."redox_syscall"}" deps)
    ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
      (crates."libc"."${deps."tempfile"."3.0.7"."libc"}" deps)
    ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."tempfile"."3.0.7"."winapi"}" deps)
    ]) else []);
  };
  features_.tempfile."3.0.7" = deps: f: updateFeatures f ({
    cfg_if."${deps.tempfile."3.0.7".cfg_if}".default = true;
    libc."${deps.tempfile."3.0.7".libc}".default = true;
    rand."${deps.tempfile."3.0.7".rand}".default = true;
    redox_syscall."${deps.tempfile."3.0.7".redox_syscall}".default = true;
    remove_dir_all."${deps.tempfile."3.0.7".remove_dir_all}".default = true;
    tempfile."3.0.7".default = (f.tempfile."3.0.7".default or true);
    winapi = fold recursiveUpdate {} [
      { "${deps.tempfile."3.0.7".winapi}"."fileapi" = true; }
      { "${deps.tempfile."3.0.7".winapi}"."handleapi" = true; }
      { "${deps.tempfile."3.0.7".winapi}"."winbase" = true; }
      { "${deps.tempfile."3.0.7".winapi}".default = true; }
    ];
  }) [
    (features_.cfg_if."${deps."tempfile"."3.0.7"."cfg_if"}" deps)
    (features_.rand."${deps."tempfile"."3.0.7"."rand"}" deps)
    (features_.remove_dir_all."${deps."tempfile"."3.0.7"."remove_dir_all"}" deps)
    (features_.redox_syscall."${deps."tempfile"."3.0.7"."redox_syscall"}" deps)
    (features_.libc."${deps."tempfile"."3.0.7"."libc"}" deps)
    (features_.winapi."${deps."tempfile"."3.0.7"."winapi"}" deps)
  ];


# end
# textwrap-0.11.0

  crates.textwrap."0.11.0" = deps: { features?(features_.textwrap."0.11.0" deps {}) }: buildRustCrate {
    crateName = "textwrap";
    version = "0.11.0";
    description = "Textwrap is a small library for word wrapping, indenting, and\ndedenting strings.\n\nYou can use it to format strings (such as help and error messages) for\ndisplay in commandline applications. It is designed to be efficient\nand handle Unicode characters correctly.\n";
    authors = [ "Martin Geisler <martin@geisler.net>" ];
    sha256 = "0s25qh49n7kjayrdj4q3v0jk0jc6vy88rdw0bvgfxqlscpqpxi7d";
    dependencies = mapFeatures features ([
      (crates."unicode_width"."${deps."textwrap"."0.11.0"."unicode_width"}" deps)
    ]);
  };
  features_.textwrap."0.11.0" = deps: f: updateFeatures f ({
    textwrap."0.11.0".default = (f.textwrap."0.11.0".default or true);
    unicode_width."${deps.textwrap."0.11.0".unicode_width}".default = true;
  }) [
    (features_.unicode_width."${deps."textwrap"."0.11.0"."unicode_width"}" deps)
  ];


# end
# typenum-1.10.0

  crates.typenum."1.10.0" = deps: { features?(features_.typenum."1.10.0" deps {}) }: buildRustCrate {
    crateName = "typenum";
    version = "1.10.0";
    description = "Typenum is a Rust library for type-level numbers evaluated at compile time. It currently supports bits, unsigned integers, and signed integers. It also provides a type-level array of type-level numbers, but its implementation is incomplete.";
    authors = [ "Paho Lurie-Gregg <paho@paholg.com>" "Andre Bogus <bogusandre@gmail.com>" ];
    sha256 = "1v2cgg0mlzkg5prs7swysckgk2ay6bpda8m83c2sn3z77dcsx3bc";
    build = "build/main.rs";
    features = mkFeatures (features."typenum"."1.10.0" or {});
  };
  features_.typenum."1.10.0" = deps: f: updateFeatures f ({
    typenum."1.10.0".default = (f.typenum."1.10.0".default or true);
  }) [];


# end
# url_serde-0.2.0

  crates.url_serde."0.2.0" = deps: { features?(features_.url_serde."0.2.0" deps {}) }: buildRustCrate {
    crateName = "url_serde";
    version = "0.2.0";
    description = "Serde support for URL types";
    authors = [ "The rust-url developers" ];
    sha256 = "07ry87rw0pi1da6b53f7s3f52wx3ihxbcgjd4ldspfv5xh6wipsg";
    dependencies = mapFeatures features ([
      (crates."serde"."${deps."url_serde"."0.2.0"."serde"}" deps)
      (crates."url"."${deps."url_serde"."0.2.0"."url"}" deps)
    ]);
  };
  features_.url_serde."0.2.0" = deps: f: updateFeatures f ({
    serde."${deps.url_serde."0.2.0".serde}".default = true;
    url."${deps.url_serde."0.2.0".url}".default = true;
    url_serde."0.2.0".default = (f.url_serde."0.2.0".default or true);
  }) [
    (features_.serde."${deps."url_serde"."0.2.0"."serde"}" deps)
    (features_.url."${deps."url_serde"."0.2.0"."url"}" deps)
  ];


# end
# vcpkg-0.2.6

  crates.vcpkg."0.2.6" = deps: { features?(features_.vcpkg."0.2.6" deps {}) }: buildRustCrate {
    crateName = "vcpkg";
    version = "0.2.6";
    description = "A library to find native dependencies in a vcpkg tree at build\ntime in order to be used in Cargo build scripts.\n";
    authors = [ "Jim McGrath <jimmc2@gmail.com>" ];
    sha256 = "1ig6jqpzzl1z9vk4qywgpfr4hfbd8ny8frqsgm3r449wkc4n1i5x";
  };
  features_.vcpkg."0.2.6" = deps: f: updateFeatures f ({
    vcpkg."0.2.6".default = (f.vcpkg."0.2.6".default or true);
  }) [];


# end
# walkdir-2.2.7

  crates.walkdir."2.2.7" = deps: { features?(features_.walkdir."2.2.7" deps {}) }: buildRustCrate {
    crateName = "walkdir";
    version = "2.2.7";
    description = "Recursively walk a directory.";
    authors = [ "Andrew Gallant <jamslam@gmail.com>" ];
    sha256 = "0wq3v28916kkla29yyi0g0xfc16apwx24py68049kriz3gjlig03";
    dependencies = mapFeatures features ([
      (crates."same_file"."${deps."walkdir"."2.2.7"."same_file"}" deps)
    ])
      ++ (if kernel == "windows" then mapFeatures features ([
      (crates."winapi"."${deps."walkdir"."2.2.7"."winapi"}" deps)
      (crates."winapi_util"."${deps."walkdir"."2.2.7"."winapi_util"}" deps)
    ]) else []);
  };
  features_.walkdir."2.2.7" = deps: f: updateFeatures f ({
    same_file."${deps.walkdir."2.2.7".same_file}".default = true;
    walkdir."2.2.7".default = (f.walkdir."2.2.7".default or true);
    winapi = fold recursiveUpdate {} [
      { "${deps.walkdir."2.2.7".winapi}"."std" = true; }
      { "${deps.walkdir."2.2.7".winapi}"."winnt" = true; }
      { "${deps.walkdir."2.2.7".winapi}".default = true; }
    ];
    winapi_util."${deps.walkdir."2.2.7".winapi_util}".default = true;
  }) [
    (features_.same_file."${deps."walkdir"."2.2.7"."same_file"}" deps)
    (features_.winapi."${deps."walkdir"."2.2.7"."winapi"}" deps)
    (features_.winapi_util."${deps."walkdir"."2.2.7"."winapi_util"}" deps)
  ];


# end
# winapi-0.2.8

  crates.winapi."0.2.8" = deps: { features?(features_.winapi."0.2.8" deps {}) }: buildRustCrate {
    crateName = "winapi";
    version = "0.2.8";
    description = "Types and constants for WinAPI bindings. See README for list of crates providing function bindings.";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "0a45b58ywf12vb7gvj6h3j264nydynmzyqz8d8rqxsj6icqv82as";
  };
  features_.winapi."0.2.8" = deps: f: updateFeatures f ({
    winapi."0.2.8".default = (f.winapi."0.2.8".default or true);
  }) [];


# end
# winapi-0.3.7

  crates.winapi."0.3.7" = deps: { features?(features_.winapi."0.3.7" deps {}) }: buildRustCrate {
    crateName = "winapi";
    version = "0.3.7";
    description = "Raw FFI bindings for all of Windows API.";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "1k51gfkp0zqw7nj07y443mscs46icmdhld442s2073niap0kkdr8";
    build = "build.rs";
    dependencies = (if kernel == "i686-pc-windows-gnu" then mapFeatures features ([
      (crates."winapi_i686_pc_windows_gnu"."${deps."winapi"."0.3.7"."winapi_i686_pc_windows_gnu"}" deps)
    ]) else [])
      ++ (if kernel == "x86_64-pc-windows-gnu" then mapFeatures features ([
      (crates."winapi_x86_64_pc_windows_gnu"."${deps."winapi"."0.3.7"."winapi_x86_64_pc_windows_gnu"}" deps)
    ]) else []);
    features = mkFeatures (features."winapi"."0.3.7" or {});
  };
  features_.winapi."0.3.7" = deps: f: updateFeatures f (rec {
    winapi = fold recursiveUpdate {} [
      { "0.3.7"."impl-debug" =
        (f.winapi."0.3.7"."impl-debug" or false) ||
        (f.winapi."0.3.7".debug or false) ||
        (winapi."0.3.7"."debug" or false); }
      { "0.3.7".default = (f.winapi."0.3.7".default or true); }
    ];
    winapi_i686_pc_windows_gnu."${deps.winapi."0.3.7".winapi_i686_pc_windows_gnu}".default = true;
    winapi_x86_64_pc_windows_gnu."${deps.winapi."0.3.7".winapi_x86_64_pc_windows_gnu}".default = true;
  }) [
    (features_.winapi_i686_pc_windows_gnu."${deps."winapi"."0.3.7"."winapi_i686_pc_windows_gnu"}" deps)
    (features_.winapi_x86_64_pc_windows_gnu."${deps."winapi"."0.3.7"."winapi_x86_64_pc_windows_gnu"}" deps)
  ];


# end
# winapi-build-0.1.1

  crates.winapi_build."0.1.1" = deps: { features?(features_.winapi_build."0.1.1" deps {}) }: buildRustCrate {
    crateName = "winapi-build";
    version = "0.1.1";
    description = "Common code for build.rs in WinAPI -sys crates.";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "1lxlpi87rkhxcwp2ykf1ldw3p108hwm24nywf3jfrvmff4rjhqga";
    libName = "build";
  };
  features_.winapi_build."0.1.1" = deps: f: updateFeatures f ({
    winapi_build."0.1.1".default = (f.winapi_build."0.1.1".default or true);
  }) [];


# end
# adler32-1.0.3

  crates.adler32."1.0.3" = deps: { features?(features_.adler32."1.0.3" deps {}) }: buildRustCrate {
    crateName = "adler32";
    version = "1.0.3";
    description = "Minimal Adler32 implementation for Rust.";
    authors = [ "Remi Rampin <remirampin@gmail.com>" ];
    sha256 = "1z3mvjgw02mbqk98kizzibrca01d5wfkpazsrp3vkkv3i56pn6fb";
  };
  features_.adler32."1.0.3" = deps: f: updateFeatures f ({
    adler32."1.0.3".default = (f.adler32."1.0.3".default or true);
  }) [];


# end
}
