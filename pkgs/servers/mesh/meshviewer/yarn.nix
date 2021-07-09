{fetchurl, linkFarm}: rec {
  offline_cache = linkFarm "offline" packages;
  packages = [

    {
      name = "code-frame-7.0.0-beta.44.tgz";
      path = fetchurl {
        name = "code-frame-7.0.0-beta.44.tgz";
        url  = "https://registry.yarnpkg.com/@babel/code-frame/-/code-frame-7.0.0-beta.44.tgz";
        sha1 = "2a02643368de80916162be70865c97774f3adbd9";
      };
    }

    {
      name = "generator-7.0.0-beta.44.tgz";
      path = fetchurl {
        name = "generator-7.0.0-beta.44.tgz";
        url  = "https://registry.yarnpkg.com/@babel/generator/-/generator-7.0.0-beta.44.tgz";
        sha1 = "c7e67b9b5284afcf69b309b50d7d37f3e5033d42";
      };
    }

    {
      name = "helper-function-name-7.0.0-beta.44.tgz";
      path = fetchurl {
        name = "helper-function-name-7.0.0-beta.44.tgz";
        url  = "https://registry.yarnpkg.com/@babel/helper-function-name/-/helper-function-name-7.0.0-beta.44.tgz";
        sha1 = "e18552aaae2231100a6e485e03854bc3532d44dd";
      };
    }

    {
      name = "helper-get-function-arity-7.0.0-beta.44.tgz";
      path = fetchurl {
        name = "helper-get-function-arity-7.0.0-beta.44.tgz";
        url  = "https://registry.yarnpkg.com/@babel/helper-get-function-arity/-/helper-get-function-arity-7.0.0-beta.44.tgz";
        sha1 = "d03ca6dd2b9f7b0b1e6b32c56c72836140db3a15";
      };
    }

    {
      name = "helper-split-export-declaration-7.0.0-beta.44.tgz";
      path = fetchurl {
        name = "helper-split-export-declaration-7.0.0-beta.44.tgz";
        url  = "https://registry.yarnpkg.com/@babel/helper-split-export-declaration/-/helper-split-export-declaration-7.0.0-beta.44.tgz";
        sha1 = "c0b351735e0fbcb3822c8ad8db4e583b05ebd9dc";
      };
    }

    {
      name = "highlight-7.0.0-beta.44.tgz";
      path = fetchurl {
        name = "highlight-7.0.0-beta.44.tgz";
        url  = "https://registry.yarnpkg.com/@babel/highlight/-/highlight-7.0.0-beta.44.tgz";
        sha1 = "18c94ce543916a80553edcdcf681890b200747d5";
      };
    }

    {
      name = "template-7.0.0-beta.44.tgz";
      path = fetchurl {
        name = "template-7.0.0-beta.44.tgz";
        url  = "https://registry.yarnpkg.com/@babel/template/-/template-7.0.0-beta.44.tgz";
        sha1 = "f8832f4fdcee5d59bf515e595fc5106c529b394f";
      };
    }

    {
      name = "traverse-7.0.0-beta.44.tgz";
      path = fetchurl {
        name = "traverse-7.0.0-beta.44.tgz";
        url  = "https://registry.yarnpkg.com/@babel/traverse/-/traverse-7.0.0-beta.44.tgz";
        sha1 = "a970a2c45477ad18017e2e465a0606feee0d2966";
      };
    }

    {
      name = "types-7.0.0-beta.44.tgz";
      path = fetchurl {
        name = "types-7.0.0-beta.44.tgz";
        url  = "https://registry.yarnpkg.com/@babel/types/-/types-7.0.0-beta.44.tgz";
        sha1 = "6b1b164591f77dec0a0342aca995f2d046b3a757";
      };
    }

    {
      name = "identity-map-1.0.1.tgz";
      path = fetchurl {
        name = "identity-map-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/@gulp-sourcemaps/identity-map/-/identity-map-1.0.1.tgz";
        sha1 = "cfa23bc5840f9104ce32a65e74db7e7a974bbee1";
      };
    }

    {
      name = "map-sources-1.0.0.tgz";
      path = fetchurl {
        name = "map-sources-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/@gulp-sourcemaps/map-sources/-/map-sources-1.0.0.tgz";
        sha1 = "890ae7c5d8c877f6d384860215ace9d7ec945bda";
      };
    }

    {
      name = "abbrev-1.1.1.tgz";
      path = fetchurl {
        name = "abbrev-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/abbrev/-/abbrev-1.1.1.tgz";
        sha1 = "f8f2c887ad10bf67f634f005b6987fed3179aac8";
      };
    }

    {
      name = "accepts-1.3.5.tgz";
      path = fetchurl {
        name = "accepts-1.3.5.tgz";
        url  = "https://registry.yarnpkg.com/accepts/-/accepts-1.3.5.tgz";
        sha1 = "eb777df6011723a3b14e8a72c0805c8e86746bd2";
      };
    }

    {
      name = "acorn-jsx-3.0.1.tgz";
      path = fetchurl {
        name = "acorn-jsx-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/acorn-jsx/-/acorn-jsx-3.0.1.tgz";
        sha1 = "afdf9488fb1ecefc8348f6fb22f464e32a58b36b";
      };
    }

    {
      name = "acorn-jsx-4.1.1.tgz";
      path = fetchurl {
        name = "acorn-jsx-4.1.1.tgz";
        url  = "https://registry.yarnpkg.com/acorn-jsx/-/acorn-jsx-4.1.1.tgz";
        sha1 = "e8e41e48ea2fe0c896740610ab6a4ffd8add225e";
      };
    }

    {
      name = "acorn-5.7.1.tgz";
      path = fetchurl {
        name = "acorn-5.7.1.tgz";
        url  = "https://registry.yarnpkg.com/acorn/-/acorn-5.7.1.tgz";
        sha1 = "f095829297706a7c9776958c0afc8930a9b9d9d8";
      };
    }

    {
      name = "acorn-3.3.0.tgz";
      path = fetchurl {
        name = "acorn-3.3.0.tgz";
        url  = "https://registry.yarnpkg.com/acorn/-/acorn-3.3.0.tgz";
        sha1 = "45e37fb39e8da3f25baee3ff5369e2bb5f22017a";
      };
    }

    {
      name = "after-0.8.2.tgz";
      path = fetchurl {
        name = "after-0.8.2.tgz";
        url  = "https://registry.yarnpkg.com/after/-/after-0.8.2.tgz";
        sha1 = "fedb394f9f0e02aa9768e702bda23b505fae7e1f";
      };
    }

    {
      name = "ajv-keywords-1.5.1.tgz";
      path = fetchurl {
        name = "ajv-keywords-1.5.1.tgz";
        url  = "https://registry.yarnpkg.com/ajv-keywords/-/ajv-keywords-1.5.1.tgz";
        sha1 = "314dd0a4b3368fad3dfcdc54ede6171b886daf3c";
      };
    }

    {
      name = "ajv-keywords-2.1.1.tgz";
      path = fetchurl {
        name = "ajv-keywords-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ajv-keywords/-/ajv-keywords-2.1.1.tgz";
        sha1 = "617997fc5f60576894c435f940d819e135b80762";
      };
    }

    {
      name = "ajv-keywords-3.2.0.tgz";
      path = fetchurl {
        name = "ajv-keywords-3.2.0.tgz";
        url  = "https://registry.yarnpkg.com/ajv-keywords/-/ajv-keywords-3.2.0.tgz";
        sha1 = "e86b819c602cf8821ad637413698f1dec021847a";
      };
    }

    {
      name = "ajv-4.11.8.tgz";
      path = fetchurl {
        name = "ajv-4.11.8.tgz";
        url  = "https://registry.yarnpkg.com/ajv/-/ajv-4.11.8.tgz";
        sha1 = "82ffb02b29e662ae53bdc20af15947706739c536";
      };
    }

    {
      name = "ajv-5.5.2.tgz";
      path = fetchurl {
        name = "ajv-5.5.2.tgz";
        url  = "https://registry.yarnpkg.com/ajv/-/ajv-5.5.2.tgz";
        sha1 = "73b5eeca3fab653e3d3f9422b341ad42205dc965";
      };
    }

    {
      name = "ajv-6.5.1.tgz";
      path = fetchurl {
        name = "ajv-6.5.1.tgz";
        url  = "https://registry.yarnpkg.com/ajv/-/ajv-6.5.1.tgz";
        sha1 = "88ebc1263c7133937d108b80c5572e64e1d9322d";
      };
    }

    {
      name = "almond-0.3.3.tgz";
      path = fetchurl {
        name = "almond-0.3.3.tgz";
        url  = "https://registry.yarnpkg.com/almond/-/almond-0.3.3.tgz";
        sha1 = "a0e7c95ac7624d6417b4494b1e68bff693168a20";
      };
    }

    {
      name = "amdefine-1.0.1.tgz";
      path = fetchurl {
        name = "amdefine-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/amdefine/-/amdefine-1.0.1.tgz";
        sha1 = "4a5282ac164729e93619bcfd3ad151f817ce91f5";
      };
    }

    {
      name = "ansi-colors-1.1.0.tgz";
      path = fetchurl {
        name = "ansi-colors-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/ansi-colors/-/ansi-colors-1.1.0.tgz";
        sha1 = "6374b4dd5d4718ff3ce27a671a3b1cad077132a9";
      };
    }

    {
      name = "ansi-cyan-0.1.1.tgz";
      path = fetchurl {
        name = "ansi-cyan-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ansi-cyan/-/ansi-cyan-0.1.1.tgz";
        sha1 = "538ae528af8982f28ae30d86f2f17456d2609873";
      };
    }

    {
      name = "ansi-escapes-1.4.0.tgz";
      path = fetchurl {
        name = "ansi-escapes-1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/ansi-escapes/-/ansi-escapes-1.4.0.tgz";
        sha1 = "d3a8a83b319aa67793662b13e761c7911422306e";
      };
    }

    {
      name = "ansi-escapes-3.1.0.tgz";
      path = fetchurl {
        name = "ansi-escapes-3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/ansi-escapes/-/ansi-escapes-3.1.0.tgz";
        sha1 = "f73207bb81207d75fd6c83f125af26eea378ca30";
      };
    }

    {
      name = "ansi-gray-0.1.1.tgz";
      path = fetchurl {
        name = "ansi-gray-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ansi-gray/-/ansi-gray-0.1.1.tgz";
        sha1 = "2962cf54ec9792c48510a3deb524436861ef7251";
      };
    }

    {
      name = "ansi-red-0.1.1.tgz";
      path = fetchurl {
        name = "ansi-red-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ansi-red/-/ansi-red-0.1.1.tgz";
        sha1 = "8c638f9d1080800a353c9c28c8a81ca4705d946c";
      };
    }

    {
      name = "ansi-regex-2.1.1.tgz";
      path = fetchurl {
        name = "ansi-regex-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-2.1.1.tgz";
        sha1 = "c3b33ab5ee360d86e0e628f0468ae7ef27d654df";
      };
    }

    {
      name = "ansi-regex-3.0.0.tgz";
      path = fetchurl {
        name = "ansi-regex-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-3.0.0.tgz";
        sha1 = "ed0317c322064f79466c02966bddb605ab37d998";
      };
    }

    {
      name = "ansi-styles-2.2.1.tgz";
      path = fetchurl {
        name = "ansi-styles-2.2.1.tgz";
        url  = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-2.2.1.tgz";
        sha1 = "b432dd3358b634cf75e1e4664368240533c1ddbe";
      };
    }

    {
      name = "ansi-styles-3.2.1.tgz";
      path = fetchurl {
        name = "ansi-styles-3.2.1.tgz";
        url  = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-3.2.1.tgz";
        sha1 = "41fbb20243e50b12be0f04b8dedbf07520ce841d";
      };
    }

    {
      name = "ansi-wrap-0.1.0.tgz";
      path = fetchurl {
        name = "ansi-wrap-0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/ansi-wrap/-/ansi-wrap-0.1.0.tgz";
        sha1 = "a82250ddb0015e9a27ca82e82ea603bbfa45efaf";
      };
    }

    {
      name = "any-promise-1.3.0.tgz";
      path = fetchurl {
        name = "any-promise-1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/any-promise/-/any-promise-1.3.0.tgz";
        sha1 = "abc6afeedcea52e809cdc0376aed3ce39635d17f";
      };
    }

    {
      name = "anymatch-1.3.2.tgz";
      path = fetchurl {
        name = "anymatch-1.3.2.tgz";
        url  = "https://registry.yarnpkg.com/anymatch/-/anymatch-1.3.2.tgz";
        sha1 = "553dcb8f91e3c889845dfdba34c77721b90b9d7a";
      };
    }

    {
      name = "append-buffer-1.0.2.tgz";
      path = fetchurl {
        name = "append-buffer-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/append-buffer/-/append-buffer-1.0.2.tgz";
        sha1 = "d8220cf466081525efea50614f3de6514dfa58f1";
      };
    }

    {
      name = "aproba-1.2.0.tgz";
      path = fetchurl {
        name = "aproba-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/aproba/-/aproba-1.2.0.tgz";
        sha1 = "6802e6264efd18c790a1b0d517f0f2627bf2c94a";
      };
    }

    {
      name = "archy-1.0.0.tgz";
      path = fetchurl {
        name = "archy-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/archy/-/archy-1.0.0.tgz";
        sha1 = "f9c8c13757cc1dd7bc379ac77b2c62a5c2868c40";
      };
    }

    {
      name = "are-we-there-yet-1.1.5.tgz";
      path = fetchurl {
        name = "are-we-there-yet-1.1.5.tgz";
        url  = "https://registry.yarnpkg.com/are-we-there-yet/-/are-we-there-yet-1.1.5.tgz";
        sha1 = "4b35c2944f062a8bfcda66410760350fe9ddfc21";
      };
    }

    {
      name = "argparse-1.0.10.tgz";
      path = fetchurl {
        name = "argparse-1.0.10.tgz";
        url  = "https://registry.yarnpkg.com/argparse/-/argparse-1.0.10.tgz";
        sha1 = "bcd6791ea5ae09725e17e5ad988134cd40b3d911";
      };
    }

    {
      name = "arr-diff-1.1.0.tgz";
      path = fetchurl {
        name = "arr-diff-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/arr-diff/-/arr-diff-1.1.0.tgz";
        sha1 = "687c32758163588fef7de7b36fabe495eb1a399a";
      };
    }

    {
      name = "arr-diff-2.0.0.tgz";
      path = fetchurl {
        name = "arr-diff-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/arr-diff/-/arr-diff-2.0.0.tgz";
        sha1 = "8f3b827f955a8bd669697e4a4256ac3ceae356cf";
      };
    }

    {
      name = "arr-diff-4.0.0.tgz";
      path = fetchurl {
        name = "arr-diff-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/arr-diff/-/arr-diff-4.0.0.tgz";
        sha1 = "d6461074febfec71e7e15235761a329a5dc7c520";
      };
    }

    {
      name = "arr-filter-1.1.2.tgz";
      path = fetchurl {
        name = "arr-filter-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/arr-filter/-/arr-filter-1.1.2.tgz";
        sha1 = "43fdddd091e8ef11aa4c45d9cdc18e2dff1711ee";
      };
    }

    {
      name = "arr-flatten-1.1.0.tgz";
      path = fetchurl {
        name = "arr-flatten-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/arr-flatten/-/arr-flatten-1.1.0.tgz";
        sha1 = "36048bbff4e7b47e136644316c99669ea5ae91f1";
      };
    }

    {
      name = "arr-map-2.0.2.tgz";
      path = fetchurl {
        name = "arr-map-2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/arr-map/-/arr-map-2.0.2.tgz";
        sha1 = "3a77345ffc1cf35e2a91825601f9e58f2e24cac4";
      };
    }

    {
      name = "arr-union-2.1.0.tgz";
      path = fetchurl {
        name = "arr-union-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/arr-union/-/arr-union-2.1.0.tgz";
        sha1 = "20f9eab5ec70f5c7d215b1077b1c39161d292c7d";
      };
    }

    {
      name = "arr-union-3.1.0.tgz";
      path = fetchurl {
        name = "arr-union-3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/arr-union/-/arr-union-3.1.0.tgz";
        sha1 = "e39b09aea9def866a8f206e288af63919bae39c4";
      };
    }

    {
      name = "array-differ-1.0.0.tgz";
      path = fetchurl {
        name = "array-differ-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/array-differ/-/array-differ-1.0.0.tgz";
        sha1 = "eff52e3758249d33be402b8bb8e564bb2b5d4031";
      };
    }

    {
      name = "array-each-1.0.1.tgz";
      path = fetchurl {
        name = "array-each-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/array-each/-/array-each-1.0.1.tgz";
        sha1 = "a794af0c05ab1752846ee753a1f211a05ba0c44f";
      };
    }

    {
      name = "array-find-index-1.0.2.tgz";
      path = fetchurl {
        name = "array-find-index-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/array-find-index/-/array-find-index-1.0.2.tgz";
        sha1 = "df010aa1287e164bbda6f9723b0a96a1ec4187a1";
      };
    }

    {
      name = "array-includes-3.0.3.tgz";
      path = fetchurl {
        name = "array-includes-3.0.3.tgz";
        url  = "https://registry.yarnpkg.com/array-includes/-/array-includes-3.0.3.tgz";
        sha1 = "184b48f62d92d7452bb31b323165c7f8bd02266d";
      };
    }

    {
      name = "array-initial-1.1.0.tgz";
      path = fetchurl {
        name = "array-initial-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/array-initial/-/array-initial-1.1.0.tgz";
        sha1 = "2fa74b26739371c3947bd7a7adc73be334b3d795";
      };
    }

    {
      name = "array-last-1.3.0.tgz";
      path = fetchurl {
        name = "array-last-1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/array-last/-/array-last-1.3.0.tgz";
        sha1 = "7aa77073fec565ddab2493f5f88185f404a9d336";
      };
    }

    {
      name = "array-slice-0.2.3.tgz";
      path = fetchurl {
        name = "array-slice-0.2.3.tgz";
        url  = "https://registry.yarnpkg.com/array-slice/-/array-slice-0.2.3.tgz";
        sha1 = "dd3cfb80ed7973a75117cdac69b0b99ec86186f5";
      };
    }

    {
      name = "array-slice-1.1.0.tgz";
      path = fetchurl {
        name = "array-slice-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/array-slice/-/array-slice-1.1.0.tgz";
        sha1 = "e368ea15f89bc7069f7ffb89aec3a6c7d4ac22d4";
      };
    }

    {
      name = "array-sort-1.0.0.tgz";
      path = fetchurl {
        name = "array-sort-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/array-sort/-/array-sort-1.0.0.tgz";
        sha1 = "e4c05356453f56f53512a7d1d6123f2c54c0a88a";
      };
    }

    {
      name = "array-union-1.0.2.tgz";
      path = fetchurl {
        name = "array-union-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/array-union/-/array-union-1.0.2.tgz";
        sha1 = "9a34410e4f4e3da23dea375be5be70f24778ec39";
      };
    }

    {
      name = "array-uniq-1.0.3.tgz";
      path = fetchurl {
        name = "array-uniq-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/array-uniq/-/array-uniq-1.0.3.tgz";
        sha1 = "af6ac877a25cc7f74e058894753858dfdb24fdb6";
      };
    }

    {
      name = "array-unique-0.2.1.tgz";
      path = fetchurl {
        name = "array-unique-0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/array-unique/-/array-unique-0.2.1.tgz";
        sha1 = "a1d97ccafcbc2625cc70fadceb36a50c58b01a53";
      };
    }

    {
      name = "array-unique-0.3.2.tgz";
      path = fetchurl {
        name = "array-unique-0.3.2.tgz";
        url  = "https://registry.yarnpkg.com/array-unique/-/array-unique-0.3.2.tgz";
        sha1 = "a894b75d4bc4f6cd679ef3244a9fd8f46ae2d428";
      };
    }

    {
      name = "arraybuffer.slice-0.0.7.tgz";
      path = fetchurl {
        name = "arraybuffer.slice-0.0.7.tgz";
        url  = "https://registry.yarnpkg.com/arraybuffer.slice/-/arraybuffer.slice-0.0.7.tgz";
        sha1 = "3bbc4275dd584cc1b10809b89d4e8b63a69e7675";
      };
    }

    {
      name = "arrify-1.0.1.tgz";
      path = fetchurl {
        name = "arrify-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/arrify/-/arrify-1.0.1.tgz";
        sha1 = "898508da2226f380df904728456849c1501a4b0d";
      };
    }

    {
      name = "asn1-0.2.3.tgz";
      path = fetchurl {
        name = "asn1-0.2.3.tgz";
        url  = "https://registry.yarnpkg.com/asn1/-/asn1-0.2.3.tgz";
        sha1 = "dac8787713c9966849fc8180777ebe9c1ddf3b86";
      };
    }

    {
      name = "assert-plus-1.0.0.tgz";
      path = fetchurl {
        name = "assert-plus-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/assert-plus/-/assert-plus-1.0.0.tgz";
        sha1 = "f12e0f3c5d77b0b1cdd9146942e4e96c1e4dd525";
      };
    }

    {
      name = "assert-plus-0.2.0.tgz";
      path = fetchurl {
        name = "assert-plus-0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/assert-plus/-/assert-plus-0.2.0.tgz";
        sha1 = "d74e1b87e7affc0db8aadb7021f3fe48101ab234";
      };
    }

    {
      name = "assign-symbols-1.0.0.tgz";
      path = fetchurl {
        name = "assign-symbols-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/assign-symbols/-/assign-symbols-1.0.0.tgz";
        sha1 = "59667f41fadd4f20ccbc2bb96b8d4f7f78ec0367";
      };
    }

    {
      name = "async-done-1.3.1.tgz";
      path = fetchurl {
        name = "async-done-1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/async-done/-/async-done-1.3.1.tgz";
        sha1 = "14b7b73667b864c8f02b5b253fc9c6eddb777f3e";
      };
    }

    {
      name = "async-each-series-0.1.1.tgz";
      path = fetchurl {
        name = "async-each-series-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/async-each-series/-/async-each-series-0.1.1.tgz";
        sha1 = "7617c1917401fd8ca4a28aadce3dbae98afeb432";
      };
    }

    {
      name = "async-each-1.0.1.tgz";
      path = fetchurl {
        name = "async-each-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/async-each/-/async-each-1.0.1.tgz";
        sha1 = "19d386a1d9edc6e7c1c85d388aedbcc56d33602d";
      };
    }

    {
      name = "async-foreach-0.1.3.tgz";
      path = fetchurl {
        name = "async-foreach-0.1.3.tgz";
        url  = "https://registry.yarnpkg.com/async-foreach/-/async-foreach-0.1.3.tgz";
        sha1 = "36121f845c0578172de419a97dbeb1d16ec34542";
      };
    }

    {
      name = "async-limiter-1.0.0.tgz";
      path = fetchurl {
        name = "async-limiter-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/async-limiter/-/async-limiter-1.0.0.tgz";
        sha1 = "78faed8c3d074ab81f22b4e985d79e8738f720f8";
      };
    }

    {
      name = "async-settle-1.0.0.tgz";
      path = fetchurl {
        name = "async-settle-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/async-settle/-/async-settle-1.0.0.tgz";
        sha1 = "1d0a914bb02575bec8a8f3a74e5080f72b2c0c6b";
      };
    }

    {
      name = "async-2.6.1.tgz";
      path = fetchurl {
        name = "async-2.6.1.tgz";
        url  = "https://registry.yarnpkg.com/async/-/async-2.6.1.tgz";
        sha1 = "b245a23ca71930044ec53fa46aa00a3e87c6a610";
      };
    }

    {
      name = "async-1.5.2.tgz";
      path = fetchurl {
        name = "async-1.5.2.tgz";
        url  = "https://registry.yarnpkg.com/async/-/async-1.5.2.tgz";
        sha1 = "ec6a61ae56480c0c3cb241c95618e20892f9672a";
      };
    }

    {
      name = "asynckit-0.4.0.tgz";
      path = fetchurl {
        name = "asynckit-0.4.0.tgz";
        url  = "https://registry.yarnpkg.com/asynckit/-/asynckit-0.4.0.tgz";
        sha1 = "c79ed97f7f34cb8f2ba1bc9790bcc366474b4b79";
      };
    }

    {
      name = "atob-2.1.1.tgz";
      path = fetchurl {
        name = "atob-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/atob/-/atob-2.1.1.tgz";
        sha1 = "ae2d5a729477f289d60dd7f96a6314a22dd6c22a";
      };
    }

    {
      name = "autoprefixer-8.6.3.tgz";
      path = fetchurl {
        name = "autoprefixer-8.6.3.tgz";
        url  = "https://registry.yarnpkg.com/autoprefixer/-/autoprefixer-8.6.3.tgz";
        sha1 = "1d38a129e6a4582a565b6570d16f2d7d3de9cbf9";
      };
    }

    {
      name = "aws-sign2-0.6.0.tgz";
      path = fetchurl {
        name = "aws-sign2-0.6.0.tgz";
        url  = "https://registry.yarnpkg.com/aws-sign2/-/aws-sign2-0.6.0.tgz";
        sha1 = "14342dd38dbcc94d0e5b87d763cd63612c0e794f";
      };
    }

    {
      name = "aws4-1.7.0.tgz";
      path = fetchurl {
        name = "aws4-1.7.0.tgz";
        url  = "https://registry.yarnpkg.com/aws4/-/aws4-1.7.0.tgz";
        sha1 = "d4d0e9b9dbfca77bf08eeb0a8a471550fe39e289";
      };
    }

    {
      name = "axios-0.17.1.tgz";
      path = fetchurl {
        name = "axios-0.17.1.tgz";
        url  = "https://registry.yarnpkg.com/axios/-/axios-0.17.1.tgz";
        sha1 = "2d8e3e5d0bdbd7327f91bc814f5c57660f81824d";
      };
    }

    {
      name = "babel-code-frame-6.26.0.tgz";
      path = fetchurl {
        name = "babel-code-frame-6.26.0.tgz";
        url  = "https://registry.yarnpkg.com/babel-code-frame/-/babel-code-frame-6.26.0.tgz";
        sha1 = "63fd43f7dc1e3bb7ce35947db8fe369a3f58c74b";
      };
    }

    {
      name = "babel-eslint-8.2.5.tgz";
      path = fetchurl {
        name = "babel-eslint-8.2.5.tgz";
        url  = "https://registry.yarnpkg.com/babel-eslint/-/babel-eslint-8.2.5.tgz";
        sha1 = "dc2331c259d36782aa189da510c43dedd5adc7a3";
      };
    }

    {
      name = "babylon-7.0.0-beta.44.tgz";
      path = fetchurl {
        name = "babylon-7.0.0-beta.44.tgz";
        url  = "https://registry.yarnpkg.com/babylon/-/babylon-7.0.0-beta.44.tgz";
        sha1 = "89159e15e6e30c5096e22d738d8c0af8a0e8ca1d";
      };
    }

    {
      name = "bach-1.2.0.tgz";
      path = fetchurl {
        name = "bach-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/bach/-/bach-1.2.0.tgz";
        sha1 = "4b3ce96bf27134f79a1b414a51c14e34c3bd9880";
      };
    }

    {
      name = "backo2-1.0.2.tgz";
      path = fetchurl {
        name = "backo2-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/backo2/-/backo2-1.0.2.tgz";
        sha1 = "31ab1ac8b129363463e35b3ebb69f4dfcfba7947";
      };
    }

    {
      name = "balanced-match-1.0.0.tgz";
      path = fetchurl {
        name = "balanced-match-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/balanced-match/-/balanced-match-1.0.0.tgz";
        sha1 = "89b4d199ab2bee49de164ea02b89ce462d71b767";
      };
    }

    {
      name = "base64-arraybuffer-0.1.5.tgz";
      path = fetchurl {
        name = "base64-arraybuffer-0.1.5.tgz";
        url  = "https://registry.yarnpkg.com/base64-arraybuffer/-/base64-arraybuffer-0.1.5.tgz";
        sha1 = "73926771923b5a19747ad666aa5cd4bf9c6e9ce8";
      };
    }

    {
      name = "base64id-1.0.0.tgz";
      path = fetchurl {
        name = "base64id-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/base64id/-/base64id-1.0.0.tgz";
        sha1 = "47688cb99bb6804f0e06d3e763b1c32e57d8e6b6";
      };
    }

    {
      name = "base-0.11.2.tgz";
      path = fetchurl {
        name = "base-0.11.2.tgz";
        url  = "https://registry.yarnpkg.com/base/-/base-0.11.2.tgz";
        sha1 = "7bde5ced145b6d551a90db87f83c558b4eb48a8f";
      };
    }

    {
      name = "batch-0.6.1.tgz";
      path = fetchurl {
        name = "batch-0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/batch/-/batch-0.6.1.tgz";
        sha1 = "dc34314f4e679318093fc760272525f94bf25c16";
      };
    }

    {
      name = "bcrypt-pbkdf-1.0.1.tgz";
      path = fetchurl {
        name = "bcrypt-pbkdf-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/bcrypt-pbkdf/-/bcrypt-pbkdf-1.0.1.tgz";
        sha1 = "63bc5dcb61331b92bc05fd528953c33462a06f8d";
      };
    }

    {
      name = "beeper-1.1.1.tgz";
      path = fetchurl {
        name = "beeper-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/beeper/-/beeper-1.1.1.tgz";
        sha1 = "e6d5ea8c5dad001304a70b22638447f69cb2f809";
      };
    }

    {
      name = "better-assert-1.0.2.tgz";
      path = fetchurl {
        name = "better-assert-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/better-assert/-/better-assert-1.0.2.tgz";
        sha1 = "40866b9e1b9e0b55b481894311e68faffaebc522";
      };
    }

    {
      name = "binary-extensions-1.11.0.tgz";
      path = fetchurl {
        name = "binary-extensions-1.11.0.tgz";
        url  = "https://registry.yarnpkg.com/binary-extensions/-/binary-extensions-1.11.0.tgz";
        sha1 = "46aa1751fb6a2f93ee5e689bb1087d4b14c6c205";
      };
    }

    {
      name = "binary-0.3.0.tgz";
      path = fetchurl {
        name = "binary-0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/binary/-/binary-0.3.0.tgz";
        sha1 = "9f60553bc5ce8c3386f3b553cff47462adecaa79";
      };
    }

    {
      name = "blob-0.0.4.tgz";
      path = fetchurl {
        name = "blob-0.0.4.tgz";
        url  = "https://registry.yarnpkg.com/blob/-/blob-0.0.4.tgz";
        sha1 = "bcf13052ca54463f30f9fc7e95b9a47630a94921";
      };
    }

    {
      name = "block-stream-0.0.9.tgz";
      path = fetchurl {
        name = "block-stream-0.0.9.tgz";
        url  = "https://registry.yarnpkg.com/block-stream/-/block-stream-0.0.9.tgz";
        sha1 = "13ebfe778a03205cfe03751481ebb4b3300c126a";
      };
    }

    {
      name = "boolbase-1.0.0.tgz";
      path = fetchurl {
        name = "boolbase-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/boolbase/-/boolbase-1.0.0.tgz";
        sha1 = "68dff5fbe60c51eb37725ea9e3ed310dcc1e776e";
      };
    }

    {
      name = "boom-2.10.1.tgz";
      path = fetchurl {
        name = "boom-2.10.1.tgz";
        url  = "https://registry.yarnpkg.com/boom/-/boom-2.10.1.tgz";
        sha1 = "39c8918ceff5799f83f9492a848f625add0c766f";
      };
    }

    {
      name = "brace-expansion-1.1.11.tgz";
      path = fetchurl {
        name = "brace-expansion-1.1.11.tgz";
        url  = "https://registry.yarnpkg.com/brace-expansion/-/brace-expansion-1.1.11.tgz";
        sha1 = "3c7fcbf529d87226f3d2f52b966ff5271eb441dd";
      };
    }

    {
      name = "braces-1.8.5.tgz";
      path = fetchurl {
        name = "braces-1.8.5.tgz";
        url  = "https://registry.yarnpkg.com/braces/-/braces-1.8.5.tgz";
        sha1 = "ba77962e12dff969d6b76711e914b737857bf6a7";
      };
    }

    {
      name = "braces-2.3.2.tgz";
      path = fetchurl {
        name = "braces-2.3.2.tgz";
        url  = "https://registry.yarnpkg.com/braces/-/braces-2.3.2.tgz";
        sha1 = "5979fd3f14cd531565e5fa2df1abfff1dfaee729";
      };
    }

    {
      name = "browser-sync-ui-1.0.1.tgz";
      path = fetchurl {
        name = "browser-sync-ui-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/browser-sync-ui/-/browser-sync-ui-1.0.1.tgz";
        sha1 = "9740527b26d1d7ace259acc0c79e5b5e37d0fdf2";
      };
    }

    {
      name = "browser-sync-2.24.5.tgz";
      path = fetchurl {
        name = "browser-sync-2.24.5.tgz";
        url  = "https://registry.yarnpkg.com/browser-sync/-/browser-sync-2.24.5.tgz";
        sha1 = "2b32c00cd85958be570c20fae557b0dc0ccd3818";
      };
    }

    {
      name = "browserslist-3.2.8.tgz";
      path = fetchurl {
        name = "browserslist-3.2.8.tgz";
        url  = "https://registry.yarnpkg.com/browserslist/-/browserslist-3.2.8.tgz";
        sha1 = "b0005361d6471f0f5952797a76fc985f1f978fc6";
      };
    }

    {
      name = "bs-recipes-1.3.4.tgz";
      path = fetchurl {
        name = "bs-recipes-1.3.4.tgz";
        url  = "https://registry.yarnpkg.com/bs-recipes/-/bs-recipes-1.3.4.tgz";
        sha1 = "0d2d4d48a718c8c044769fdc4f89592dc8b69585";
      };
    }

    {
      name = "buffer-equal-1.0.0.tgz";
      path = fetchurl {
        name = "buffer-equal-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/buffer-equal/-/buffer-equal-1.0.0.tgz";
        sha1 = "59616b498304d556abd466966b22eeda3eca5fbe";
      };
    }

    {
      name = "buffer-from-1.1.0.tgz";
      path = fetchurl {
        name = "buffer-from-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/buffer-from/-/buffer-from-1.1.0.tgz";
        sha1 = "87fcaa3a298358e0ade6e442cfce840740d1ad04";
      };
    }

    {
      name = "buffers-0.1.1.tgz";
      path = fetchurl {
        name = "buffers-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/buffers/-/buffers-0.1.1.tgz";
        sha1 = "b24579c3bed4d6d396aeee6d9a8ae7f5482ab7bb";
      };
    }

    {
      name = "bufferstreams-1.1.3.tgz";
      path = fetchurl {
        name = "bufferstreams-1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/bufferstreams/-/bufferstreams-1.1.3.tgz";
        sha1 = "a8515ac024fa90e8fa7d58c11b13dea1f28abe72";
      };
    }

    {
      name = "builtin-modules-1.1.1.tgz";
      path = fetchurl {
        name = "builtin-modules-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/builtin-modules/-/builtin-modules-1.1.1.tgz";
        sha1 = "270f076c5a72c02f5b65a47df94c5fe3a278892f";
      };
    }

    {
      name = "bytes-3.0.0.tgz";
      path = fetchurl {
        name = "bytes-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/bytes/-/bytes-3.0.0.tgz";
        sha1 = "d32815404d689699f85a4ea4fa8755dd13a96048";
      };
    }

    {
      name = "cache-base-1.0.1.tgz";
      path = fetchurl {
        name = "cache-base-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/cache-base/-/cache-base-1.0.1.tgz";
        sha1 = "0a7f46416831c8b662ee36fe4e7c59d76f666ab2";
      };
    }

    {
      name = "cachebust-2.3.0.tgz";
      path = fetchurl {
        name = "cachebust-2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/cachebust/-/cachebust-2.3.0.tgz";
        sha1 = "d9b050194d847c3c12662c5dc1a0db2b59bd7296";
      };
    }

    {
      name = "caller-path-0.1.0.tgz";
      path = fetchurl {
        name = "caller-path-0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/caller-path/-/caller-path-0.1.0.tgz";
        sha1 = "94085ef63581ecd3daa92444a8fe94e82577751f";
      };
    }

    {
      name = "callsite-1.0.0.tgz";
      path = fetchurl {
        name = "callsite-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/callsite/-/callsite-1.0.0.tgz";
        sha1 = "280398e5d664bd74038b6f0905153e6e8af1bc20";
      };
    }

    {
      name = "callsites-0.2.0.tgz";
      path = fetchurl {
        name = "callsites-0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/callsites/-/callsites-0.2.0.tgz";
        sha1 = "afab96262910a7f33c19a5775825c69f34e350ca";
      };
    }

    {
      name = "camel-case-3.0.0.tgz";
      path = fetchurl {
        name = "camel-case-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/camel-case/-/camel-case-3.0.0.tgz";
        sha1 = "ca3c3688a4e9cf3a4cda777dc4dcbc713249cf73";
      };
    }

    {
      name = "camelcase-keys-2.1.0.tgz";
      path = fetchurl {
        name = "camelcase-keys-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/camelcase-keys/-/camelcase-keys-2.1.0.tgz";
        sha1 = "308beeaffdf28119051efa1d932213c91b8f92e7";
      };
    }

    {
      name = "camelcase-2.1.1.tgz";
      path = fetchurl {
        name = "camelcase-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/camelcase/-/camelcase-2.1.1.tgz";
        sha1 = "7c1d16d679a1bbe59ca02cacecfb011e201f5a1f";
      };
    }

    {
      name = "camelcase-3.0.0.tgz";
      path = fetchurl {
        name = "camelcase-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/camelcase/-/camelcase-3.0.0.tgz";
        sha1 = "32fc4b9fcdaf845fcdf7e73bb97cac2261f0ab0a";
      };
    }

    {
      name = "caniuse-lite-1.0.30000858.tgz";
      path = fetchurl {
        name = "caniuse-lite-1.0.30000858.tgz";
        url  = "https://registry.yarnpkg.com/caniuse-lite/-/caniuse-lite-1.0.30000858.tgz";
        sha1 = "f6f203a9128bac507136de1cf6cfd966d2df027c";
      };
    }

    {
      name = "caseless-0.11.0.tgz";
      path = fetchurl {
        name = "caseless-0.11.0.tgz";
        url  = "https://registry.yarnpkg.com/caseless/-/caseless-0.11.0.tgz";
        sha1 = "715b96ea9841593cc33067923f5ec60ebda4f7d7";
      };
    }

    {
      name = "caseless-0.12.0.tgz";
      path = fetchurl {
        name = "caseless-0.12.0.tgz";
        url  = "https://registry.yarnpkg.com/caseless/-/caseless-0.12.0.tgz";
        sha1 = "1b681c21ff84033c826543090689420d187151dc";
      };
    }

    {
      name = "chainsaw-0.1.0.tgz";
      path = fetchurl {
        name = "chainsaw-0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/chainsaw/-/chainsaw-0.1.0.tgz";
        sha1 = "5eab50b28afe58074d0d58291388828b5e5fbc98";
      };
    }

    {
      name = "chalk-1.1.3.tgz";
      path = fetchurl {
        name = "chalk-1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/chalk/-/chalk-1.1.3.tgz";
        sha1 = "a8115c55e4a702fe4d150abd3872822a7e09fc98";
      };
    }

    {
      name = "chalk-2.4.1.tgz";
      path = fetchurl {
        name = "chalk-2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/chalk/-/chalk-2.4.1.tgz";
        sha1 = "18c49ab16a037b6eb0152cc83e3471338215b66e";
      };
    }

    {
      name = "chardet-0.4.2.tgz";
      path = fetchurl {
        name = "chardet-0.4.2.tgz";
        url  = "https://registry.yarnpkg.com/chardet/-/chardet-0.4.2.tgz";
        sha1 = "b5473b33dc97c424e5d98dc87d55d4d8a29c8bf2";
      };
    }

    {
      name = "charenc-0.0.2.tgz";
      path = fetchurl {
        name = "charenc-0.0.2.tgz";
        url  = "https://registry.yarnpkg.com/charenc/-/charenc-0.0.2.tgz";
        sha1 = "c0a1d2f3a7092e03774bfa83f14c0fc5790a8667";
      };
    }

    {
      name = "cheerio-0.22.0.tgz";
      path = fetchurl {
        name = "cheerio-0.22.0.tgz";
        url  = "https://registry.yarnpkg.com/cheerio/-/cheerio-0.22.0.tgz";
        sha1 = "a9baa860a3f9b595a6b81b1a86873121ed3a269e";
      };
    }

    {
      name = "cheerio-0.19.0.tgz";
      path = fetchurl {
        name = "cheerio-0.19.0.tgz";
        url  = "https://registry.yarnpkg.com/cheerio/-/cheerio-0.19.0.tgz";
        sha1 = "772e7015f2ee29965096d71ea4175b75ab354925";
      };
    }

    {
      name = "chokidar-1.7.0.tgz";
      path = fetchurl {
        name = "chokidar-1.7.0.tgz";
        url  = "https://registry.yarnpkg.com/chokidar/-/chokidar-1.7.0.tgz";
        sha1 = "798e689778151c8076b4b360e5edd28cda2bb468";
      };
    }

    {
      name = "chownr-1.0.1.tgz";
      path = fetchurl {
        name = "chownr-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/chownr/-/chownr-1.0.1.tgz";
        sha1 = "e2a75042a9551908bebd25b8523d5f9769d79181";
      };
    }

    {
      name = "circular-json-0.3.3.tgz";
      path = fetchurl {
        name = "circular-json-0.3.3.tgz";
        url  = "https://registry.yarnpkg.com/circular-json/-/circular-json-0.3.3.tgz";
        sha1 = "815c99ea84f6809529d2f45791bdf82711352d66";
      };
    }

    {
      name = "clap-1.2.3.tgz";
      path = fetchurl {
        name = "clap-1.2.3.tgz";
        url  = "https://registry.yarnpkg.com/clap/-/clap-1.2.3.tgz";
        sha1 = "4f36745b32008492557f46412d66d50cb99bce51";
      };
    }

    {
      name = "class-utils-0.3.6.tgz";
      path = fetchurl {
        name = "class-utils-0.3.6.tgz";
        url  = "https://registry.yarnpkg.com/class-utils/-/class-utils-0.3.6.tgz";
        sha1 = "f93369ae8b9a7ce02fd41faad0ca83033190c463";
      };
    }

    {
      name = "clean-css-4.1.11.tgz";
      path = fetchurl {
        name = "clean-css-4.1.11.tgz";
        url  = "https://registry.yarnpkg.com/clean-css/-/clean-css-4.1.11.tgz";
        sha1 = "2ecdf145aba38f54740f26cefd0ff3e03e125d6a";
      };
    }

    {
      name = "cli-cursor-1.0.2.tgz";
      path = fetchurl {
        name = "cli-cursor-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/cli-cursor/-/cli-cursor-1.0.2.tgz";
        sha1 = "64da3f7d56a54412e59794bd62dc35295e8f2987";
      };
    }

    {
      name = "cli-cursor-2.1.0.tgz";
      path = fetchurl {
        name = "cli-cursor-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/cli-cursor/-/cli-cursor-2.1.0.tgz";
        sha1 = "b35dac376479facc3e94747d41d0d0f5238ffcb5";
      };
    }

    {
      name = "cli-width-2.2.0.tgz";
      path = fetchurl {
        name = "cli-width-2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/cli-width/-/cli-width-2.2.0.tgz";
        sha1 = "ff19ede8a9a5e579324147b0c11f0fbcbabed639";
      };
    }

    {
      name = "cliui-3.2.0.tgz";
      path = fetchurl {
        name = "cliui-3.2.0.tgz";
        url  = "https://registry.yarnpkg.com/cliui/-/cliui-3.2.0.tgz";
        sha1 = "120601537a916d29940f934da3b48d585a39213d";
      };
    }

    {
      name = "clone-buffer-1.0.0.tgz";
      path = fetchurl {
        name = "clone-buffer-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/clone-buffer/-/clone-buffer-1.0.0.tgz";
        sha1 = "e3e25b207ac4e701af721e2cb5a16792cac3dc58";
      };
    }

    {
      name = "clone-stats-0.0.1.tgz";
      path = fetchurl {
        name = "clone-stats-0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/clone-stats/-/clone-stats-0.0.1.tgz";
        sha1 = "b88f94a82cf38b8791d58046ea4029ad88ca99d1";
      };
    }

    {
      name = "clone-stats-1.0.0.tgz";
      path = fetchurl {
        name = "clone-stats-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/clone-stats/-/clone-stats-1.0.0.tgz";
        sha1 = "b3782dff8bb5474e18b9b6bf0fdfe782f8777680";
      };
    }

    {
      name = "clone-1.0.4.tgz";
      path = fetchurl {
        name = "clone-1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/clone/-/clone-1.0.4.tgz";
        sha1 = "da309cc263df15994c688ca902179ca3c7cd7c7e";
      };
    }

    {
      name = "clone-2.1.1.tgz";
      path = fetchurl {
        name = "clone-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/clone/-/clone-2.1.1.tgz";
        sha1 = "d217d1e961118e3ac9a4b8bba3285553bf647cdb";
      };
    }

    {
      name = "cloneable-readable-1.1.2.tgz";
      path = fetchurl {
        name = "cloneable-readable-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/cloneable-readable/-/cloneable-readable-1.1.2.tgz";
        sha1 = "d591dee4a8f8bc15da43ce97dceeba13d43e2a65";
      };
    }

    {
      name = "co-4.6.0.tgz";
      path = fetchurl {
        name = "co-4.6.0.tgz";
        url  = "https://registry.yarnpkg.com/co/-/co-4.6.0.tgz";
        sha1 = "6ea6bdf3d853ae54ccb8e47bfa0bf3f9031fb184";
      };
    }

    {
      name = "coa-1.0.4.tgz";
      path = fetchurl {
        name = "coa-1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/coa/-/coa-1.0.4.tgz";
        sha1 = "a9ef153660d6a86a8bdec0289a5c684d217432fd";
      };
    }

    {
      name = "code-point-at-1.1.0.tgz";
      path = fetchurl {
        name = "code-point-at-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/code-point-at/-/code-point-at-1.1.0.tgz";
        sha1 = "0d070b4d043a5bea33a2f1a40e2edb3d9a4ccf77";
      };
    }

    {
      name = "collection-map-1.0.0.tgz";
      path = fetchurl {
        name = "collection-map-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/collection-map/-/collection-map-1.0.0.tgz";
        sha1 = "aea0f06f8d26c780c2b75494385544b2255af18c";
      };
    }

    {
      name = "collection-visit-1.0.0.tgz";
      path = fetchurl {
        name = "collection-visit-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/collection-visit/-/collection-visit-1.0.0.tgz";
        sha1 = "4bc0373c164bc3291b4d368c829cf1a80a59dca0";
      };
    }

    {
      name = "color-convert-1.9.2.tgz";
      path = fetchurl {
        name = "color-convert-1.9.2.tgz";
        url  = "https://registry.yarnpkg.com/color-convert/-/color-convert-1.9.2.tgz";
        sha1 = "49881b8fba67df12a96bdf3f56c0aab9e7913147";
      };
    }

    {
      name = "color-name-1.1.1.tgz";
      path = fetchurl {
        name = "color-name-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/color-name/-/color-name-1.1.1.tgz";
        sha1 = "4b1415304cf50028ea81643643bd82ea05803689";
      };
    }

    {
      name = "color-support-1.1.3.tgz";
      path = fetchurl {
        name = "color-support-1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/color-support/-/color-support-1.1.3.tgz";
        sha1 = "93834379a1cc9a0c61f82f52f0d04322251bd5a2";
      };
    }

    {
      name = "colors-1.1.2.tgz";
      path = fetchurl {
        name = "colors-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/colors/-/colors-1.1.2.tgz";
        sha1 = "168a4701756b6a7f51a12ce0c97bfa28c084ed63";
      };
    }

    {
      name = "combined-stream-1.0.6.tgz";
      path = fetchurl {
        name = "combined-stream-1.0.6.tgz";
        url  = "https://registry.yarnpkg.com/combined-stream/-/combined-stream-1.0.6.tgz";
        sha1 = "723e7df6e801ac5613113a7e445a9b69cb632818";
      };
    }

    {
      name = "commander-2.15.1.tgz";
      path = fetchurl {
        name = "commander-2.15.1.tgz";
        url  = "https://registry.yarnpkg.com/commander/-/commander-2.15.1.tgz";
        sha1 = "df46e867d0fc2aec66a34662b406a9ccafff5b0f";
      };
    }

    {
      name = "component-bind-1.0.0.tgz";
      path = fetchurl {
        name = "component-bind-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/component-bind/-/component-bind-1.0.0.tgz";
        sha1 = "00c608ab7dcd93897c0009651b1d3a8e1e73bbd1";
      };
    }

    {
      name = "component-emitter-1.2.1.tgz";
      path = fetchurl {
        name = "component-emitter-1.2.1.tgz";
        url  = "https://registry.yarnpkg.com/component-emitter/-/component-emitter-1.2.1.tgz";
        sha1 = "137918d6d78283f7df7a6b7c5a63e140e69425e6";
      };
    }

    {
      name = "component-inherit-0.0.3.tgz";
      path = fetchurl {
        name = "component-inherit-0.0.3.tgz";
        url  = "https://registry.yarnpkg.com/component-inherit/-/component-inherit-0.0.3.tgz";
        sha1 = "645fc4adf58b72b649d5cae65135619db26ff143";
      };
    }

    {
      name = "concat-map-0.0.1.tgz";
      path = fetchurl {
        name = "concat-map-0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/concat-map/-/concat-map-0.0.1.tgz";
        sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
      };
    }

    {
      name = "concat-stream-1.6.2.tgz";
      path = fetchurl {
        name = "concat-stream-1.6.2.tgz";
        url  = "https://registry.yarnpkg.com/concat-stream/-/concat-stream-1.6.2.tgz";
        sha1 = "904bdf194cd3122fc675c77fc4ac3d4ff0fd1a34";
      };
    }

    {
      name = "connect-history-api-fallback-1.5.0.tgz";
      path = fetchurl {
        name = "connect-history-api-fallback-1.5.0.tgz";
        url  = "https://registry.yarnpkg.com/connect-history-api-fallback/-/connect-history-api-fallback-1.5.0.tgz";
        sha1 = "b06873934bc5e344fef611a196a6faae0aee015a";
      };
    }

    {
      name = "connect-3.6.6.tgz";
      path = fetchurl {
        name = "connect-3.6.6.tgz";
        url  = "https://registry.yarnpkg.com/connect/-/connect-3.6.6.tgz";
        sha1 = "09eff6c55af7236e137135a72574858b6786f524";
      };
    }

    {
      name = "console-control-strings-1.1.0.tgz";
      path = fetchurl {
        name = "console-control-strings-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/console-control-strings/-/console-control-strings-1.1.0.tgz";
        sha1 = "3d7cf4464db6446ea644bf4b39507f9851008e8e";
      };
    }

    {
      name = "convert-source-map-1.5.1.tgz";
      path = fetchurl {
        name = "convert-source-map-1.5.1.tgz";
        url  = "https://registry.yarnpkg.com/convert-source-map/-/convert-source-map-1.5.1.tgz";
        sha1 = "b8278097b9bc229365de5c62cf5fcaed8b5599e5";
      };
    }

    {
      name = "cookie-0.3.1.tgz";
      path = fetchurl {
        name = "cookie-0.3.1.tgz";
        url  = "https://registry.yarnpkg.com/cookie/-/cookie-0.3.1.tgz";
        sha1 = "e7e0a1f9ef43b4c8ba925c5c5a96e806d16873bb";
      };
    }

    {
      name = "copy-descriptor-0.1.1.tgz";
      path = fetchurl {
        name = "copy-descriptor-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/copy-descriptor/-/copy-descriptor-0.1.1.tgz";
        sha1 = "676f6eb3c39997c2ee1ac3a924fd6124748f578d";
      };
    }

    {
      name = "copy-props-2.0.4.tgz";
      path = fetchurl {
        name = "copy-props-2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/copy-props/-/copy-props-2.0.4.tgz";
        sha1 = "93bb1cadfafd31da5bb8a9d4b41f471ec3a72dfe";
      };
    }

    {
      name = "core-util-is-1.0.2.tgz";
      path = fetchurl {
        name = "core-util-is-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/core-util-is/-/core-util-is-1.0.2.tgz";
        sha1 = "b5fd54220aa2bc5ab57aab7140c940754503c1a7";
      };
    }

    {
      name = "cross-spawn-3.0.1.tgz";
      path = fetchurl {
        name = "cross-spawn-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-3.0.1.tgz";
        sha1 = "1256037ecb9f0c5f79e3d6ef135e30770184b982";
      };
    }

    {
      name = "cross-spawn-5.1.0.tgz";
      path = fetchurl {
        name = "cross-spawn-5.1.0.tgz";
        url  = "https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-5.1.0.tgz";
        sha1 = "e8bd0efee58fcff6f8f94510a0a554bbfa235449";
      };
    }

    {
      name = "cross-spawn-6.0.5.tgz";
      path = fetchurl {
        name = "cross-spawn-6.0.5.tgz";
        url  = "https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-6.0.5.tgz";
        sha1 = "4a5ec7c64dfae22c3a14124dbacdee846d80cbc4";
      };
    }

    {
      name = "crypt-0.0.2.tgz";
      path = fetchurl {
        name = "crypt-0.0.2.tgz";
        url  = "https://registry.yarnpkg.com/crypt/-/crypt-0.0.2.tgz";
        sha1 = "88d7ff7ec0dfb86f713dc87bbb42d044d3e6c41b";
      };
    }

    {
      name = "cryptiles-2.0.5.tgz";
      path = fetchurl {
        name = "cryptiles-2.0.5.tgz";
        url  = "https://registry.yarnpkg.com/cryptiles/-/cryptiles-2.0.5.tgz";
        sha1 = "3bdfecdc608147c1c67202fa291e7dca59eaa3b8";
      };
    }

    {
      name = "css-select-1.0.0.tgz";
      path = fetchurl {
        name = "css-select-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/css-select/-/css-select-1.0.0.tgz";
        sha1 = "b1121ca51848dd264e2244d058cee254deeb44b0";
      };
    }

    {
      name = "css-select-1.2.0.tgz";
      path = fetchurl {
        name = "css-select-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/css-select/-/css-select-1.2.0.tgz";
        sha1 = "2b3a110539c5355f1cd8d314623e870b121ec858";
      };
    }

    {
      name = "css-tree-1.0.0-alpha25.tgz";
      path = fetchurl {
        name = "css-tree-1.0.0-alpha25.tgz";
        url  = "https://registry.yarnpkg.com/css-tree/-/css-tree-1.0.0-alpha25.tgz";
        sha1 = "1bbfabfbf6eeef4f01d9108ff2edd0be2fe35597";
      };
    }

    {
      name = "css-what-1.0.0.tgz";
      path = fetchurl {
        name = "css-what-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/css-what/-/css-what-1.0.0.tgz";
        sha1 = "d7cc2df45180666f99d2b14462639469e00f736c";
      };
    }

    {
      name = "css-what-2.1.0.tgz";
      path = fetchurl {
        name = "css-what-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/css-what/-/css-what-2.1.0.tgz";
        sha1 = "9467d032c38cfaefb9f2d79501253062f87fa1bd";
      };
    }

    {
      name = "css-2.2.3.tgz";
      path = fetchurl {
        name = "css-2.2.3.tgz";
        url  = "https://registry.yarnpkg.com/css/-/css-2.2.3.tgz";
        sha1 = "f861f4ba61e79bedc962aa548e5780fd95cbc6be";
      };
    }

    {
      name = "csso-3.4.0.tgz";
      path = fetchurl {
        name = "csso-3.4.0.tgz";
        url  = "https://registry.yarnpkg.com/csso/-/csso-3.4.0.tgz";
        sha1 = "57b27ef553cccbf5aa964c641748641e9af113f3";
      };
    }

    {
      name = "csso-2.3.2.tgz";
      path = fetchurl {
        name = "csso-2.3.2.tgz";
        url  = "https://registry.yarnpkg.com/csso/-/csso-2.3.2.tgz";
        sha1 = "ddd52c587033f49e94b71fc55569f252e8ff5f85";
      };
    }

    {
      name = "currently-unhandled-0.4.1.tgz";
      path = fetchurl {
        name = "currently-unhandled-0.4.1.tgz";
        url  = "https://registry.yarnpkg.com/currently-unhandled/-/currently-unhandled-0.4.1.tgz";
        sha1 = "988df33feab191ef799a61369dd76c17adf957ea";
      };
    }

    {
      name = "d3-collection-1.0.4.tgz";
      path = fetchurl {
        name = "d3-collection-1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/d3-collection/-/d3-collection-1.0.4.tgz";
        sha1 = "342dfd12837c90974f33f1cc0a785aea570dcdc2";
      };
    }

    {
      name = "d3-color-1.2.0.tgz";
      path = fetchurl {
        name = "d3-color-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/d3-color/-/d3-color-1.2.0.tgz";
        sha1 = "d1ea19db5859c86854586276ec892cf93148459a";
      };
    }

    {
      name = "d3-dispatch-1.0.3.tgz";
      path = fetchurl {
        name = "d3-dispatch-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/d3-dispatch/-/d3-dispatch-1.0.3.tgz";
        sha1 = "46e1491eaa9b58c358fce5be4e8bed626e7871f8";
      };
    }

    {
      name = "d3-drag-1.2.1.tgz";
      path = fetchurl {
        name = "d3-drag-1.2.1.tgz";
        url  = "https://registry.yarnpkg.com/d3-drag/-/d3-drag-1.2.1.tgz";
        sha1 = "df8dd4c502fb490fc7462046a8ad98a5c479282d";
      };
    }

    {
      name = "d3-ease-1.0.3.tgz";
      path = fetchurl {
        name = "d3-ease-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/d3-ease/-/d3-ease-1.0.3.tgz";
        sha1 = "68bfbc349338a380c44d8acc4fbc3304aa2d8c0e";
      };
    }

    {
      name = "d3-force-1.1.0.tgz";
      path = fetchurl {
        name = "d3-force-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/d3-force/-/d3-force-1.1.0.tgz";
        sha1 = "cebf3c694f1078fcc3d4daf8e567b2fbd70d4ea3";
      };
    }

    {
      name = "d3-interpolate-1.2.0.tgz";
      path = fetchurl {
        name = "d3-interpolate-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/d3-interpolate/-/d3-interpolate-1.2.0.tgz";
        sha1 = "40d81bd8e959ff021c5ea7545bc79b8d22331c41";
      };
    }

    {
      name = "d3-quadtree-1.0.3.tgz";
      path = fetchurl {
        name = "d3-quadtree-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/d3-quadtree/-/d3-quadtree-1.0.3.tgz";
        sha1 = "ac7987e3e23fe805a990f28e1b50d38fcb822438";
      };
    }

    {
      name = "d3-selection-1.3.0.tgz";
      path = fetchurl {
        name = "d3-selection-1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/d3-selection/-/d3-selection-1.3.0.tgz";
        sha1 = "d53772382d3dc4f7507bfb28bcd2d6aed2a0ad6d";
      };
    }

    {
      name = "d3-timer-1.0.7.tgz";
      path = fetchurl {
        name = "d3-timer-1.0.7.tgz";
        url  = "https://registry.yarnpkg.com/d3-timer/-/d3-timer-1.0.7.tgz";
        sha1 = "df9650ca587f6c96607ff4e60cc38229e8dd8531";
      };
    }

    {
      name = "d3-transition-1.1.1.tgz";
      path = fetchurl {
        name = "d3-transition-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/d3-transition/-/d3-transition-1.1.1.tgz";
        sha1 = "d8ef89c3b848735b060e54a39b32aaebaa421039";
      };
    }

    {
      name = "d3-zoom-1.7.1.tgz";
      path = fetchurl {
        name = "d3-zoom-1.7.1.tgz";
        url  = "https://registry.yarnpkg.com/d3-zoom/-/d3-zoom-1.7.1.tgz";
        sha1 = "02f43b3c3e2db54f364582d7e4a236ccc5506b63";
      };
    }

    {
      name = "d-1.0.0.tgz";
      path = fetchurl {
        name = "d-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/d/-/d-1.0.0.tgz";
        sha1 = "754bb5bfe55451da69a58b94d45f4c5b0462d58f";
      };
    }

    {
      name = "dashdash-1.14.1.tgz";
      path = fetchurl {
        name = "dashdash-1.14.1.tgz";
        url  = "https://registry.yarnpkg.com/dashdash/-/dashdash-1.14.1.tgz";
        sha1 = "853cfa0f7cbe2fed5de20326b8dd581035f6e2f0";
      };
    }

    {
      name = "dateformat-2.2.0.tgz";
      path = fetchurl {
        name = "dateformat-2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/dateformat/-/dateformat-2.2.0.tgz";
        sha1 = "4065e2013cf9fb916ddfd82efb506ad4c6769062";
      };
    }

    {
      name = "debug-fabulous-1.1.0.tgz";
      path = fetchurl {
        name = "debug-fabulous-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/debug-fabulous/-/debug-fabulous-1.1.0.tgz";
        sha1 = "af8a08632465224ef4174a9f06308c3c2a1ebc8e";
      };
    }

    {
      name = "debug-2.6.8.tgz";
      path = fetchurl {
        name = "debug-2.6.8.tgz";
        url  = "https://registry.yarnpkg.com/debug/-/debug-2.6.8.tgz";
        sha1 = "e731531ca2ede27d188222427da17821d68ff4fc";
      };
    }

    {
      name = "debug-2.6.9.tgz";
      path = fetchurl {
        name = "debug-2.6.9.tgz";
        url  = "https://registry.yarnpkg.com/debug/-/debug-2.6.9.tgz";
        sha1 = "5d128515df134ff327e90a4c93f4e077a536341f";
      };
    }

    {
      name = "debug-3.1.0.tgz";
      path = fetchurl {
        name = "debug-3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/debug/-/debug-3.1.0.tgz";
        sha1 = "5bb5a0672628b64149566ba16819e61518c67261";
      };
    }

    {
      name = "debug-2.2.0.tgz";
      path = fetchurl {
        name = "debug-2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/debug/-/debug-2.2.0.tgz";
        sha1 = "f87057e995b1a1f6ae6a4960664137bc56f039da";
      };
    }

    {
      name = "decamelize-1.2.0.tgz";
      path = fetchurl {
        name = "decamelize-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/decamelize/-/decamelize-1.2.0.tgz";
        sha1 = "f6534d15148269b20352e7bee26f501f9a191290";
      };
    }

    {
      name = "decode-uri-component-0.2.0.tgz";
      path = fetchurl {
        name = "decode-uri-component-0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/decode-uri-component/-/decode-uri-component-0.2.0.tgz";
        sha1 = "eb3913333458775cb84cd1a1fae062106bb87545";
      };
    }

    {
      name = "deep-extend-0.6.0.tgz";
      path = fetchurl {
        name = "deep-extend-0.6.0.tgz";
        url  = "https://registry.yarnpkg.com/deep-extend/-/deep-extend-0.6.0.tgz";
        sha1 = "c4fa7c95404a17a9c3e8ca7e1537312b736330ac";
      };
    }

    {
      name = "deep-is-0.1.3.tgz";
      path = fetchurl {
        name = "deep-is-0.1.3.tgz";
        url  = "https://registry.yarnpkg.com/deep-is/-/deep-is-0.1.3.tgz";
        sha1 = "b369d6fb5dbc13eecf524f91b070feedc357cf34";
      };
    }

    {
      name = "default-compare-1.0.0.tgz";
      path = fetchurl {
        name = "default-compare-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/default-compare/-/default-compare-1.0.0.tgz";
        sha1 = "cb61131844ad84d84788fb68fd01681ca7781a2f";
      };
    }

    {
      name = "default-resolution-2.0.0.tgz";
      path = fetchurl {
        name = "default-resolution-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/default-resolution/-/default-resolution-2.0.0.tgz";
        sha1 = "bcb82baa72ad79b426a76732f1a81ad6df26d684";
      };
    }

    {
      name = "define-properties-1.1.2.tgz";
      path = fetchurl {
        name = "define-properties-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/define-properties/-/define-properties-1.1.2.tgz";
        sha1 = "83a73f2fea569898fb737193c8f873caf6d45c94";
      };
    }

    {
      name = "define-property-0.2.5.tgz";
      path = fetchurl {
        name = "define-property-0.2.5.tgz";
        url  = "https://registry.yarnpkg.com/define-property/-/define-property-0.2.5.tgz";
        sha1 = "c35b1ef918ec3c990f9a5bc57be04aacec5c8116";
      };
    }

    {
      name = "define-property-1.0.0.tgz";
      path = fetchurl {
        name = "define-property-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/define-property/-/define-property-1.0.0.tgz";
        sha1 = "769ebaaf3f4a63aad3af9e8d304c9bbe79bfb0e6";
      };
    }

    {
      name = "define-property-2.0.2.tgz";
      path = fetchurl {
        name = "define-property-2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/define-property/-/define-property-2.0.2.tgz";
        sha1 = "d459689e8d654ba77e02a817f8710d702cb16e9d";
      };
    }

    {
      name = "del-2.2.2.tgz";
      path = fetchurl {
        name = "del-2.2.2.tgz";
        url  = "https://registry.yarnpkg.com/del/-/del-2.2.2.tgz";
        sha1 = "c12c981d067846c84bcaf862cff930d907ffd1a8";
      };
    }

    {
      name = "delayed-stream-1.0.0.tgz";
      path = fetchurl {
        name = "delayed-stream-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/delayed-stream/-/delayed-stream-1.0.0.tgz";
        sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
      };
    }

    {
      name = "delegates-1.0.0.tgz";
      path = fetchurl {
        name = "delegates-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/delegates/-/delegates-1.0.0.tgz";
        sha1 = "84c6e159b81904fdca59a0ef44cd870d31250f9a";
      };
    }

    {
      name = "depd-1.1.2.tgz";
      path = fetchurl {
        name = "depd-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/depd/-/depd-1.1.2.tgz";
        sha1 = "9bcd52e14c097763e749b274c4346ed2e560b5a9";
      };
    }

    {
      name = "destroy-1.0.4.tgz";
      path = fetchurl {
        name = "destroy-1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/destroy/-/destroy-1.0.4.tgz";
        sha1 = "978857442c44749e4206613e37946205826abd80";
      };
    }

    {
      name = "detect-file-0.1.0.tgz";
      path = fetchurl {
        name = "detect-file-0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/detect-file/-/detect-file-0.1.0.tgz";
        sha1 = "4935dedfd9488648e006b0129566e9386711ea63";
      };
    }

    {
      name = "detect-file-1.0.0.tgz";
      path = fetchurl {
        name = "detect-file-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/detect-file/-/detect-file-1.0.0.tgz";
        sha1 = "f0d66d03672a825cb1b73bdb3fe62310c8e552b7";
      };
    }

    {
      name = "detect-libc-1.0.3.tgz";
      path = fetchurl {
        name = "detect-libc-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/detect-libc/-/detect-libc-1.0.3.tgz";
        sha1 = "fa137c4bd698edf55cd5cd02ac559f91a4c4ba9b";
      };
    }

    {
      name = "detect-newline-2.1.0.tgz";
      path = fetchurl {
        name = "detect-newline-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/detect-newline/-/detect-newline-2.1.0.tgz";
        sha1 = "f41f1c10be4b00e87b5f13da680759f2c5bfd3e2";
      };
    }

    {
      name = "dev-ip-1.0.1.tgz";
      path = fetchurl {
        name = "dev-ip-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/dev-ip/-/dev-ip-1.0.1.tgz";
        sha1 = "a76a3ed1855be7a012bb8ac16cb80f3c00dc28f0";
      };
    }

    {
      name = "doctrine-1.5.0.tgz";
      path = fetchurl {
        name = "doctrine-1.5.0.tgz";
        url  = "https://registry.yarnpkg.com/doctrine/-/doctrine-1.5.0.tgz";
        sha1 = "379dce730f6166f76cefa4e6707a159b02c5a6fa";
      };
    }

    {
      name = "doctrine-2.1.0.tgz";
      path = fetchurl {
        name = "doctrine-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/doctrine/-/doctrine-2.1.0.tgz";
        sha1 = "5cd01fc101621b42c4cd7f5d1a66243716d3f39d";
      };
    }

    {
      name = "dom-serializer-0.1.0.tgz";
      path = fetchurl {
        name = "dom-serializer-0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/dom-serializer/-/dom-serializer-0.1.0.tgz";
        sha1 = "073c697546ce0780ce23be4a28e293e40bc30c82";
      };
    }

    {
      name = "domelementtype-1.3.0.tgz";
      path = fetchurl {
        name = "domelementtype-1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/domelementtype/-/domelementtype-1.3.0.tgz";
        sha1 = "b17aed82e8ab59e52dd9c19b1756e0fc187204c2";
      };
    }

    {
      name = "domelementtype-1.1.3.tgz";
      path = fetchurl {
        name = "domelementtype-1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/domelementtype/-/domelementtype-1.1.3.tgz";
        sha1 = "bd28773e2642881aec51544924299c5cd822185b";
      };
    }

    {
      name = "domhandler-2.3.0.tgz";
      path = fetchurl {
        name = "domhandler-2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/domhandler/-/domhandler-2.3.0.tgz";
        sha1 = "2de59a0822d5027fabff6f032c2b25a2a8abe738";
      };
    }

    {
      name = "domhandler-2.4.2.tgz";
      path = fetchurl {
        name = "domhandler-2.4.2.tgz";
        url  = "https://registry.yarnpkg.com/domhandler/-/domhandler-2.4.2.tgz";
        sha1 = "8805097e933d65e85546f726d60f5eb88b44f803";
      };
    }

    {
      name = "domutils-1.4.3.tgz";
      path = fetchurl {
        name = "domutils-1.4.3.tgz";
        url  = "https://registry.yarnpkg.com/domutils/-/domutils-1.4.3.tgz";
        sha1 = "0865513796c6b306031850e175516baf80b72a6f";
      };
    }

    {
      name = "domutils-1.5.1.tgz";
      path = fetchurl {
        name = "domutils-1.5.1.tgz";
        url  = "https://registry.yarnpkg.com/domutils/-/domutils-1.5.1.tgz";
        sha1 = "dcd8488a26f563d61079e48c9f7b7e32373682cf";
      };
    }

    {
      name = "domutils-1.7.0.tgz";
      path = fetchurl {
        name = "domutils-1.7.0.tgz";
        url  = "https://registry.yarnpkg.com/domutils/-/domutils-1.7.0.tgz";
        sha1 = "56ea341e834e06e6748af7a1cb25da67ea9f8c2a";
      };
    }

    {
      name = "duplexer2-0.0.2.tgz";
      path = fetchurl {
        name = "duplexer2-0.0.2.tgz";
        url  = "https://registry.yarnpkg.com/duplexer2/-/duplexer2-0.0.2.tgz";
        sha1 = "c614dcf67e2fb14995a91711e5a617e8a60a31db";
      };
    }

    {
      name = "duplexer-0.1.1.tgz";
      path = fetchurl {
        name = "duplexer-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/duplexer/-/duplexer-0.1.1.tgz";
        sha1 = "ace6ff808c1ce66b57d1ebf97977acb02334cfc1";
      };
    }

    {
      name = "duplexify-3.6.0.tgz";
      path = fetchurl {
        name = "duplexify-3.6.0.tgz";
        url  = "https://registry.yarnpkg.com/duplexify/-/duplexify-3.6.0.tgz";
        sha1 = "592903f5d80b38d037220541264d69a198fb3410";
      };
    }

    {
      name = "each-props-1.3.2.tgz";
      path = fetchurl {
        name = "each-props-1.3.2.tgz";
        url  = "https://registry.yarnpkg.com/each-props/-/each-props-1.3.2.tgz";
        sha1 = "ea45a414d16dd5cfa419b1a81720d5ca06892333";
      };
    }

    {
      name = "easy-extender-2.3.2.tgz";
      path = fetchurl {
        name = "easy-extender-2.3.2.tgz";
        url  = "https://registry.yarnpkg.com/easy-extender/-/easy-extender-2.3.2.tgz";
        sha1 = "3d3248febe2b159607316d8f9cf491c16648221d";
      };
    }

    {
      name = "eazy-logger-3.0.2.tgz";
      path = fetchurl {
        name = "eazy-logger-3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/eazy-logger/-/eazy-logger-3.0.2.tgz";
        sha1 = "a325aa5e53d13a2225889b2ac4113b2b9636f4fc";
      };
    }

    {
      name = "ecc-jsbn-0.1.1.tgz";
      path = fetchurl {
        name = "ecc-jsbn-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ecc-jsbn/-/ecc-jsbn-0.1.1.tgz";
        sha1 = "0fc73a9ed5f0d53c38193398523ef7e543777505";
      };
    }

    {
      name = "ee-first-1.1.1.tgz";
      path = fetchurl {
        name = "ee-first-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ee-first/-/ee-first-1.1.1.tgz";
        sha1 = "590c61156b0ae2f4f0255732a158b266bc56b21d";
      };
    }

    {
      name = "electron-to-chromium-1.3.50.tgz";
      path = fetchurl {
        name = "electron-to-chromium-1.3.50.tgz";
        url  = "https://registry.yarnpkg.com/electron-to-chromium/-/electron-to-chromium-1.3.50.tgz";
        sha1 = "7438b76f92b41b919f3fbdd350fbd0757dacddf7";
      };
    }

    {
      name = "encodeurl-1.0.2.tgz";
      path = fetchurl {
        name = "encodeurl-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/encodeurl/-/encodeurl-1.0.2.tgz";
        sha1 = "ad3ff4c86ec2d029322f5a02c3a9a606c95b3f59";
      };
    }

    {
      name = "end-of-stream-1.4.1.tgz";
      path = fetchurl {
        name = "end-of-stream-1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/end-of-stream/-/end-of-stream-1.4.1.tgz";
        sha1 = "ed29634d19baba463b6ce6b80a37213eab71ec43";
      };
    }

    {
      name = "engine.io-client-3.1.6.tgz";
      path = fetchurl {
        name = "engine.io-client-3.1.6.tgz";
        url  = "https://registry.yarnpkg.com/engine.io-client/-/engine.io-client-3.1.6.tgz";
        sha1 = "5bdeb130f8b94a50ac5cbeb72583e7a4a063ddfd";
      };
    }

    {
      name = "engine.io-client-3.2.1.tgz";
      path = fetchurl {
        name = "engine.io-client-3.2.1.tgz";
        url  = "https://registry.yarnpkg.com/engine.io-client/-/engine.io-client-3.2.1.tgz";
        sha1 = "6f54c0475de487158a1a7c77d10178708b6add36";
      };
    }

    {
      name = "engine.io-parser-2.1.2.tgz";
      path = fetchurl {
        name = "engine.io-parser-2.1.2.tgz";
        url  = "https://registry.yarnpkg.com/engine.io-parser/-/engine.io-parser-2.1.2.tgz";
        sha1 = "4c0f4cff79aaeecbbdcfdea66a823c6085409196";
      };
    }

    {
      name = "engine.io-3.2.0.tgz";
      path = fetchurl {
        name = "engine.io-3.2.0.tgz";
        url  = "https://registry.yarnpkg.com/engine.io/-/engine.io-3.2.0.tgz";
        sha1 = "54332506f42f2edc71690d2f2a42349359f3bf7d";
      };
    }

    {
      name = "entities-1.0.0.tgz";
      path = fetchurl {
        name = "entities-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/entities/-/entities-1.0.0.tgz";
        sha1 = "b2987aa3821347fcde642b24fdfc9e4fb712bf26";
      };
    }

    {
      name = "entities-1.1.1.tgz";
      path = fetchurl {
        name = "entities-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/entities/-/entities-1.1.1.tgz";
        sha1 = "6e5c2d0a5621b5dadaecef80b90edfb5cd7772f0";
      };
    }

    {
      name = "error-ex-1.3.2.tgz";
      path = fetchurl {
        name = "error-ex-1.3.2.tgz";
        url  = "https://registry.yarnpkg.com/error-ex/-/error-ex-1.3.2.tgz";
        sha1 = "b4ac40648107fdcdcfae242f428bea8a14d4f1bf";
      };
    }

    {
      name = "es-abstract-1.12.0.tgz";
      path = fetchurl {
        name = "es-abstract-1.12.0.tgz";
        url  = "https://registry.yarnpkg.com/es-abstract/-/es-abstract-1.12.0.tgz";
        sha1 = "9dbbdd27c6856f0001421ca18782d786bf8a6165";
      };
    }

    {
      name = "es-to-primitive-1.1.1.tgz";
      path = fetchurl {
        name = "es-to-primitive-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/es-to-primitive/-/es-to-primitive-1.1.1.tgz";
        sha1 = "45355248a88979034b6792e19bb81f2b7975dd0d";
      };
    }

    {
      name = "es5-ext-0.10.45.tgz";
      path = fetchurl {
        name = "es5-ext-0.10.45.tgz";
        url  = "https://registry.yarnpkg.com/es5-ext/-/es5-ext-0.10.45.tgz";
        sha1 = "0bfdf7b473da5919d5adf3bd25ceb754fccc3653";
      };
    }

    {
      name = "es6-iterator-2.0.3.tgz";
      path = fetchurl {
        name = "es6-iterator-2.0.3.tgz";
        url  = "https://registry.yarnpkg.com/es6-iterator/-/es6-iterator-2.0.3.tgz";
        sha1 = "a7de889141a05a94b0854403b2d0a0fbfa98f3b7";
      };
    }

    {
      name = "es6-map-0.1.5.tgz";
      path = fetchurl {
        name = "es6-map-0.1.5.tgz";
        url  = "https://registry.yarnpkg.com/es6-map/-/es6-map-0.1.5.tgz";
        sha1 = "9136e0503dcc06a301690f0bb14ff4e364e949f0";
      };
    }

    {
      name = "es6-set-0.1.5.tgz";
      path = fetchurl {
        name = "es6-set-0.1.5.tgz";
        url  = "https://registry.yarnpkg.com/es6-set/-/es6-set-0.1.5.tgz";
        sha1 = "d2b3ec5d4d800ced818db538d28974db0a73ccb1";
      };
    }

    {
      name = "es6-symbol-3.1.1.tgz";
      path = fetchurl {
        name = "es6-symbol-3.1.1.tgz";
        url  = "https://registry.yarnpkg.com/es6-symbol/-/es6-symbol-3.1.1.tgz";
        sha1 = "bf00ef4fdab6ba1b46ecb7b629b4c7ed5715cc77";
      };
    }

    {
      name = "es6-weak-map-2.0.2.tgz";
      path = fetchurl {
        name = "es6-weak-map-2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/es6-weak-map/-/es6-weak-map-2.0.2.tgz";
        sha1 = "5e3ab32251ffd1538a1f8e5ffa1357772f92d96f";
      };
    }

    {
      name = "escape-html-1.0.3.tgz";
      path = fetchurl {
        name = "escape-html-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/escape-html/-/escape-html-1.0.3.tgz";
        sha1 = "0258eae4d3d0c0974de1c169188ef0051d1d1988";
      };
    }

    {
      name = "escape-string-regexp-1.0.5.tgz";
      path = fetchurl {
        name = "escape-string-regexp-1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz";
        sha1 = "1b61c0562190a8dff6ae3bb2cf0200ca130b86d4";
      };
    }

    {
      name = "escope-3.6.0.tgz";
      path = fetchurl {
        name = "escope-3.6.0.tgz";
        url  = "https://registry.yarnpkg.com/escope/-/escope-3.6.0.tgz";
        sha1 = "e01975e812781a163a6dadfdd80398dc64c889c3";
      };
    }

    {
      name = "eslint-config-airbnb-es5-1.2.0.tgz";
      path = fetchurl {
        name = "eslint-config-airbnb-es5-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/eslint-config-airbnb-es5/-/eslint-config-airbnb-es5-1.2.0.tgz";
        sha1 = "9518808fd876e2ce8294d51166b6b1359bd51f28";
      };
    }

    {
      name = "eslint-config-defaults-9.0.0.tgz";
      path = fetchurl {
        name = "eslint-config-defaults-9.0.0.tgz";
        url  = "https://registry.yarnpkg.com/eslint-config-defaults/-/eslint-config-defaults-9.0.0.tgz";
        sha1 = "a090adc13b2935e3f43b3cd048a92701654e5ad5";
      };
    }

    {
      name = "eslint-plugin-react-7.10.0.tgz";
      path = fetchurl {
        name = "eslint-plugin-react-7.10.0.tgz";
        url  = "https://registry.yarnpkg.com/eslint-plugin-react/-/eslint-plugin-react-7.10.0.tgz";
        sha1 = "af5c1fef31c4704db02098f9be18202993828b50";
      };
    }

    {
      name = "eslint-scope-3.7.1.tgz";
      path = fetchurl {
        name = "eslint-scope-3.7.1.tgz";
        url  = "https://registry.yarnpkg.com/eslint-scope/-/eslint-scope-3.7.1.tgz";
        sha1 = "3d63c3edfda02e06e01a452ad88caacc7cdcb6e8";
      };
    }

    {
      name = "eslint-scope-4.0.0.tgz";
      path = fetchurl {
        name = "eslint-scope-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/eslint-scope/-/eslint-scope-4.0.0.tgz";
        sha1 = "50bf3071e9338bcdc43331794a0cb533f0136172";
      };
    }

    {
      name = "eslint-visitor-keys-1.0.0.tgz";
      path = fetchurl {
        name = "eslint-visitor-keys-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/eslint-visitor-keys/-/eslint-visitor-keys-1.0.0.tgz";
        sha1 = "3f3180fb2e291017716acb4c9d6d5b5c34a6a81d";
      };
    }

    {
      name = "eslint-2.13.1.tgz";
      path = fetchurl {
        name = "eslint-2.13.1.tgz";
        url  = "https://registry.yarnpkg.com/eslint/-/eslint-2.13.1.tgz";
        sha1 = "e4cc8fa0f009fb829aaae23855a29360be1f6c11";
      };
    }

    {
      name = "eslint-4.19.1.tgz";
      path = fetchurl {
        name = "eslint-4.19.1.tgz";
        url  = "https://registry.yarnpkg.com/eslint/-/eslint-4.19.1.tgz";
        sha1 = "32d1d653e1d90408854bfb296f076ec7e186a300";
      };
    }

    {
      name = "eslint-5.0.0.tgz";
      path = fetchurl {
        name = "eslint-5.0.0.tgz";
        url  = "https://registry.yarnpkg.com/eslint/-/eslint-5.0.0.tgz";
        sha1 = "3576704f7377aca072da69c00862277c5fe57153";
      };
    }

    {
      name = "espree-3.5.4.tgz";
      path = fetchurl {
        name = "espree-3.5.4.tgz";
        url  = "https://registry.yarnpkg.com/espree/-/espree-3.5.4.tgz";
        sha1 = "b0f447187c8a8bed944b815a660bddf5deb5d1a7";
      };
    }

    {
      name = "espree-4.0.0.tgz";
      path = fetchurl {
        name = "espree-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/espree/-/espree-4.0.0.tgz";
        sha1 = "253998f20a0f82db5d866385799d912a83a36634";
      };
    }

    {
      name = "esprima-2.7.3.tgz";
      path = fetchurl {
        name = "esprima-2.7.3.tgz";
        url  = "https://registry.yarnpkg.com/esprima/-/esprima-2.7.3.tgz";
        sha1 = "96e3b70d5779f6ad49cd032673d1c312767ba581";
      };
    }

    {
      name = "esprima-4.0.0.tgz";
      path = fetchurl {
        name = "esprima-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/esprima/-/esprima-4.0.0.tgz";
        sha1 = "4499eddcd1110e0b218bacf2fa7f7f59f55ca804";
      };
    }

    {
      name = "esquery-1.0.1.tgz";
      path = fetchurl {
        name = "esquery-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/esquery/-/esquery-1.0.1.tgz";
        sha1 = "406c51658b1f5991a5f9b62b1dc25b00e3e5c708";
      };
    }

    {
      name = "esrecurse-4.2.1.tgz";
      path = fetchurl {
        name = "esrecurse-4.2.1.tgz";
        url  = "https://registry.yarnpkg.com/esrecurse/-/esrecurse-4.2.1.tgz";
        sha1 = "007a3b9fdbc2b3bb87e4879ea19c92fdbd3942cf";
      };
    }

    {
      name = "estraverse-4.2.0.tgz";
      path = fetchurl {
        name = "estraverse-4.2.0.tgz";
        url  = "https://registry.yarnpkg.com/estraverse/-/estraverse-4.2.0.tgz";
        sha1 = "0dee3fed31fcd469618ce7342099fc1afa0bdb13";
      };
    }

    {
      name = "esutils-2.0.2.tgz";
      path = fetchurl {
        name = "esutils-2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/esutils/-/esutils-2.0.2.tgz";
        sha1 = "0abf4f1caa5bcb1f7a9d8acc6dea4faaa04bac9b";
      };
    }

    {
      name = "etag-1.8.1.tgz";
      path = fetchurl {
        name = "etag-1.8.1.tgz";
        url  = "https://registry.yarnpkg.com/etag/-/etag-1.8.1.tgz";
        sha1 = "41ae2eeb65efa62268aebfea83ac7d79299b0887";
      };
    }

    {
      name = "event-emitter-0.3.5.tgz";
      path = fetchurl {
        name = "event-emitter-0.3.5.tgz";
        url  = "https://registry.yarnpkg.com/event-emitter/-/event-emitter-0.3.5.tgz";
        sha1 = "df8c69eef1647923c7157b9ce83840610b02cc39";
      };
    }

    {
      name = "event-stream-3.3.4.tgz";
      path = fetchurl {
        name = "event-stream-3.3.4.tgz";
        url  = "http://registry.npmjs.org/event-stream/-/event-stream-3.3.4.tgz";
        sha1 = "4ab4c9a0f5a54db9338b4c34d86bfce8f4b35571";
      };
    }

    {
      name = "eventemitter3-1.2.0.tgz";
      path = fetchurl {
        name = "eventemitter3-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/eventemitter3/-/eventemitter3-1.2.0.tgz";
        sha1 = "1c86991d816ad1e504750e73874224ecf3bec508";
      };
    }

    {
      name = "exit-hook-1.1.1.tgz";
      path = fetchurl {
        name = "exit-hook-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/exit-hook/-/exit-hook-1.1.1.tgz";
        sha1 = "f05ca233b48c05d54fff07765df8507e95c02ff8";
      };
    }

    {
      name = "expand-brackets-0.1.5.tgz";
      path = fetchurl {
        name = "expand-brackets-0.1.5.tgz";
        url  = "https://registry.yarnpkg.com/expand-brackets/-/expand-brackets-0.1.5.tgz";
        sha1 = "df07284e342a807cd733ac5af72411e581d1177b";
      };
    }

    {
      name = "expand-brackets-2.1.4.tgz";
      path = fetchurl {
        name = "expand-brackets-2.1.4.tgz";
        url  = "https://registry.yarnpkg.com/expand-brackets/-/expand-brackets-2.1.4.tgz";
        sha1 = "b77735e315ce30f6b6eff0f83b04151a22449622";
      };
    }

    {
      name = "expand-range-1.8.2.tgz";
      path = fetchurl {
        name = "expand-range-1.8.2.tgz";
        url  = "https://registry.yarnpkg.com/expand-range/-/expand-range-1.8.2.tgz";
        sha1 = "a299effd335fe2721ebae8e257ec79644fc85337";
      };
    }

    {
      name = "expand-tilde-1.2.2.tgz";
      path = fetchurl {
        name = "expand-tilde-1.2.2.tgz";
        url  = "https://registry.yarnpkg.com/expand-tilde/-/expand-tilde-1.2.2.tgz";
        sha1 = "0b81eba897e5a3d31d1c3d102f8f01441e559449";
      };
    }

    {
      name = "expand-tilde-2.0.2.tgz";
      path = fetchurl {
        name = "expand-tilde-2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/expand-tilde/-/expand-tilde-2.0.2.tgz";
        sha1 = "97e801aa052df02454de46b02bf621642cdc8502";
      };
    }

    {
      name = "extend-shallow-1.1.4.tgz";
      path = fetchurl {
        name = "extend-shallow-1.1.4.tgz";
        url  = "https://registry.yarnpkg.com/extend-shallow/-/extend-shallow-1.1.4.tgz";
        sha1 = "19d6bf94dfc09d76ba711f39b872d21ff4dd9071";
      };
    }

    {
      name = "extend-shallow-2.0.1.tgz";
      path = fetchurl {
        name = "extend-shallow-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/extend-shallow/-/extend-shallow-2.0.1.tgz";
        sha1 = "51af7d614ad9a9f610ea1bafbb989d6b1c56890f";
      };
    }

    {
      name = "extend-shallow-3.0.2.tgz";
      path = fetchurl {
        name = "extend-shallow-3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/extend-shallow/-/extend-shallow-3.0.2.tgz";
        sha1 = "26a71aaf073b39fb2127172746131c2704028db8";
      };
    }

    {
      name = "extend-3.0.1.tgz";
      path = fetchurl {
        name = "extend-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/extend/-/extend-3.0.1.tgz";
        sha1 = "a755ea7bc1adfcc5a31ce7e762dbaadc5e636444";
      };
    }

    {
      name = "external-editor-2.2.0.tgz";
      path = fetchurl {
        name = "external-editor-2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/external-editor/-/external-editor-2.2.0.tgz";
        sha1 = "045511cfd8d133f3846673d1047c154e214ad3d5";
      };
    }

    {
      name = "extglob-0.3.2.tgz";
      path = fetchurl {
        name = "extglob-0.3.2.tgz";
        url  = "https://registry.yarnpkg.com/extglob/-/extglob-0.3.2.tgz";
        sha1 = "2e18ff3d2f49ab2765cec9023f011daa8d8349a1";
      };
    }

    {
      name = "extglob-2.0.4.tgz";
      path = fetchurl {
        name = "extglob-2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/extglob/-/extglob-2.0.4.tgz";
        sha1 = "ad00fe4dc612a9232e8718711dc5cb5ab0285543";
      };
    }

    {
      name = "extsprintf-1.3.0.tgz";
      path = fetchurl {
        name = "extsprintf-1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/extsprintf/-/extsprintf-1.3.0.tgz";
        sha1 = "96918440e3041a7a414f8c52e3c574eb3c3e1e05";
      };
    }

    {
      name = "extsprintf-1.4.0.tgz";
      path = fetchurl {
        name = "extsprintf-1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/extsprintf/-/extsprintf-1.4.0.tgz";
        sha1 = "e2689f8f356fad62cca65a3a91c5df5f9551692f";
      };
    }

    {
      name = "fancy-log-1.3.2.tgz";
      path = fetchurl {
        name = "fancy-log-1.3.2.tgz";
        url  = "https://registry.yarnpkg.com/fancy-log/-/fancy-log-1.3.2.tgz";
        sha1 = "f41125e3d84f2e7d89a43d06d958c8f78be16be1";
      };
    }

    {
      name = "fast-deep-equal-1.1.0.tgz";
      path = fetchurl {
        name = "fast-deep-equal-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/fast-deep-equal/-/fast-deep-equal-1.1.0.tgz";
        sha1 = "c053477817c86b51daa853c81e059b733d023614";
      };
    }

    {
      name = "fast-deep-equal-2.0.1.tgz";
      path = fetchurl {
        name = "fast-deep-equal-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/fast-deep-equal/-/fast-deep-equal-2.0.1.tgz";
        sha1 = "7b05218ddf9667bf7f370bf7fdb2cb15fdd0aa49";
      };
    }

    {
      name = "fast-json-stable-stringify-2.0.0.tgz";
      path = fetchurl {
        name = "fast-json-stable-stringify-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/fast-json-stable-stringify/-/fast-json-stable-stringify-2.0.0.tgz";
        sha1 = "d5142c0caee6b1189f87d3a76111064f86c8bbf2";
      };
    }

    {
      name = "fast-levenshtein-2.0.6.tgz";
      path = fetchurl {
        name = "fast-levenshtein-2.0.6.tgz";
        url  = "https://registry.yarnpkg.com/fast-levenshtein/-/fast-levenshtein-2.0.6.tgz";
        sha1 = "3d8a5c66883a16a30ca8643e851f19baa7797917";
      };
    }

    {
      name = "figures-1.7.0.tgz";
      path = fetchurl {
        name = "figures-1.7.0.tgz";
        url  = "https://registry.yarnpkg.com/figures/-/figures-1.7.0.tgz";
        sha1 = "cbe1e3affcf1cd44b80cadfed28dc793a9701d2e";
      };
    }

    {
      name = "figures-2.0.0.tgz";
      path = fetchurl {
        name = "figures-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/figures/-/figures-2.0.0.tgz";
        sha1 = "3ab1a2d2a62c8bfb431a0c94cb797a2fce27c962";
      };
    }

    {
      name = "file-entry-cache-1.3.1.tgz";
      path = fetchurl {
        name = "file-entry-cache-1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/file-entry-cache/-/file-entry-cache-1.3.1.tgz";
        sha1 = "44c61ea607ae4be9c1402f41f44270cbfe334ff8";
      };
    }

    {
      name = "file-entry-cache-2.0.0.tgz";
      path = fetchurl {
        name = "file-entry-cache-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/file-entry-cache/-/file-entry-cache-2.0.0.tgz";
        sha1 = "c392990c3e684783d838b8c84a45d8a048458361";
      };
    }

    {
      name = "filename-regex-2.0.1.tgz";
      path = fetchurl {
        name = "filename-regex-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/filename-regex/-/filename-regex-2.0.1.tgz";
        sha1 = "c1c4b9bee3e09725ddb106b75c1e301fe2f18b26";
      };
    }

    {
      name = "fill-range-2.2.4.tgz";
      path = fetchurl {
        name = "fill-range-2.2.4.tgz";
        url  = "https://registry.yarnpkg.com/fill-range/-/fill-range-2.2.4.tgz";
        sha1 = "eb1e773abb056dcd8df2bfdf6af59b8b3a936565";
      };
    }

    {
      name = "fill-range-4.0.0.tgz";
      path = fetchurl {
        name = "fill-range-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/fill-range/-/fill-range-4.0.0.tgz";
        sha1 = "d544811d428f98eb06a63dc402d2403c328c38f7";
      };
    }

    {
      name = "finalhandler-1.1.0.tgz";
      path = fetchurl {
        name = "finalhandler-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/finalhandler/-/finalhandler-1.1.0.tgz";
        sha1 = "ce0b6855b45853e791b2fcc680046d88253dd7f5";
      };
    }

    {
      name = "find-up-1.1.2.tgz";
      path = fetchurl {
        name = "find-up-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/find-up/-/find-up-1.1.2.tgz";
        sha1 = "6b2e9822b1a2ce0a60ab64d610eccad53cb24d0f";
      };
    }

    {
      name = "findup-sync-0.4.3.tgz";
      path = fetchurl {
        name = "findup-sync-0.4.3.tgz";
        url  = "https://registry.yarnpkg.com/findup-sync/-/findup-sync-0.4.3.tgz";
        sha1 = "40043929e7bc60adf0b7f4827c4c6e75a0deca12";
      };
    }

    {
      name = "findup-sync-2.0.0.tgz";
      path = fetchurl {
        name = "findup-sync-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/findup-sync/-/findup-sync-2.0.0.tgz";
        sha1 = "9326b1488c22d1a6088650a86901b2d9a90a2cbc";
      };
    }

    {
      name = "fined-1.1.0.tgz";
      path = fetchurl {
        name = "fined-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/fined/-/fined-1.1.0.tgz";
        sha1 = "b37dc844b76a2f5e7081e884f7c0ae344f153476";
      };
    }

    {
      name = "flagged-respawn-1.0.0.tgz";
      path = fetchurl {
        name = "flagged-respawn-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/flagged-respawn/-/flagged-respawn-1.0.0.tgz";
        sha1 = "4e79ae9b2eb38bf86b3bb56bf3e0a56aa5fcabd7";
      };
    }

    {
      name = "flat-cache-1.3.0.tgz";
      path = fetchurl {
        name = "flat-cache-1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/flat-cache/-/flat-cache-1.3.0.tgz";
        sha1 = "d3030b32b38154f4e3b7e9c709f490f7ef97c481";
      };
    }

    {
      name = "flush-write-stream-1.0.3.tgz";
      path = fetchurl {
        name = "flush-write-stream-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/flush-write-stream/-/flush-write-stream-1.0.3.tgz";
        sha1 = "c5d586ef38af6097650b49bc41b55fabb19f35bd";
      };
    }

    {
      name = "follow-redirects-1.5.0.tgz";
      path = fetchurl {
        name = "follow-redirects-1.5.0.tgz";
        url  = "https://registry.yarnpkg.com/follow-redirects/-/follow-redirects-1.5.0.tgz";
        sha1 = "234f49cf770b7f35b40e790f636ceba0c3a0ab77";
      };
    }

    {
      name = "for-each-0.3.3.tgz";
      path = fetchurl {
        name = "for-each-0.3.3.tgz";
        url  = "https://registry.yarnpkg.com/for-each/-/for-each-0.3.3.tgz";
        sha1 = "69b447e88a0a5d32c3e7084f3f1710034b21376e";
      };
    }

    {
      name = "for-in-1.0.2.tgz";
      path = fetchurl {
        name = "for-in-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/for-in/-/for-in-1.0.2.tgz";
        sha1 = "81068d295a8142ec0ac726c6e2200c30fb6d5e80";
      };
    }

    {
      name = "for-own-0.1.5.tgz";
      path = fetchurl {
        name = "for-own-0.1.5.tgz";
        url  = "https://registry.yarnpkg.com/for-own/-/for-own-0.1.5.tgz";
        sha1 = "5265c681a4f294dabbf17c9509b6763aa84510ce";
      };
    }

    {
      name = "for-own-1.0.0.tgz";
      path = fetchurl {
        name = "for-own-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/for-own/-/for-own-1.0.0.tgz";
        sha1 = "c63332f415cedc4b04dbfe70cf836494c53cb44b";
      };
    }

    {
      name = "foreach-2.0.5.tgz";
      path = fetchurl {
        name = "foreach-2.0.5.tgz";
        url  = "https://registry.yarnpkg.com/foreach/-/foreach-2.0.5.tgz";
        sha1 = "0bee005018aeb260d0a3af3ae658dd0136ec1b99";
      };
    }

    {
      name = "forever-agent-0.6.1.tgz";
      path = fetchurl {
        name = "forever-agent-0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/forever-agent/-/forever-agent-0.6.1.tgz";
        sha1 = "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91";
      };
    }

    {
      name = "fork-stream-0.0.4.tgz";
      path = fetchurl {
        name = "fork-stream-0.0.4.tgz";
        url  = "https://registry.yarnpkg.com/fork-stream/-/fork-stream-0.0.4.tgz";
        sha1 = "db849fce77f6708a5f8f386ae533a0907b54ae70";
      };
    }

    {
      name = "form-data-2.1.4.tgz";
      path = fetchurl {
        name = "form-data-2.1.4.tgz";
        url  = "https://registry.yarnpkg.com/form-data/-/form-data-2.1.4.tgz";
        sha1 = "33c183acf193276ecaa98143a69e94bfee1750d1";
      };
    }

    {
      name = "fragment-cache-0.2.1.tgz";
      path = fetchurl {
        name = "fragment-cache-0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/fragment-cache/-/fragment-cache-0.2.1.tgz";
        sha1 = "4290fad27f13e89be7f33799c6bc5a0abfff0d19";
      };
    }

    {
      name = "fresh-0.5.2.tgz";
      path = fetchurl {
        name = "fresh-0.5.2.tgz";
        url  = "https://registry.yarnpkg.com/fresh/-/fresh-0.5.2.tgz";
        sha1 = "3d8cadd90d976569fa835ab1f8e4b23a105605a7";
      };
    }

    {
      name = "from-0.1.7.tgz";
      path = fetchurl {
        name = "from-0.1.7.tgz";
        url  = "https://registry.yarnpkg.com/from/-/from-0.1.7.tgz";
        sha1 = "83c60afc58b9c56997007ed1a768b3ab303a44fe";
      };
    }

    {
      name = "front-matter-2.1.2.tgz";
      path = fetchurl {
        name = "front-matter-2.1.2.tgz";
        url  = "https://registry.yarnpkg.com/front-matter/-/front-matter-2.1.2.tgz";
        sha1 = "f75983b9f2f413be658c93dfd7bd8ce4078f5cdb";
      };
    }

    {
      name = "fs-exists-sync-0.1.0.tgz";
      path = fetchurl {
        name = "fs-exists-sync-0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/fs-exists-sync/-/fs-exists-sync-0.1.0.tgz";
        sha1 = "982d6893af918e72d08dec9e8673ff2b5a8d6add";
      };
    }

    {
      name = "fs-extra-3.0.1.tgz";
      path = fetchurl {
        name = "fs-extra-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/fs-extra/-/fs-extra-3.0.1.tgz";
        sha1 = "3794f378c58b342ea7dbbb23095109c4b3b62291";
      };
    }

    {
      name = "fs-minipass-1.2.5.tgz";
      path = fetchurl {
        name = "fs-minipass-1.2.5.tgz";
        url  = "https://registry.yarnpkg.com/fs-minipass/-/fs-minipass-1.2.5.tgz";
        sha1 = "06c277218454ec288df77ada54a03b8702aacb9d";
      };
    }

    {
      name = "fs-mkdirp-stream-1.0.0.tgz";
      path = fetchurl {
        name = "fs-mkdirp-stream-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/fs-mkdirp-stream/-/fs-mkdirp-stream-1.0.0.tgz";
        sha1 = "0b7815fc3201c6a69e14db98ce098c16935259eb";
      };
    }

    {
      name = "fs.realpath-1.0.0.tgz";
      path = fetchurl {
        name = "fs.realpath-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/fs.realpath/-/fs.realpath-1.0.0.tgz";
        sha1 = "1504ad2523158caa40db4a2787cb01411994ea4f";
      };
    }

    {
      name = "fsevents-1.2.4.tgz";
      path = fetchurl {
        name = "fsevents-1.2.4.tgz";
        url  = "https://registry.yarnpkg.com/fsevents/-/fsevents-1.2.4.tgz";
        sha1 = "f41dcb1af2582af3692da36fc55cbd8e1041c426";
      };
    }

    {
      name = "fstream-1.0.11.tgz";
      path = fetchurl {
        name = "fstream-1.0.11.tgz";
        url  = "https://registry.yarnpkg.com/fstream/-/fstream-1.0.11.tgz";
        sha1 = "5c1fb1f117477114f0632a0eb4b71b3cb0fd3171";
      };
    }

    {
      name = "fstream-0.1.31.tgz";
      path = fetchurl {
        name = "fstream-0.1.31.tgz";
        url  = "https://registry.yarnpkg.com/fstream/-/fstream-0.1.31.tgz";
        sha1 = "7337f058fbbbbefa8c9f561a28cab0849202c988";
      };
    }

    {
      name = "function-bind-1.1.1.tgz";
      path = fetchurl {
        name = "function-bind-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/function-bind/-/function-bind-1.1.1.tgz";
        sha1 = "a56899d3ea3c9bab874bb9773b7c5ede92f4895d";
      };
    }

    {
      name = "functional-red-black-tree-1.0.1.tgz";
      path = fetchurl {
        name = "functional-red-black-tree-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/functional-red-black-tree/-/functional-red-black-tree-1.0.1.tgz";
        sha1 = "1b0ab3bd553b2a0d6399d29c0e3ea0b252078327";
      };
    }

    {
      name = "gauge-2.7.4.tgz";
      path = fetchurl {
        name = "gauge-2.7.4.tgz";
        url  = "https://registry.yarnpkg.com/gauge/-/gauge-2.7.4.tgz";
        sha1 = "2c03405c7538c39d7eb37b317022e325fb018bf7";
      };
    }

    {
      name = "gaze-1.1.3.tgz";
      path = fetchurl {
        name = "gaze-1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/gaze/-/gaze-1.1.3.tgz";
        sha1 = "c441733e13b927ac8c0ff0b4c3b033f28812924a";
      };
    }

    {
      name = "generate-function-2.0.0.tgz";
      path = fetchurl {
        name = "generate-function-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/generate-function/-/generate-function-2.0.0.tgz";
        sha1 = "6858fe7c0969b7d4e9093337647ac79f60dfbe74";
      };
    }

    {
      name = "generate-object-property-1.2.0.tgz";
      path = fetchurl {
        name = "generate-object-property-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/generate-object-property/-/generate-object-property-1.2.0.tgz";
        sha1 = "9c0e1c40308ce804f4783618b937fa88f99d50d0";
      };
    }

    {
      name = "get-caller-file-1.0.2.tgz";
      path = fetchurl {
        name = "get-caller-file-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/get-caller-file/-/get-caller-file-1.0.2.tgz";
        sha1 = "f702e63127e7e231c160a80c1554acb70d5047e5";
      };
    }

    {
      name = "get-stdin-4.0.1.tgz";
      path = fetchurl {
        name = "get-stdin-4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/get-stdin/-/get-stdin-4.0.1.tgz";
        sha1 = "b968c6b0a04384324902e8bf1a5df32579a450fe";
      };
    }

    {
      name = "get-value-2.0.6.tgz";
      path = fetchurl {
        name = "get-value-2.0.6.tgz";
        url  = "https://registry.yarnpkg.com/get-value/-/get-value-2.0.6.tgz";
        sha1 = "dc15ca1c672387ca76bd37ac0a395ba2042a2c28";
      };
    }

    {
      name = "getpass-0.1.7.tgz";
      path = fetchurl {
        name = "getpass-0.1.7.tgz";
        url  = "https://registry.yarnpkg.com/getpass/-/getpass-0.1.7.tgz";
        sha1 = "5eff8e3e684d569ae4cb2b1282604e8ba62149fa";
      };
    }

    {
      name = "glob-base-0.3.0.tgz";
      path = fetchurl {
        name = "glob-base-0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/glob-base/-/glob-base-0.3.0.tgz";
        sha1 = "dbb164f6221b1c0b1ccf82aea328b497df0ea3c4";
      };
    }

    {
      name = "glob-parent-2.0.0.tgz";
      path = fetchurl {
        name = "glob-parent-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/glob-parent/-/glob-parent-2.0.0.tgz";
        sha1 = "81383d72db054fcccf5336daa902f182f6edbb28";
      };
    }

    {
      name = "glob-parent-3.1.0.tgz";
      path = fetchurl {
        name = "glob-parent-3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/glob-parent/-/glob-parent-3.1.0.tgz";
        sha1 = "9e6af6299d8d3bd2bd40430832bd113df906c5ae";
      };
    }

    {
      name = "glob-stream-6.1.0.tgz";
      path = fetchurl {
        name = "glob-stream-6.1.0.tgz";
        url  = "https://registry.yarnpkg.com/glob-stream/-/glob-stream-6.1.0.tgz";
        sha1 = "7045c99413b3eb94888d83ab46d0b404cc7bdde4";
      };
    }

    {
      name = "glob-watcher-4.0.0.tgz";
      path = fetchurl {
        name = "glob-watcher-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/glob-watcher/-/glob-watcher-4.0.0.tgz";
        sha1 = "9e63a8ff6e61e932de6cc2caece5071a6d737329";
      };
    }

    {
      name = "glob-6.0.4.tgz";
      path = fetchurl {
        name = "glob-6.0.4.tgz";
        url  = "https://registry.yarnpkg.com/glob/-/glob-6.0.4.tgz";
        sha1 = "0f08860f6a155127b2fadd4f9ce24b1aab6e4d22";
      };
    }

    {
      name = "glob-7.1.2.tgz";
      path = fetchurl {
        name = "glob-7.1.2.tgz";
        url  = "https://registry.yarnpkg.com/glob/-/glob-7.1.2.tgz";
        sha1 = "c19c9df9a028702d678612384a6552404c636d15";
      };
    }

    {
      name = "global-modules-0.2.3.tgz";
      path = fetchurl {
        name = "global-modules-0.2.3.tgz";
        url  = "https://registry.yarnpkg.com/global-modules/-/global-modules-0.2.3.tgz";
        sha1 = "ea5a3bed42c6d6ce995a4f8a1269b5dae223828d";
      };
    }

    {
      name = "global-modules-1.0.0.tgz";
      path = fetchurl {
        name = "global-modules-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/global-modules/-/global-modules-1.0.0.tgz";
        sha1 = "6d770f0eb523ac78164d72b5e71a8877265cc3ea";
      };
    }

    {
      name = "global-prefix-0.1.5.tgz";
      path = fetchurl {
        name = "global-prefix-0.1.5.tgz";
        url  = "https://registry.yarnpkg.com/global-prefix/-/global-prefix-0.1.5.tgz";
        sha1 = "8d3bc6b8da3ca8112a160d8d496ff0462bfef78f";
      };
    }

    {
      name = "global-prefix-1.0.2.tgz";
      path = fetchurl {
        name = "global-prefix-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/global-prefix/-/global-prefix-1.0.2.tgz";
        sha1 = "dbf743c6c14992593c655568cb66ed32c0122ebe";
      };
    }

    {
      name = "globals-11.7.0.tgz";
      path = fetchurl {
        name = "globals-11.7.0.tgz";
        url  = "https://registry.yarnpkg.com/globals/-/globals-11.7.0.tgz";
        sha1 = "a583faa43055b1aca771914bf68258e2fc125673";
      };
    }

    {
      name = "globals-9.18.0.tgz";
      path = fetchurl {
        name = "globals-9.18.0.tgz";
        url  = "https://registry.yarnpkg.com/globals/-/globals-9.18.0.tgz";
        sha1 = "aa3896b3e69b487f17e31ed2143d69a8e30c2d8a";
      };
    }

    {
      name = "globby-5.0.0.tgz";
      path = fetchurl {
        name = "globby-5.0.0.tgz";
        url  = "https://registry.yarnpkg.com/globby/-/globby-5.0.0.tgz";
        sha1 = "ebd84667ca0dbb330b99bcfc68eac2bc54370e0d";
      };
    }

    {
      name = "globule-1.2.1.tgz";
      path = fetchurl {
        name = "globule-1.2.1.tgz";
        url  = "https://registry.yarnpkg.com/globule/-/globule-1.2.1.tgz";
        sha1 = "5dffb1b191f22d20797a9369b49eab4e9839696d";
      };
    }

    {
      name = "glogg-1.0.1.tgz";
      path = fetchurl {
        name = "glogg-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/glogg/-/glogg-1.0.1.tgz";
        sha1 = "dcf758e44789cc3f3d32c1f3562a3676e6a34810";
      };
    }

    {
      name = "gonzales-pe-sl-4.2.3.tgz";
      path = fetchurl {
        name = "gonzales-pe-sl-4.2.3.tgz";
        url  = "https://registry.yarnpkg.com/gonzales-pe-sl/-/gonzales-pe-sl-4.2.3.tgz";
        sha1 = "6a868bc380645f141feeb042c6f97fcc71b59fe6";
      };
    }

    {
      name = "graceful-fs-4.1.11.tgz";
      path = fetchurl {
        name = "graceful-fs-4.1.11.tgz";
        url  = "https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-4.1.11.tgz";
        sha1 = "0e8bdfe4d1ddb8854d64e04ea7c00e2a026e5658";
      };
    }

    {
      name = "graceful-fs-3.0.11.tgz";
      path = fetchurl {
        name = "graceful-fs-3.0.11.tgz";
        url  = "https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-3.0.11.tgz";
        sha1 = "7613c778a1afea62f25c630a086d7f3acbbdd818";
      };
    }

    {
      name = "group-array-0.3.3.tgz";
      path = fetchurl {
        name = "group-array-0.3.3.tgz";
        url  = "https://registry.yarnpkg.com/group-array/-/group-array-0.3.3.tgz";
        sha1 = "bbd9d2f718df4be33f0fb90432aaf1b4360e498f";
      };
    }

    {
      name = "gulp-autoprefixer-5.0.0.tgz";
      path = fetchurl {
        name = "gulp-autoprefixer-5.0.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-autoprefixer/-/gulp-autoprefixer-5.0.0.tgz";
        sha1 = "8237c278a69775270a1cafe7d6f101cfcd585544";
      };
    }

    {
      name = "gulp-cache-bust-1.3.0.tgz";
      path = fetchurl {
        name = "gulp-cache-bust-1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-cache-bust/-/gulp-cache-bust-1.3.0.tgz";
        sha1 = "3104d1318cca7d03e9a2e7e4fb8892c711d83845";
      };
    }

    {
      name = "gulp-cli-2.0.1.tgz";
      path = fetchurl {
        name = "gulp-cli-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/gulp-cli/-/gulp-cli-2.0.1.tgz";
        sha1 = "7847e220cb3662f2be8a6d572bf14e17be5a994b";
      };
    }

    {
      name = "gulp-environments-0.1.2.tgz";
      path = fetchurl {
        name = "gulp-environments-0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/gulp-environments/-/gulp-environments-0.1.2.tgz";
        sha1 = "8646107392193582aff919d53de3302777ffb6eb";
      };
    }

    {
      name = "gulp-eslint-4.0.2.tgz";
      path = fetchurl {
        name = "gulp-eslint-4.0.2.tgz";
        url  = "https://registry.yarnpkg.com/gulp-eslint/-/gulp-eslint-4.0.2.tgz";
        sha1 = "18a2a6768e4404cbf3e203239cb57474168fa606";
      };
    }

    {
      name = "gulp-htmlmin-4.0.0.tgz";
      path = fetchurl {
        name = "gulp-htmlmin-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-htmlmin/-/gulp-htmlmin-4.0.0.tgz";
        sha1 = "266feaed83588838aedda3666f67d057ec120313";
      };
    }

    {
      name = "gulp-if-2.0.2.tgz";
      path = fetchurl {
        name = "gulp-if-2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/gulp-if/-/gulp-if-2.0.2.tgz";
        sha1 = "a497b7e7573005041caa2bc8b7dda3c80444d629";
      };
    }

    {
      name = "gulp-inject-4.3.2.tgz";
      path = fetchurl {
        name = "gulp-inject-4.3.2.tgz";
        url  = "https://registry.yarnpkg.com/gulp-inject/-/gulp-inject-4.3.2.tgz";
        sha1 = "56525857ec312ce6e75dbb62876bea7e29f10118";
      };
    }

    {
      name = "gulp-jsonminify-1.1.0.tgz";
      path = fetchurl {
        name = "gulp-jsonminify-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-jsonminify/-/gulp-jsonminify-1.1.0.tgz";
        sha1 = "3b3c787f252ab42bbd7f355c7629665357e88d1a";
      };
    }

    {
      name = "gulp-kyh-inline-source-3.0.2.tgz";
      path = fetchurl {
        name = "gulp-kyh-inline-source-3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/gulp-kyh-inline-source/-/gulp-kyh-inline-source-3.0.2.tgz";
        sha1 = "fbd0f460129585dc93df95a431a277cc0cc824af";
      };
    }

    {
      name = "gulp-load-plugins-1.5.0.tgz";
      path = fetchurl {
        name = "gulp-load-plugins-1.5.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-load-plugins/-/gulp-load-plugins-1.5.0.tgz";
        sha1 = "4c419f7e5764d9a0e33061bab9618f81b73d4171";
      };
    }

    {
      name = "gulp-match-1.0.3.tgz";
      path = fetchurl {
        name = "gulp-match-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/gulp-match/-/gulp-match-1.0.3.tgz";
        sha1 = "91c7c0d7f29becd6606d57d80a7f8776a87aba8e";
      };
    }

    {
      name = "gulp-real-favicon-0.3.0.tgz";
      path = fetchurl {
        name = "gulp-real-favicon-0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-real-favicon/-/gulp-real-favicon-0.3.0.tgz";
        sha1 = "c5980f6e5d9b2b39bb0d48dd304473813167747d";
      };
    }

    {
      name = "gulp-requirejs-optimize-1.3.0.tgz";
      path = fetchurl {
        name = "gulp-requirejs-optimize-1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-requirejs-optimize/-/gulp-requirejs-optimize-1.3.0.tgz";
        sha1 = "ee6de4f1d6096769838c933d0337fd5c48daabc0";
      };
    }

    {
      name = "gulp-sass-lint-1.4.0.tgz";
      path = fetchurl {
        name = "gulp-sass-lint-1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-sass-lint/-/gulp-sass-lint-1.4.0.tgz";
        sha1 = "6f7096c5abcbc0ce99ddf060c9e1a99067a47ebe";
      };
    }

    {
      name = "gulp-sass-4.0.1.tgz";
      path = fetchurl {
        name = "gulp-sass-4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/gulp-sass/-/gulp-sass-4.0.1.tgz";
        sha1 = "7f43d117eb2d303524968a1b48494af1bc64d1d9";
      };
    }

    {
      name = "gulp-sourcemaps-2.6.4.tgz";
      path = fetchurl {
        name = "gulp-sourcemaps-2.6.4.tgz";
        url  = "https://registry.yarnpkg.com/gulp-sourcemaps/-/gulp-sourcemaps-2.6.4.tgz";
        sha1 = "cbb2008450b1bcce6cd23bf98337be751bf6e30a";
      };
    }

    {
      name = "gulp-uglify-3.0.0.tgz";
      path = fetchurl {
        name = "gulp-uglify-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-uglify/-/gulp-uglify-3.0.0.tgz";
        sha1 = "0df0331d72a0d302e3e37e109485dddf33c6d1ca";
      };
    }

    {
      name = "gulp-util-3.0.8.tgz";
      path = fetchurl {
        name = "gulp-util-3.0.8.tgz";
        url  = "https://registry.yarnpkg.com/gulp-util/-/gulp-util-3.0.8.tgz";
        sha1 = "0054e1e744502e27c04c187c3ecc505dd54bbb4f";
      };
    }

    {
      name = "71c094a51c7972d26f557899ddecab0210ef3776";
      path = fetchurl {
        name = "71c094a51c7972d26f557899ddecab0210ef3776";
        url  = "https://codeload.github.com/gulpjs/gulp/tar.gz/71c094a51c7972d26f557899ddecab0210ef3776";
        sha1 = "2db82d9d849e47fb6460ca912f32b1bc2f5a7b6d";
      };
    }

    {
      name = "gulplog-1.0.0.tgz";
      path = fetchurl {
        name = "gulplog-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/gulplog/-/gulplog-1.0.0.tgz";
        sha1 = "e28c4d45d05ecbbed818363ce8f9c5926229ffe5";
      };
    }

    {
      name = "har-schema-1.0.5.tgz";
      path = fetchurl {
        name = "har-schema-1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/har-schema/-/har-schema-1.0.5.tgz";
        sha1 = "d263135f43307c02c602afc8fe95970c0151369e";
      };
    }

    {
      name = "har-validator-2.0.6.tgz";
      path = fetchurl {
        name = "har-validator-2.0.6.tgz";
        url  = "https://registry.yarnpkg.com/har-validator/-/har-validator-2.0.6.tgz";
        sha1 = "cdcbc08188265ad119b6a5a7c8ab70eecfb5d27d";
      };
    }

    {
      name = "har-validator-4.2.1.tgz";
      path = fetchurl {
        name = "har-validator-4.2.1.tgz";
        url  = "https://registry.yarnpkg.com/har-validator/-/har-validator-4.2.1.tgz";
        sha1 = "33481d0f1bbff600dd203d75812a6a5fba002e2a";
      };
    }

    {
      name = "has-ansi-2.0.0.tgz";
      path = fetchurl {
        name = "has-ansi-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/has-ansi/-/has-ansi-2.0.0.tgz";
        sha1 = "34f5049ce1ecdf2b0649af3ef24e45ed35416d91";
      };
    }

    {
      name = "has-binary2-1.0.3.tgz";
      path = fetchurl {
        name = "has-binary2-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/has-binary2/-/has-binary2-1.0.3.tgz";
        sha1 = "7776ac627f3ea77250cfc332dab7ddf5e4f5d11d";
      };
    }

    {
      name = "has-cors-1.1.0.tgz";
      path = fetchurl {
        name = "has-cors-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/has-cors/-/has-cors-1.1.0.tgz";
        sha1 = "5e474793f7ea9843d1bb99c23eef49ff126fff39";
      };
    }

    {
      name = "has-flag-3.0.0.tgz";
      path = fetchurl {
        name = "has-flag-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/has-flag/-/has-flag-3.0.0.tgz";
        sha1 = "b5d454dc2199ae225699f3467e5a07f3b955bafd";
      };
    }

    {
      name = "has-gulplog-0.1.0.tgz";
      path = fetchurl {
        name = "has-gulplog-0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/has-gulplog/-/has-gulplog-0.1.0.tgz";
        sha1 = "6414c82913697da51590397dafb12f22967811ce";
      };
    }

    {
      name = "has-symbols-1.0.0.tgz";
      path = fetchurl {
        name = "has-symbols-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/has-symbols/-/has-symbols-1.0.0.tgz";
        sha1 = "ba1a8f1af2a0fc39650f5c850367704122063b44";
      };
    }

    {
      name = "has-unicode-2.0.1.tgz";
      path = fetchurl {
        name = "has-unicode-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/has-unicode/-/has-unicode-2.0.1.tgz";
        sha1 = "e0e6fe6a28cf51138855e086d1691e771de2a8b9";
      };
    }

    {
      name = "has-value-0.3.1.tgz";
      path = fetchurl {
        name = "has-value-0.3.1.tgz";
        url  = "https://registry.yarnpkg.com/has-value/-/has-value-0.3.1.tgz";
        sha1 = "7b1f58bada62ca827ec0a2078025654845995e1f";
      };
    }

    {
      name = "has-value-1.0.0.tgz";
      path = fetchurl {
        name = "has-value-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/has-value/-/has-value-1.0.0.tgz";
        sha1 = "18b281da585b1c5c51def24c930ed29a0be6b177";
      };
    }

    {
      name = "has-values-0.1.4.tgz";
      path = fetchurl {
        name = "has-values-0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/has-values/-/has-values-0.1.4.tgz";
        sha1 = "6d61de95d91dfca9b9a02089ad384bff8f62b771";
      };
    }

    {
      name = "has-values-1.0.0.tgz";
      path = fetchurl {
        name = "has-values-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/has-values/-/has-values-1.0.0.tgz";
        sha1 = "95b0b63fec2146619a6fe57fe75628d5a39efe4f";
      };
    }

    {
      name = "has-1.0.3.tgz";
      path = fetchurl {
        name = "has-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/has/-/has-1.0.3.tgz";
        sha1 = "722d7cbfc1f6aa8241f16dd814e011e1f41e8796";
      };
    }

    {
      name = "hawk-3.1.3.tgz";
      path = fetchurl {
        name = "hawk-3.1.3.tgz";
        url  = "https://registry.yarnpkg.com/hawk/-/hawk-3.1.3.tgz";
        sha1 = "078444bd7c1640b0fe540d2c9b73d59678e8e1c4";
      };
    }

    {
      name = "he-1.1.1.tgz";
      path = fetchurl {
        name = "he-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/he/-/he-1.1.1.tgz";
        sha1 = "93410fd21b009735151f8868c2f271f3427e23fd";
      };
    }

    {
      name = "hoek-2.16.3.tgz";
      path = fetchurl {
        name = "hoek-2.16.3.tgz";
        url  = "https://registry.yarnpkg.com/hoek/-/hoek-2.16.3.tgz";
        sha1 = "20bb7403d3cea398e91dc4710a8ff1b8274a25ed";
      };
    }

    {
      name = "homedir-polyfill-1.0.1.tgz";
      path = fetchurl {
        name = "homedir-polyfill-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/homedir-polyfill/-/homedir-polyfill-1.0.1.tgz";
        sha1 = "4c2bbc8a758998feebf5ed68580f76d46768b4bc";
      };
    }

    {
      name = "hosted-git-info-2.6.0.tgz";
      path = fetchurl {
        name = "hosted-git-info-2.6.0.tgz";
        url  = "https://registry.yarnpkg.com/hosted-git-info/-/hosted-git-info-2.6.0.tgz";
        sha1 = "23235b29ab230c576aab0d4f13fc046b0b038222";
      };
    }

    {
      name = "html-minifier-3.5.16.tgz";
      path = fetchurl {
        name = "html-minifier-3.5.16.tgz";
        url  = "https://registry.yarnpkg.com/html-minifier/-/html-minifier-3.5.16.tgz";
        sha1 = "39f5aabaf78bdfc057fe67334226efd7f3851175";
      };
    }

    {
      name = "htmlparser2-3.9.2.tgz";
      path = fetchurl {
        name = "htmlparser2-3.9.2.tgz";
        url  = "https://registry.yarnpkg.com/htmlparser2/-/htmlparser2-3.9.2.tgz";
        sha1 = "1bdf87acca0f3f9e53fa4fcceb0f4b4cbb00b338";
      };
    }

    {
      name = "htmlparser2-3.8.3.tgz";
      path = fetchurl {
        name = "htmlparser2-3.8.3.tgz";
        url  = "https://registry.yarnpkg.com/htmlparser2/-/htmlparser2-3.8.3.tgz";
        sha1 = "996c28b191516a8be86501a7d79757e5c70c1068";
      };
    }

    {
      name = "http-errors-1.6.3.tgz";
      path = fetchurl {
        name = "http-errors-1.6.3.tgz";
        url  = "https://registry.yarnpkg.com/http-errors/-/http-errors-1.6.3.tgz";
        sha1 = "8b55680bb4be283a0b5bf4ea2e38580be1d9320d";
      };
    }

    {
      name = "http-proxy-1.15.2.tgz";
      path = fetchurl {
        name = "http-proxy-1.15.2.tgz";
        url  = "https://registry.yarnpkg.com/http-proxy/-/http-proxy-1.15.2.tgz";
        sha1 = "642fdcaffe52d3448d2bda3b0079e9409064da31";
      };
    }

    {
      name = "http-signature-1.1.1.tgz";
      path = fetchurl {
        name = "http-signature-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/http-signature/-/http-signature-1.1.1.tgz";
        sha1 = "df72e267066cd0ac67fb76adf8e134a8fbcf91bf";
      };
    }

    {
      name = "iconv-lite-0.4.23.tgz";
      path = fetchurl {
        name = "iconv-lite-0.4.23.tgz";
        url  = "https://registry.yarnpkg.com/iconv-lite/-/iconv-lite-0.4.23.tgz";
        sha1 = "297871f63be507adcfbfca715d0cd0eed84e9a63";
      };
    }

    {
      name = "ignore-walk-3.0.1.tgz";
      path = fetchurl {
        name = "ignore-walk-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/ignore-walk/-/ignore-walk-3.0.1.tgz";
        sha1 = "a83e62e7d272ac0e3b551aaa82831a19b69f82f8";
      };
    }

    {
      name = "ignore-3.3.10.tgz";
      path = fetchurl {
        name = "ignore-3.3.10.tgz";
        url  = "https://registry.yarnpkg.com/ignore/-/ignore-3.3.10.tgz";
        sha1 = "0a97fb876986e8081c631160f8f9f389157f0043";
      };
    }

    {
      name = "immutable-3.8.2.tgz";
      path = fetchurl {
        name = "immutable-3.8.2.tgz";
        url  = "https://registry.yarnpkg.com/immutable/-/immutable-3.8.2.tgz";
        sha1 = "c2439951455bb39913daf281376f1530e104adf3";
      };
    }

    {
      name = "imurmurhash-0.1.4.tgz";
      path = fetchurl {
        name = "imurmurhash-0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/imurmurhash/-/imurmurhash-0.1.4.tgz";
        sha1 = "9218b9b2b928a238b13dc4fb6b6d576f231453ea";
      };
    }

    {
      name = "in-publish-2.0.0.tgz";
      path = fetchurl {
        name = "in-publish-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/in-publish/-/in-publish-2.0.0.tgz";
        sha1 = "e20ff5e3a2afc2690320b6dc552682a9c7fadf51";
      };
    }

    {
      name = "indent-string-2.1.0.tgz";
      path = fetchurl {
        name = "indent-string-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/indent-string/-/indent-string-2.1.0.tgz";
        sha1 = "8e2d48348742121b4a8218b7a137e9a52049dc80";
      };
    }

    {
      name = "indexof-0.0.1.tgz";
      path = fetchurl {
        name = "indexof-0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/indexof/-/indexof-0.0.1.tgz";
        sha1 = "82dc336d232b9062179d05ab3293a66059fd435d";
      };
    }

    {
      name = "inflight-1.0.6.tgz";
      path = fetchurl {
        name = "inflight-1.0.6.tgz";
        url  = "https://registry.yarnpkg.com/inflight/-/inflight-1.0.6.tgz";
        sha1 = "49bd6331d7d02d0c09bc910a1075ba8165b56df9";
      };
    }

    {
      name = "inherits-2.0.3.tgz";
      path = fetchurl {
        name = "inherits-2.0.3.tgz";
        url  = "https://registry.yarnpkg.com/inherits/-/inherits-2.0.3.tgz";
        sha1 = "633c2c83e3da42a502f52466022480f4208261de";
      };
    }

    {
      name = "ini-1.3.5.tgz";
      path = fetchurl {
        name = "ini-1.3.5.tgz";
        url  = "https://registry.yarnpkg.com/ini/-/ini-1.3.5.tgz";
        sha1 = "eee25f56db1c9ec6085e0c22778083f596abf927";
      };
    }

    {
      name = "inline-source-5.2.7.tgz";
      path = fetchurl {
        name = "inline-source-5.2.7.tgz";
        url  = "https://registry.yarnpkg.com/inline-source/-/inline-source-5.2.7.tgz";
        sha1 = "443dcd2e2948664db872a64fa5bb4c91fd1fbf84";
      };
    }

    {
      name = "inquirer-0.12.0.tgz";
      path = fetchurl {
        name = "inquirer-0.12.0.tgz";
        url  = "https://registry.yarnpkg.com/inquirer/-/inquirer-0.12.0.tgz";
        sha1 = "1ef2bfd63504df0bc75785fff8c2c41df12f077e";
      };
    }

    {
      name = "inquirer-3.3.0.tgz";
      path = fetchurl {
        name = "inquirer-3.3.0.tgz";
        url  = "https://registry.yarnpkg.com/inquirer/-/inquirer-3.3.0.tgz";
        sha1 = "9dd2f2ad765dcab1ff0443b491442a20ba227dc9";
      };
    }

    {
      name = "inquirer-5.2.0.tgz";
      path = fetchurl {
        name = "inquirer-5.2.0.tgz";
        url  = "https://registry.yarnpkg.com/inquirer/-/inquirer-5.2.0.tgz";
        sha1 = "db350c2b73daca77ff1243962e9f22f099685726";
      };
    }

    {
      name = "interpret-1.1.0.tgz";
      path = fetchurl {
        name = "interpret-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/interpret/-/interpret-1.1.0.tgz";
        sha1 = "7ed1b1410c6a0e0f78cf95d3b8440c63f78b8614";
      };
    }

    {
      name = "invariant-2.2.4.tgz";
      path = fetchurl {
        name = "invariant-2.2.4.tgz";
        url  = "https://registry.yarnpkg.com/invariant/-/invariant-2.2.4.tgz";
        sha1 = "610f3c92c9359ce1db616e538008d23ff35158e6";
      };
    }

    {
      name = "invert-kv-1.0.0.tgz";
      path = fetchurl {
        name = "invert-kv-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/invert-kv/-/invert-kv-1.0.0.tgz";
        sha1 = "104a8e4aaca6d3d8cd157a8ef8bfab2d7a3ffdb6";
      };
    }

    {
      name = "is-absolute-1.0.0.tgz";
      path = fetchurl {
        name = "is-absolute-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-absolute/-/is-absolute-1.0.0.tgz";
        sha1 = "395e1ae84b11f26ad1795e73c17378e48a301576";
      };
    }

    {
      name = "is-accessor-descriptor-0.1.6.tgz";
      path = fetchurl {
        name = "is-accessor-descriptor-0.1.6.tgz";
        url  = "https://registry.yarnpkg.com/is-accessor-descriptor/-/is-accessor-descriptor-0.1.6.tgz";
        sha1 = "a9e12cb3ae8d876727eeef3843f8a0897b5c98d6";
      };
    }

    {
      name = "is-accessor-descriptor-1.0.0.tgz";
      path = fetchurl {
        name = "is-accessor-descriptor-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-accessor-descriptor/-/is-accessor-descriptor-1.0.0.tgz";
        sha1 = "169c2f6d3df1f992618072365c9b0ea1f6878656";
      };
    }

    {
      name = "is-arrayish-0.2.1.tgz";
      path = fetchurl {
        name = "is-arrayish-0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/is-arrayish/-/is-arrayish-0.2.1.tgz";
        sha1 = "77c99840527aa8ecb1a8ba697b80645a7a926a9d";
      };
    }

    {
      name = "is-binary-path-1.0.1.tgz";
      path = fetchurl {
        name = "is-binary-path-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-binary-path/-/is-binary-path-1.0.1.tgz";
        sha1 = "75f16642b480f187a711c814161fd3a4a7655898";
      };
    }

    {
      name = "is-buffer-1.1.6.tgz";
      path = fetchurl {
        name = "is-buffer-1.1.6.tgz";
        url  = "https://registry.yarnpkg.com/is-buffer/-/is-buffer-1.1.6.tgz";
        sha1 = "efaa2ea9daa0d7ab2ea13a97b2b8ad51fefbe8be";
      };
    }

    {
      name = "is-builtin-module-1.0.0.tgz";
      path = fetchurl {
        name = "is-builtin-module-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-builtin-module/-/is-builtin-module-1.0.0.tgz";
        sha1 = "540572d34f7ac3119f8f76c30cbc1b1e037affbe";
      };
    }

    {
      name = "is-callable-1.1.3.tgz";
      path = fetchurl {
        name = "is-callable-1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/is-callable/-/is-callable-1.1.3.tgz";
        sha1 = "86eb75392805ddc33af71c92a0eedf74ee7604b2";
      };
    }

    {
      name = "is-data-descriptor-0.1.4.tgz";
      path = fetchurl {
        name = "is-data-descriptor-0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/is-data-descriptor/-/is-data-descriptor-0.1.4.tgz";
        sha1 = "0b5ee648388e2c860282e793f1856fec3f301b56";
      };
    }

    {
      name = "is-data-descriptor-1.0.0.tgz";
      path = fetchurl {
        name = "is-data-descriptor-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-data-descriptor/-/is-data-descriptor-1.0.0.tgz";
        sha1 = "d84876321d0e7add03990406abbbbd36ba9268c7";
      };
    }

    {
      name = "is-date-object-1.0.1.tgz";
      path = fetchurl {
        name = "is-date-object-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-date-object/-/is-date-object-1.0.1.tgz";
        sha1 = "9aa20eb6aeebbff77fbd33e74ca01b33581d3a16";
      };
    }

    {
      name = "is-descriptor-0.1.6.tgz";
      path = fetchurl {
        name = "is-descriptor-0.1.6.tgz";
        url  = "https://registry.yarnpkg.com/is-descriptor/-/is-descriptor-0.1.6.tgz";
        sha1 = "366d8240dde487ca51823b1ab9f07a10a78251ca";
      };
    }

    {
      name = "is-descriptor-1.0.2.tgz";
      path = fetchurl {
        name = "is-descriptor-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/is-descriptor/-/is-descriptor-1.0.2.tgz";
        sha1 = "3b159746a66604b04f8c81524ba365c5f14d86ec";
      };
    }

    {
      name = "is-dotfile-1.0.3.tgz";
      path = fetchurl {
        name = "is-dotfile-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/is-dotfile/-/is-dotfile-1.0.3.tgz";
        sha1 = "a6a2f32ffd2dfb04f5ca25ecd0f6b83cf798a1e1";
      };
    }

    {
      name = "is-equal-shallow-0.1.3.tgz";
      path = fetchurl {
        name = "is-equal-shallow-0.1.3.tgz";
        url  = "https://registry.yarnpkg.com/is-equal-shallow/-/is-equal-shallow-0.1.3.tgz";
        sha1 = "2238098fc221de0bcfa5d9eac4c45d638aa1c534";
      };
    }

    {
      name = "is-extendable-0.1.1.tgz";
      path = fetchurl {
        name = "is-extendable-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/is-extendable/-/is-extendable-0.1.1.tgz";
        sha1 = "62b110e289a471418e3ec36a617d472e301dfc89";
      };
    }

    {
      name = "is-extendable-1.0.1.tgz";
      path = fetchurl {
        name = "is-extendable-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-extendable/-/is-extendable-1.0.1.tgz";
        sha1 = "a7470f9e426733d81bd81e1155264e3a3507cab4";
      };
    }

    {
      name = "is-extglob-1.0.0.tgz";
      path = fetchurl {
        name = "is-extglob-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-extglob/-/is-extglob-1.0.0.tgz";
        sha1 = "ac468177c4943405a092fc8f29760c6ffc6206c0";
      };
    }

    {
      name = "is-extglob-2.1.1.tgz";
      path = fetchurl {
        name = "is-extglob-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/is-extglob/-/is-extglob-2.1.1.tgz";
        sha1 = "a88c02535791f02ed37c76a1b9ea9773c833f8c2";
      };
    }

    {
      name = "is-finite-1.0.2.tgz";
      path = fetchurl {
        name = "is-finite-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/is-finite/-/is-finite-1.0.2.tgz";
        sha1 = "cc6677695602be550ef11e8b4aa6305342b6d0aa";
      };
    }

    {
      name = "is-fullwidth-code-point-1.0.0.tgz";
      path = fetchurl {
        name = "is-fullwidth-code-point-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz";
        sha1 = "ef9e31386f031a7f0d643af82fde50c457ef00cb";
      };
    }

    {
      name = "is-fullwidth-code-point-2.0.0.tgz";
      path = fetchurl {
        name = "is-fullwidth-code-point-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-fullwidth-code-point/-/is-fullwidth-code-point-2.0.0.tgz";
        sha1 = "a3b30a5c4f199183167aaab93beefae3ddfb654f";
      };
    }

    {
      name = "is-glob-2.0.1.tgz";
      path = fetchurl {
        name = "is-glob-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-glob/-/is-glob-2.0.1.tgz";
        sha1 = "d096f926a3ded5600f3fdfd91198cb0888c2d863";
      };
    }

    {
      name = "is-glob-3.1.0.tgz";
      path = fetchurl {
        name = "is-glob-3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-glob/-/is-glob-3.1.0.tgz";
        sha1 = "7ba5ae24217804ac70707b96922567486cc3e84a";
      };
    }

    {
      name = "is-my-ip-valid-1.0.0.tgz";
      path = fetchurl {
        name = "is-my-ip-valid-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-my-ip-valid/-/is-my-ip-valid-1.0.0.tgz";
        sha1 = "7b351b8e8edd4d3995d4d066680e664d94696824";
      };
    }

    {
      name = "is-my-json-valid-2.17.2.tgz";
      path = fetchurl {
        name = "is-my-json-valid-2.17.2.tgz";
        url  = "https://registry.yarnpkg.com/is-my-json-valid/-/is-my-json-valid-2.17.2.tgz";
        sha1 = "6b2103a288e94ef3de5cf15d29dd85fc4b78d65c";
      };
    }

    {
      name = "is-negated-glob-1.0.0.tgz";
      path = fetchurl {
        name = "is-negated-glob-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-negated-glob/-/is-negated-glob-1.0.0.tgz";
        sha1 = "6910bca5da8c95e784b5751b976cf5a10fee36d2";
      };
    }

    {
      name = "is-number-like-1.0.8.tgz";
      path = fetchurl {
        name = "is-number-like-1.0.8.tgz";
        url  = "https://registry.yarnpkg.com/is-number-like/-/is-number-like-1.0.8.tgz";
        sha1 = "2e129620b50891042e44e9bbbb30593e75cfbbe3";
      };
    }

    {
      name = "is-number-2.1.0.tgz";
      path = fetchurl {
        name = "is-number-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-number/-/is-number-2.1.0.tgz";
        sha1 = "01fcbbb393463a548f2f466cce16dece49db908f";
      };
    }

    {
      name = "is-number-3.0.0.tgz";
      path = fetchurl {
        name = "is-number-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-number/-/is-number-3.0.0.tgz";
        sha1 = "24fd6201a4782cf50561c810276afc7d12d71195";
      };
    }

    {
      name = "is-number-4.0.0.tgz";
      path = fetchurl {
        name = "is-number-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-number/-/is-number-4.0.0.tgz";
        sha1 = "0026e37f5454d73e356dfe6564699867c6a7f0ff";
      };
    }

    {
      name = "is-odd-2.0.0.tgz";
      path = fetchurl {
        name = "is-odd-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-odd/-/is-odd-2.0.0.tgz";
        sha1 = "7646624671fd7ea558ccd9a2795182f2958f1b24";
      };
    }

    {
      name = "is-path-cwd-1.0.0.tgz";
      path = fetchurl {
        name = "is-path-cwd-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-path-cwd/-/is-path-cwd-1.0.0.tgz";
        sha1 = "d225ec23132e89edd38fda767472e62e65f1106d";
      };
    }

    {
      name = "is-path-in-cwd-1.0.1.tgz";
      path = fetchurl {
        name = "is-path-in-cwd-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-path-in-cwd/-/is-path-in-cwd-1.0.1.tgz";
        sha1 = "5ac48b345ef675339bd6c7a48a912110b241cf52";
      };
    }

    {
      name = "is-path-inside-1.0.1.tgz";
      path = fetchurl {
        name = "is-path-inside-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-path-inside/-/is-path-inside-1.0.1.tgz";
        sha1 = "8ef5b7de50437a3fdca6b4e865ef7aa55cb48036";
      };
    }

    {
      name = "is-plain-obj-1.1.0.tgz";
      path = fetchurl {
        name = "is-plain-obj-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-plain-obj/-/is-plain-obj-1.1.0.tgz";
        sha1 = "71a50c8429dfca773c92a390a4a03b39fcd51d3e";
      };
    }

    {
      name = "is-plain-object-2.0.4.tgz";
      path = fetchurl {
        name = "is-plain-object-2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/is-plain-object/-/is-plain-object-2.0.4.tgz";
        sha1 = "2c163b3fafb1b606d9d17928f05c2a1c38e07677";
      };
    }

    {
      name = "is-posix-bracket-0.1.1.tgz";
      path = fetchurl {
        name = "is-posix-bracket-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/is-posix-bracket/-/is-posix-bracket-0.1.1.tgz";
        sha1 = "3334dc79774368e92f016e6fbc0a88f5cd6e6bc4";
      };
    }

    {
      name = "is-primitive-2.0.0.tgz";
      path = fetchurl {
        name = "is-primitive-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-primitive/-/is-primitive-2.0.0.tgz";
        sha1 = "207bab91638499c07b2adf240a41a87210034575";
      };
    }

    {
      name = "is-promise-2.1.0.tgz";
      path = fetchurl {
        name = "is-promise-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-promise/-/is-promise-2.1.0.tgz";
        sha1 = "79a2a9ece7f096e80f36d2b2f3bc16c1ff4bf3fa";
      };
    }

    {
      name = "is-property-1.0.2.tgz";
      path = fetchurl {
        name = "is-property-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/is-property/-/is-property-1.0.2.tgz";
        sha1 = "57fe1c4e48474edd65b09911f26b1cd4095dda84";
      };
    }

    {
      name = "is-regex-1.0.4.tgz";
      path = fetchurl {
        name = "is-regex-1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/is-regex/-/is-regex-1.0.4.tgz";
        sha1 = "5517489b547091b0930e095654ced25ee97e9491";
      };
    }

    {
      name = "is-relative-1.0.0.tgz";
      path = fetchurl {
        name = "is-relative-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-relative/-/is-relative-1.0.0.tgz";
        sha1 = "a1bb6935ce8c5dba1e8b9754b9b2dcc020e2260d";
      };
    }

    {
      name = "is-resolvable-1.1.0.tgz";
      path = fetchurl {
        name = "is-resolvable-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-resolvable/-/is-resolvable-1.1.0.tgz";
        sha1 = "fb18f87ce1feb925169c9a407c19318a3206ed88";
      };
    }

    {
      name = "is-symbol-1.0.1.tgz";
      path = fetchurl {
        name = "is-symbol-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-symbol/-/is-symbol-1.0.1.tgz";
        sha1 = "3cc59f00025194b6ab2e38dbae6689256b660572";
      };
    }

    {
      name = "is-typedarray-1.0.0.tgz";
      path = fetchurl {
        name = "is-typedarray-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-typedarray/-/is-typedarray-1.0.0.tgz";
        sha1 = "e479c80858df0c1b11ddda6940f96011fcda4a9a";
      };
    }

    {
      name = "is-unc-path-1.0.0.tgz";
      path = fetchurl {
        name = "is-unc-path-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-unc-path/-/is-unc-path-1.0.0.tgz";
        sha1 = "d731e8898ed090a12c352ad2eaed5095ad322c9d";
      };
    }

    {
      name = "is-utf8-0.2.1.tgz";
      path = fetchurl {
        name = "is-utf8-0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/is-utf8/-/is-utf8-0.2.1.tgz";
        sha1 = "4b0da1442104d1b336340e80797e865cf39f7d72";
      };
    }

    {
      name = "is-valid-glob-1.0.0.tgz";
      path = fetchurl {
        name = "is-valid-glob-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-valid-glob/-/is-valid-glob-1.0.0.tgz";
        sha1 = "29bf3eff701be2d4d315dbacc39bc39fe8f601aa";
      };
    }

    {
      name = "is-windows-0.2.0.tgz";
      path = fetchurl {
        name = "is-windows-0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/is-windows/-/is-windows-0.2.0.tgz";
        sha1 = "de1aa6d63ea29dd248737b69f1ff8b8002d2108c";
      };
    }

    {
      name = "is-windows-1.0.2.tgz";
      path = fetchurl {
        name = "is-windows-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/is-windows/-/is-windows-1.0.2.tgz";
        sha1 = "d1850eb9791ecd18e6182ce12a30f396634bb19d";
      };
    }

    {
      name = "isarray-0.0.1.tgz";
      path = fetchurl {
        name = "isarray-0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/isarray/-/isarray-0.0.1.tgz";
        sha1 = "8a18acfca9a8f4177e09abfc6038939b05d1eedf";
      };
    }

    {
      name = "isarray-1.0.0.tgz";
      path = fetchurl {
        name = "isarray-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/isarray/-/isarray-1.0.0.tgz";
        sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
      };
    }

    {
      name = "isarray-2.0.1.tgz";
      path = fetchurl {
        name = "isarray-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/isarray/-/isarray-2.0.1.tgz";
        sha1 = "a37d94ed9cda2d59865c9f76fe596ee1f338741e";
      };
    }

    {
      name = "isexe-2.0.0.tgz";
      path = fetchurl {
        name = "isexe-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/isexe/-/isexe-2.0.0.tgz";
        sha1 = "e8fbf374dc556ff8947a10dcb0572d633f2cfa10";
      };
    }

    {
      name = "isobject-2.1.0.tgz";
      path = fetchurl {
        name = "isobject-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/isobject/-/isobject-2.1.0.tgz";
        sha1 = "f065561096a3f1da2ef46272f815c840d87e0c89";
      };
    }

    {
      name = "isobject-3.0.1.tgz";
      path = fetchurl {
        name = "isobject-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/isobject/-/isobject-3.0.1.tgz";
        sha1 = "4e431e92b11a9731636aa1f9c8d1ccbcfdab78df";
      };
    }

    {
      name = "isstream-0.1.2.tgz";
      path = fetchurl {
        name = "isstream-0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/isstream/-/isstream-0.1.2.tgz";
        sha1 = "47e63f7af55afa6f92e1500e690eb8b8529c099a";
      };
    }

    {
      name = "js-base64-2.4.5.tgz";
      path = fetchurl {
        name = "js-base64-2.4.5.tgz";
        url  = "https://registry.yarnpkg.com/js-base64/-/js-base64-2.4.5.tgz";
        sha1 = "e293cd3c7c82f070d700fc7a1ca0a2e69f101f92";
      };
    }

    {
      name = "js-tokens-3.0.2.tgz";
      path = fetchurl {
        name = "js-tokens-3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/js-tokens/-/js-tokens-3.0.2.tgz";
        sha1 = "9866df395102130e38f7f996bceb65443209c25b";
      };
    }

    {
      name = "js-yaml-3.12.0.tgz";
      path = fetchurl {
        name = "js-yaml-3.12.0.tgz";
        url  = "https://registry.yarnpkg.com/js-yaml/-/js-yaml-3.12.0.tgz";
        sha1 = "eaed656ec8344f10f527c6bfa1b6e2244de167d1";
      };
    }

    {
      name = "js-yaml-3.7.0.tgz";
      path = fetchurl {
        name = "js-yaml-3.7.0.tgz";
        url  = "https://registry.yarnpkg.com/js-yaml/-/js-yaml-3.7.0.tgz";
        sha1 = "5c967ddd837a9bfdca5f2de84253abe8a1c03b80";
      };
    }

    {
      name = "jsbn-0.1.1.tgz";
      path = fetchurl {
        name = "jsbn-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/jsbn/-/jsbn-0.1.1.tgz";
        sha1 = "a5e654c2e5a2deb5f201d96cefbca80c0ef2f513";
      };
    }

    {
      name = "jsesc-2.5.1.tgz";
      path = fetchurl {
        name = "jsesc-2.5.1.tgz";
        url  = "https://registry.yarnpkg.com/jsesc/-/jsesc-2.5.1.tgz";
        sha1 = "e421a2a8e20d6b0819df28908f782526b96dd1fe";
      };
    }

    {
      name = "json-schema-traverse-0.3.1.tgz";
      path = fetchurl {
        name = "json-schema-traverse-0.3.1.tgz";
        url  = "https://registry.yarnpkg.com/json-schema-traverse/-/json-schema-traverse-0.3.1.tgz";
        sha1 = "349a6d44c53a51de89b40805c5d5e59b417d3340";
      };
    }

    {
      name = "json-schema-traverse-0.4.1.tgz";
      path = fetchurl {
        name = "json-schema-traverse-0.4.1.tgz";
        url  = "https://registry.yarnpkg.com/json-schema-traverse/-/json-schema-traverse-0.4.1.tgz";
        sha1 = "69f6a87d9513ab8bb8fe63bdb0979c448e684660";
      };
    }

    {
      name = "json-schema-0.2.3.tgz";
      path = fetchurl {
        name = "json-schema-0.2.3.tgz";
        url  = "https://registry.yarnpkg.com/json-schema/-/json-schema-0.2.3.tgz";
        sha1 = "b480c892e59a2f05954ce727bd3f2a4e882f9e13";
      };
    }

    {
      name = "json-stable-stringify-without-jsonify-1.0.1.tgz";
      path = fetchurl {
        name = "json-stable-stringify-without-jsonify-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/json-stable-stringify-without-jsonify/-/json-stable-stringify-without-jsonify-1.0.1.tgz";
        sha1 = "9db7b59496ad3f3cfef30a75142d2d930ad72651";
      };
    }

    {
      name = "json-stable-stringify-1.0.1.tgz";
      path = fetchurl {
        name = "json-stable-stringify-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/json-stable-stringify/-/json-stable-stringify-1.0.1.tgz";
        sha1 = "9a759d39c5f2ff503fd5300646ed445f88c4f9af";
      };
    }

    {
      name = "json-stringify-safe-5.0.1.tgz";
      path = fetchurl {
        name = "json-stringify-safe-5.0.1.tgz";
        url  = "https://registry.yarnpkg.com/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
        sha1 = "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb";
      };
    }

    {
      name = "jsonfile-3.0.1.tgz";
      path = fetchurl {
        name = "jsonfile-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/jsonfile/-/jsonfile-3.0.1.tgz";
        sha1 = "a5ecc6f65f53f662c4415c7675a0331d0992ec66";
      };
    }

    {
      name = "jsonify-0.0.0.tgz";
      path = fetchurl {
        name = "jsonify-0.0.0.tgz";
        url  = "https://registry.yarnpkg.com/jsonify/-/jsonify-0.0.0.tgz";
        sha1 = "2c74b6ee41d93ca51b7b5aaee8f503631d252a73";
      };
    }

    {
      name = "jsonminify-0.2.3.tgz";
      path = fetchurl {
        name = "jsonminify-0.2.3.tgz";
        url  = "https://registry.yarnpkg.com/jsonminify/-/jsonminify-0.2.3.tgz";
        sha1 = "4b842c8a3fe5d6aa48b2f8f95a1cf9a80c019d8e";
      };
    }

    {
      name = "jsonpointer-4.0.1.tgz";
      path = fetchurl {
        name = "jsonpointer-4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/jsonpointer/-/jsonpointer-4.0.1.tgz";
        sha1 = "4fd92cb34e0e9db3c89c8622ecf51f9b978c6cb9";
      };
    }

    {
      name = "jsprim-1.4.1.tgz";
      path = fetchurl {
        name = "jsprim-1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/jsprim/-/jsprim-1.4.1.tgz";
        sha1 = "313e66bc1e5cc06e438bc1b7499c2e5c56acb6a2";
      };
    }

    {
      name = "jsx-ast-utils-2.0.1.tgz";
      path = fetchurl {
        name = "jsx-ast-utils-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/jsx-ast-utils/-/jsx-ast-utils-2.0.1.tgz";
        sha1 = "e801b1b39985e20fffc87b40e3748080e2dcac7f";
      };
    }

    {
      name = "just-debounce-1.0.0.tgz";
      path = fetchurl {
        name = "just-debounce-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/just-debounce/-/just-debounce-1.0.0.tgz";
        sha1 = "87fccfaeffc0b68cd19d55f6722943f929ea35ea";
      };
    }

    {
      name = "kind-of-1.1.0.tgz";
      path = fetchurl {
        name = "kind-of-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/kind-of/-/kind-of-1.1.0.tgz";
        sha1 = "140a3d2d41a36d2efcfa9377b62c24f8495a5c44";
      };
    }

    {
      name = "kind-of-3.2.2.tgz";
      path = fetchurl {
        name = "kind-of-3.2.2.tgz";
        url  = "https://registry.yarnpkg.com/kind-of/-/kind-of-3.2.2.tgz";
        sha1 = "31ea21a734bab9bbb0f32466d893aea51e4a3c64";
      };
    }

    {
      name = "kind-of-4.0.0.tgz";
      path = fetchurl {
        name = "kind-of-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/kind-of/-/kind-of-4.0.0.tgz";
        sha1 = "20813df3d712928b207378691a45066fae72dd57";
      };
    }

    {
      name = "kind-of-5.1.0.tgz";
      path = fetchurl {
        name = "kind-of-5.1.0.tgz";
        url  = "https://registry.yarnpkg.com/kind-of/-/kind-of-5.1.0.tgz";
        sha1 = "729c91e2d857b7a419a1f9aa65685c4c33f5845d";
      };
    }

    {
      name = "kind-of-6.0.2.tgz";
      path = fetchurl {
        name = "kind-of-6.0.2.tgz";
        url  = "https://registry.yarnpkg.com/kind-of/-/kind-of-6.0.2.tgz";
        sha1 = "01146b36a6218e64e58f3a8d66de5d7fc6f6d051";
      };
    }

    {
      name = "known-css-properties-0.3.0.tgz";
      path = fetchurl {
        name = "known-css-properties-0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/known-css-properties/-/known-css-properties-0.3.0.tgz";
        sha1 = "a3d135bbfc60ee8c6eacf2f7e7e6f2d4755e49a4";
      };
    }

    {
      name = "last-run-1.1.1.tgz";
      path = fetchurl {
        name = "last-run-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/last-run/-/last-run-1.1.1.tgz";
        sha1 = "45b96942c17b1c79c772198259ba943bebf8ca5b";
      };
    }

    {
      name = "lazystream-1.0.0.tgz";
      path = fetchurl {
        name = "lazystream-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lazystream/-/lazystream-1.0.0.tgz";
        sha1 = "f6995fe0f820392f61396be89462407bb77168e4";
      };
    }

    {
      name = "lcid-1.0.0.tgz";
      path = fetchurl {
        name = "lcid-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lcid/-/lcid-1.0.0.tgz";
        sha1 = "308accafa0bc483a3867b4b6f2b9506251d1b835";
      };
    }

    {
      name = "lead-1.0.0.tgz";
      path = fetchurl {
        name = "lead-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lead/-/lead-1.0.0.tgz";
        sha1 = "6f14f99a37be3a9dd784f5495690e5903466ee42";
      };
    }

    {
      name = "leaflet-1.3.1.tgz";
      path = fetchurl {
        name = "leaflet-1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/leaflet/-/leaflet-1.3.1.tgz";
        sha1 = "86f336d2fb0e2d0ff446677049a5dc34cf0ea60e";
      };
    }

    {
      name = "levn-0.3.0.tgz";
      path = fetchurl {
        name = "levn-0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/levn/-/levn-0.3.0.tgz";
        sha1 = "3b09924edf9f083c0490fdd4c0bc4421e04764ee";
      };
    }

    {
      name = "liftoff-2.5.0.tgz";
      path = fetchurl {
        name = "liftoff-2.5.0.tgz";
        url  = "https://registry.yarnpkg.com/liftoff/-/liftoff-2.5.0.tgz";
        sha1 = "2009291bb31cea861bbf10a7c15a28caf75c31ec";
      };
    }

    {
      name = "limiter-1.1.3.tgz";
      path = fetchurl {
        name = "limiter-1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/limiter/-/limiter-1.1.3.tgz";
        sha1 = "32e2eb55b2324076943e5d04c1185ffb387968ef";
      };
    }

    {
      name = "load-json-file-1.1.0.tgz";
      path = fetchurl {
        name = "load-json-file-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/load-json-file/-/load-json-file-1.1.0.tgz";
        sha1 = "956905708d58b4bab4c2261b04f59f31c99374c0";
      };
    }

    {
      name = "localtunnel-1.9.0.tgz";
      path = fetchurl {
        name = "localtunnel-1.9.0.tgz";
        url  = "https://registry.yarnpkg.com/localtunnel/-/localtunnel-1.9.0.tgz";
        sha1 = "8ffecdcf8c8a14f62df1056cf9d54acbb0bb9a8f";
      };
    }

    {
      name = "lodash._basecopy-3.0.1.tgz";
      path = fetchurl {
        name = "lodash._basecopy-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._basecopy/-/lodash._basecopy-3.0.1.tgz";
        sha1 = "8da0e6a876cf344c0ad8a54882111dd3c5c7ca36";
      };
    }

    {
      name = "lodash._basetostring-3.0.1.tgz";
      path = fetchurl {
        name = "lodash._basetostring-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._basetostring/-/lodash._basetostring-3.0.1.tgz";
        sha1 = "d1861d877f824a52f669832dcaf3ee15566a07d5";
      };
    }

    {
      name = "lodash._basevalues-3.0.0.tgz";
      path = fetchurl {
        name = "lodash._basevalues-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash._basevalues/-/lodash._basevalues-3.0.0.tgz";
        sha1 = "5b775762802bde3d3297503e26300820fdf661b7";
      };
    }

    {
      name = "lodash._getnative-3.9.1.tgz";
      path = fetchurl {
        name = "lodash._getnative-3.9.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._getnative/-/lodash._getnative-3.9.1.tgz";
        sha1 = "570bc7dede46d61cdcde687d65d3eecbaa3aaff5";
      };
    }

    {
      name = "lodash._isiterateecall-3.0.9.tgz";
      path = fetchurl {
        name = "lodash._isiterateecall-3.0.9.tgz";
        url  = "https://registry.yarnpkg.com/lodash._isiterateecall/-/lodash._isiterateecall-3.0.9.tgz";
        sha1 = "5203ad7ba425fae842460e696db9cf3e6aac057c";
      };
    }

    {
      name = "lodash._reescape-3.0.0.tgz";
      path = fetchurl {
        name = "lodash._reescape-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash._reescape/-/lodash._reescape-3.0.0.tgz";
        sha1 = "2b1d6f5dfe07c8a355753e5f27fac7f1cde1616a";
      };
    }

    {
      name = "lodash._reevaluate-3.0.0.tgz";
      path = fetchurl {
        name = "lodash._reevaluate-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash._reevaluate/-/lodash._reevaluate-3.0.0.tgz";
        sha1 = "58bc74c40664953ae0b124d806996daca431e2ed";
      };
    }

    {
      name = "lodash._reinterpolate-3.0.0.tgz";
      path = fetchurl {
        name = "lodash._reinterpolate-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash._reinterpolate/-/lodash._reinterpolate-3.0.0.tgz";
        sha1 = "0ccf2d89166af03b3663c796538b75ac6e114d9d";
      };
    }

    {
      name = "lodash._root-3.0.1.tgz";
      path = fetchurl {
        name = "lodash._root-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._root/-/lodash._root-3.0.1.tgz";
        sha1 = "fba1c4524c19ee9a5f8136b4609f017cf4ded692";
      };
    }

    {
      name = "lodash.assign-4.2.0.tgz";
      path = fetchurl {
        name = "lodash.assign-4.2.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.assign/-/lodash.assign-4.2.0.tgz";
        sha1 = "0d99f3ccd7a6d261d19bdaeb9245005d285808e7";
      };
    }

    {
      name = "lodash.assignin-4.2.0.tgz";
      path = fetchurl {
        name = "lodash.assignin-4.2.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.assignin/-/lodash.assignin-4.2.0.tgz";
        sha1 = "ba8df5fb841eb0a3e8044232b0e263a8dc6a28a2";
      };
    }

    {
      name = "lodash.bind-4.2.1.tgz";
      path = fetchurl {
        name = "lodash.bind-4.2.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.bind/-/lodash.bind-4.2.1.tgz";
        sha1 = "7ae3017e939622ac31b7d7d7dcb1b34db1690d35";
      };
    }

    {
      name = "lodash.capitalize-4.2.1.tgz";
      path = fetchurl {
        name = "lodash.capitalize-4.2.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.capitalize/-/lodash.capitalize-4.2.1.tgz";
        sha1 = "f826c9b4e2a8511d84e3aca29db05e1a4f3b72a9";
      };
    }

    {
      name = "lodash.clonedeep-4.5.0.tgz";
      path = fetchurl {
        name = "lodash.clonedeep-4.5.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.clonedeep/-/lodash.clonedeep-4.5.0.tgz";
        sha1 = "e23f3f9c4f8fbdde872529c1071857a086e5ccef";
      };
    }

    {
      name = "lodash.defaults-4.2.0.tgz";
      path = fetchurl {
        name = "lodash.defaults-4.2.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.defaults/-/lodash.defaults-4.2.0.tgz";
        sha1 = "d09178716ffea4dde9e5fb7b37f6f0802274580c";
      };
    }

    {
      name = "lodash.escape-3.2.0.tgz";
      path = fetchurl {
        name = "lodash.escape-3.2.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.escape/-/lodash.escape-3.2.0.tgz";
        sha1 = "995ee0dc18c1b48cc92effae71a10aab5b487698";
      };
    }

    {
      name = "lodash.filter-4.6.0.tgz";
      path = fetchurl {
        name = "lodash.filter-4.6.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.filter/-/lodash.filter-4.6.0.tgz";
        sha1 = "668b1d4981603ae1cc5a6fa760143e480b4c4ace";
      };
    }

    {
      name = "lodash.flatten-4.4.0.tgz";
      path = fetchurl {
        name = "lodash.flatten-4.4.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.flatten/-/lodash.flatten-4.4.0.tgz";
        sha1 = "f31c22225a9632d2bbf8e4addbef240aa765a61f";
      };
    }

    {
      name = "lodash.foreach-4.5.0.tgz";
      path = fetchurl {
        name = "lodash.foreach-4.5.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.foreach/-/lodash.foreach-4.5.0.tgz";
        sha1 = "1a6a35eace401280c7f06dddec35165ab27e3e53";
      };
    }

    {
      name = "lodash.isarguments-3.1.0.tgz";
      path = fetchurl {
        name = "lodash.isarguments-3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.isarguments/-/lodash.isarguments-3.1.0.tgz";
        sha1 = "2f573d85c6a24289ff00663b491c1d338ff3458a";
      };
    }

    {
      name = "lodash.isarray-3.0.4.tgz";
      path = fetchurl {
        name = "lodash.isarray-3.0.4.tgz";
        url  = "https://registry.yarnpkg.com/lodash.isarray/-/lodash.isarray-3.0.4.tgz";
        sha1 = "79e4eb88c36a8122af86f844aa9bcd851b5fbb55";
      };
    }

    {
      name = "lodash.isfinite-3.3.2.tgz";
      path = fetchurl {
        name = "lodash.isfinite-3.3.2.tgz";
        url  = "https://registry.yarnpkg.com/lodash.isfinite/-/lodash.isfinite-3.3.2.tgz";
        sha1 = "fb89b65a9a80281833f0b7478b3a5104f898ebb3";
      };
    }

    {
      name = "lodash.kebabcase-4.1.1.tgz";
      path = fetchurl {
        name = "lodash.kebabcase-4.1.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.kebabcase/-/lodash.kebabcase-4.1.1.tgz";
        sha1 = "8489b1cb0d29ff88195cceca448ff6d6cc295c36";
      };
    }

    {
      name = "lodash.keys-3.1.2.tgz";
      path = fetchurl {
        name = "lodash.keys-3.1.2.tgz";
        url  = "https://registry.yarnpkg.com/lodash.keys/-/lodash.keys-3.1.2.tgz";
        sha1 = "4dbc0472b156be50a0b286855d1bd0b0c656098a";
      };
    }

    {
      name = "lodash.map-4.6.0.tgz";
      path = fetchurl {
        name = "lodash.map-4.6.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.map/-/lodash.map-4.6.0.tgz";
        sha1 = "771ec7839e3473d9c4cde28b19394c3562f4f6d3";
      };
    }

    {
      name = "lodash.merge-4.6.1.tgz";
      path = fetchurl {
        name = "lodash.merge-4.6.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.merge/-/lodash.merge-4.6.1.tgz";
        sha1 = "adc25d9cb99b9391c59624f379fbba60d7111d54";
      };
    }

    {
      name = "lodash.mergewith-4.6.1.tgz";
      path = fetchurl {
        name = "lodash.mergewith-4.6.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.mergewith/-/lodash.mergewith-4.6.1.tgz";
        sha1 = "639057e726c3afbdb3e7d42741caa8d6e4335927";
      };
    }

    {
      name = "lodash.pick-4.4.0.tgz";
      path = fetchurl {
        name = "lodash.pick-4.4.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.pick/-/lodash.pick-4.4.0.tgz";
        sha1 = "52f05610fff9ded422611441ed1fc123a03001b3";
      };
    }

    {
      name = "lodash.reduce-4.6.0.tgz";
      path = fetchurl {
        name = "lodash.reduce-4.6.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.reduce/-/lodash.reduce-4.6.0.tgz";
        sha1 = "f1ab6b839299ad48f784abbf476596f03b914d3b";
      };
    }

    {
      name = "lodash.reject-4.6.0.tgz";
      path = fetchurl {
        name = "lodash.reject-4.6.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.reject/-/lodash.reject-4.6.0.tgz";
        sha1 = "80d6492dc1470864bbf583533b651f42a9f52415";
      };
    }

    {
      name = "lodash.restparam-3.6.1.tgz";
      path = fetchurl {
        name = "lodash.restparam-3.6.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.restparam/-/lodash.restparam-3.6.1.tgz";
        sha1 = "936a4e309ef330a7645ed4145986c85ae5b20805";
      };
    }

    {
      name = "lodash.some-4.6.0.tgz";
      path = fetchurl {
        name = "lodash.some-4.6.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.some/-/lodash.some-4.6.0.tgz";
        sha1 = "1bb9f314ef6b8baded13b549169b2a945eb68e4d";
      };
    }

    {
      name = "lodash.template-3.6.2.tgz";
      path = fetchurl {
        name = "lodash.template-3.6.2.tgz";
        url  = "https://registry.yarnpkg.com/lodash.template/-/lodash.template-3.6.2.tgz";
        sha1 = "f8cdecc6169a255be9098ae8b0c53d378931d14f";
      };
    }

    {
      name = "lodash.templatesettings-3.1.1.tgz";
      path = fetchurl {
        name = "lodash.templatesettings-3.1.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.templatesettings/-/lodash.templatesettings-3.1.1.tgz";
        sha1 = "fb307844753b66b9f1afa54e262c745307dba8e5";
      };
    }

    {
      name = "lodash-3.10.1.tgz";
      path = fetchurl {
        name = "lodash-3.10.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash/-/lodash-3.10.1.tgz";
        sha1 = "5bf45e8e49ba4189e17d482789dfd15bd140b7b6";
      };
    }

    {
      name = "lodash-4.17.10.tgz";
      path = fetchurl {
        name = "lodash-4.17.10.tgz";
        url  = "https://registry.yarnpkg.com/lodash/-/lodash-4.17.10.tgz";
        sha1 = "1b7793cf7259ea38fb3661d4d38b3260af8ae4e7";
      };
    }

    {
      name = "loose-envify-1.3.1.tgz";
      path = fetchurl {
        name = "loose-envify-1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/loose-envify/-/loose-envify-1.3.1.tgz";
        sha1 = "d1a8ad33fa9ce0e713d65fdd0ac8b748d478c848";
      };
    }

    {
      name = "loud-rejection-1.6.0.tgz";
      path = fetchurl {
        name = "loud-rejection-1.6.0.tgz";
        url  = "https://registry.yarnpkg.com/loud-rejection/-/loud-rejection-1.6.0.tgz";
        sha1 = "5b46f80147edee578870f086d04821cf998e551f";
      };
    }

    {
      name = "lower-case-1.1.4.tgz";
      path = fetchurl {
        name = "lower-case-1.1.4.tgz";
        url  = "https://registry.yarnpkg.com/lower-case/-/lower-case-1.1.4.tgz";
        sha1 = "9a2cabd1b9e8e0ae993a4bf7d5875c39c42e8eac";
      };
    }

    {
      name = "lru-cache-4.1.3.tgz";
      path = fetchurl {
        name = "lru-cache-4.1.3.tgz";
        url  = "https://registry.yarnpkg.com/lru-cache/-/lru-cache-4.1.3.tgz";
        sha1 = "a1175cf3496dfc8436c156c334b4955992bce69c";
      };
    }

    {
      name = "lru-queue-0.1.0.tgz";
      path = fetchurl {
        name = "lru-queue-0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/lru-queue/-/lru-queue-0.1.0.tgz";
        sha1 = "2738bd9f0d3cf4f84490c5736c48699ac632cda3";
      };
    }

    {
      name = "make-error-cause-1.2.2.tgz";
      path = fetchurl {
        name = "make-error-cause-1.2.2.tgz";
        url  = "https://registry.yarnpkg.com/make-error-cause/-/make-error-cause-1.2.2.tgz";
        sha1 = "df0388fcd0b37816dff0a5fb8108939777dcbc9d";
      };
    }

    {
      name = "make-error-1.3.4.tgz";
      path = fetchurl {
        name = "make-error-1.3.4.tgz";
        url  = "https://registry.yarnpkg.com/make-error/-/make-error-1.3.4.tgz";
        sha1 = "19978ed575f9e9545d2ff8c13e33b5d18a67d535";
      };
    }

    {
      name = "make-iterator-1.0.1.tgz";
      path = fetchurl {
        name = "make-iterator-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/make-iterator/-/make-iterator-1.0.1.tgz";
        sha1 = "29b33f312aa8f547c4a5e490f56afcec99133ad6";
      };
    }

    {
      name = "map-cache-0.2.2.tgz";
      path = fetchurl {
        name = "map-cache-0.2.2.tgz";
        url  = "https://registry.yarnpkg.com/map-cache/-/map-cache-0.2.2.tgz";
        sha1 = "c32abd0bd6525d9b051645bb4f26ac5dc98a0dbf";
      };
    }

    {
      name = "map-obj-1.0.1.tgz";
      path = fetchurl {
        name = "map-obj-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/map-obj/-/map-obj-1.0.1.tgz";
        sha1 = "d933ceb9205d82bdcf4886f6742bdc2b4dea146d";
      };
    }

    {
      name = "map-stream-0.1.0.tgz";
      path = fetchurl {
        name = "map-stream-0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/map-stream/-/map-stream-0.1.0.tgz";
        sha1 = "e56aa94c4c8055a16404a0674b78f215f7c8e194";
      };
    }

    {
      name = "map-visit-1.0.0.tgz";
      path = fetchurl {
        name = "map-visit-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/map-visit/-/map-visit-1.0.0.tgz";
        sha1 = "ecdca8f13144e660f1b5bd41f12f3479d98dfb8f";
      };
    }

    {
      name = "match-stream-0.0.2.tgz";
      path = fetchurl {
        name = "match-stream-0.0.2.tgz";
        url  = "https://registry.yarnpkg.com/match-stream/-/match-stream-0.0.2.tgz";
        sha1 = "99eb050093b34dffade421b9ac0b410a9cfa17cf";
      };
    }

    {
      name = "matchdep-2.0.0.tgz";
      path = fetchurl {
        name = "matchdep-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/matchdep/-/matchdep-2.0.0.tgz";
        sha1 = "c6f34834a0d8dbc3b37c27ee8bbcb27c7775582e";
      };
    }

    {
      name = "math-random-1.0.1.tgz";
      path = fetchurl {
        name = "math-random-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/math-random/-/math-random-1.0.1.tgz";
        sha1 = "8b3aac588b8a66e4975e3cdea67f7bb329601fac";
      };
    }

    {
      name = "md5-2.2.1.tgz";
      path = fetchurl {
        name = "md5-2.2.1.tgz";
        url  = "https://registry.yarnpkg.com/md5/-/md5-2.2.1.tgz";
        sha1 = "53ab38d5fe3c8891ba465329ea23fac0540126f9";
      };
    }

    {
      name = "mdn-data-1.1.4.tgz";
      path = fetchurl {
        name = "mdn-data-1.1.4.tgz";
        url  = "https://registry.yarnpkg.com/mdn-data/-/mdn-data-1.1.4.tgz";
        sha1 = "50b5d4ffc4575276573c4eedb8780812a8419f01";
      };
    }

    {
      name = "memoizee-0.4.12.tgz";
      path = fetchurl {
        name = "memoizee-0.4.12.tgz";
        url  = "https://registry.yarnpkg.com/memoizee/-/memoizee-0.4.12.tgz";
        sha1 = "780e99a219c50c549be6d0fc61765080975c58fb";
      };
    }

    {
      name = "meow-3.7.0.tgz";
      path = fetchurl {
        name = "meow-3.7.0.tgz";
        url  = "https://registry.yarnpkg.com/meow/-/meow-3.7.0.tgz";
        sha1 = "72cb668b425228290abbfa856892587308a801fb";
      };
    }

    {
      name = "merge-stream-1.0.1.tgz";
      path = fetchurl {
        name = "merge-stream-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/merge-stream/-/merge-stream-1.0.1.tgz";
        sha1 = "4041202d508a342ba00174008df0c251b8c135e1";
      };
    }

    {
      name = "merge-1.2.0.tgz";
      path = fetchurl {
        name = "merge-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/merge/-/merge-1.2.0.tgz";
        sha1 = "7531e39d4949c281a66b8c5a6e0265e8b05894da";
      };
    }

    {
      name = "metaparser-1.0.7.tgz";
      path = fetchurl {
        name = "metaparser-1.0.7.tgz";
        url  = "https://registry.yarnpkg.com/metaparser/-/metaparser-1.0.7.tgz";
        sha1 = "c0699a6686a07a8bce1ac06b62e9462c2e66aaca";
      };
    }

    {
      name = "micromatch-2.3.11.tgz";
      path = fetchurl {
        name = "micromatch-2.3.11.tgz";
        url  = "https://registry.yarnpkg.com/micromatch/-/micromatch-2.3.11.tgz";
        sha1 = "86677c97d1720b363431d04d0d15293bd38c1565";
      };
    }

    {
      name = "micromatch-3.1.10.tgz";
      path = fetchurl {
        name = "micromatch-3.1.10.tgz";
        url  = "https://registry.yarnpkg.com/micromatch/-/micromatch-3.1.10.tgz";
        sha1 = "70859bc95c9840952f359a068a3fc49f9ecfac23";
      };
    }

    {
      name = "mime-db-1.33.0.tgz";
      path = fetchurl {
        name = "mime-db-1.33.0.tgz";
        url  = "https://registry.yarnpkg.com/mime-db/-/mime-db-1.33.0.tgz";
        sha1 = "a3492050a5cb9b63450541e39d9788d2272783db";
      };
    }

    {
      name = "mime-types-2.1.18.tgz";
      path = fetchurl {
        name = "mime-types-2.1.18.tgz";
        url  = "https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.18.tgz";
        sha1 = "6f323f60a83d11146f831ff11fd66e2fe5503bb8";
      };
    }

    {
      name = "mime-1.4.1.tgz";
      path = fetchurl {
        name = "mime-1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/mime/-/mime-1.4.1.tgz";
        sha1 = "121f9ebc49e3766f311a76e1fa1c8003c4b03aa6";
      };
    }

    {
      name = "mimic-fn-1.2.0.tgz";
      path = fetchurl {
        name = "mimic-fn-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/mimic-fn/-/mimic-fn-1.2.0.tgz";
        sha1 = "820c86a39334640e99516928bd03fca88057d022";
      };
    }

    {
      name = "minimatch-3.0.4.tgz";
      path = fetchurl {
        name = "minimatch-3.0.4.tgz";
        url  = "https://registry.yarnpkg.com/minimatch/-/minimatch-3.0.4.tgz";
        sha1 = "5166e286457f03306064be5497e8dbb0c3d32083";
      };
    }

    {
      name = "minimist-0.0.8.tgz";
      path = fetchurl {
        name = "minimist-0.0.8.tgz";
        url  = "https://registry.yarnpkg.com/minimist/-/minimist-0.0.8.tgz";
        sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
      };
    }

    {
      name = "minimist-1.1.3.tgz";
      path = fetchurl {
        name = "minimist-1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/minimist/-/minimist-1.1.3.tgz";
        sha1 = "3bedfd91a92d39016fcfaa1c681e8faa1a1efda8";
      };
    }

    {
      name = "minimist-1.2.0.tgz";
      path = fetchurl {
        name = "minimist-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/minimist/-/minimist-1.2.0.tgz";
        sha1 = "a35008b20f41383eec1fb914f4cd5df79a264284";
      };
    }

    {
      name = "minipass-2.3.3.tgz";
      path = fetchurl {
        name = "minipass-2.3.3.tgz";
        url  = "https://registry.yarnpkg.com/minipass/-/minipass-2.3.3.tgz";
        sha1 = "a7dcc8b7b833f5d368759cce544dccb55f50f233";
      };
    }

    {
      name = "minizlib-1.1.0.tgz";
      path = fetchurl {
        name = "minizlib-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/minizlib/-/minizlib-1.1.0.tgz";
        sha1 = "11e13658ce46bc3a70a267aac58359d1e0c29ceb";
      };
    }

    {
      name = "mixin-deep-1.3.1.tgz";
      path = fetchurl {
        name = "mixin-deep-1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/mixin-deep/-/mixin-deep-1.3.1.tgz";
        sha1 = "a49e7268dce1a0d9698e45326c5626df3543d0fe";
      };
    }

    {
      name = "mkdirp-0.5.1.tgz";
      path = fetchurl {
        name = "mkdirp-0.5.1.tgz";
        url  = "https://registry.yarnpkg.com/mkdirp/-/mkdirp-0.5.1.tgz";
        sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
      };
    }

    {
      name = "moment-2.22.2.tgz";
      path = fetchurl {
        name = "moment-2.22.2.tgz";
        url  = "https://registry.yarnpkg.com/moment/-/moment-2.22.2.tgz";
        sha1 = "3c257f9839fc0e93ff53149632239eb90783ff66";
      };
    }

    {
      name = "ms-0.7.1.tgz";
      path = fetchurl {
        name = "ms-0.7.1.tgz";
        url  = "https://registry.yarnpkg.com/ms/-/ms-0.7.1.tgz";
        sha1 = "9cd13c03adbff25b65effde7ce864ee952017098";
      };
    }

    {
      name = "ms-2.0.0.tgz";
      path = fetchurl {
        name = "ms-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/ms/-/ms-2.0.0.tgz";
        sha1 = "5608aeadfc00be6c2901df5f9861788de0d597c8";
      };
    }

    {
      name = "multipipe-0.1.2.tgz";
      path = fetchurl {
        name = "multipipe-0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/multipipe/-/multipipe-0.1.2.tgz";
        sha1 = "2a8f2ddf70eed564dff2d57f1e1a137d9f05078b";
      };
    }

    {
      name = "mute-stdout-1.0.0.tgz";
      path = fetchurl {
        name = "mute-stdout-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/mute-stdout/-/mute-stdout-1.0.0.tgz";
        sha1 = "5b32ea07eb43c9ded6130434cf926f46b2a7fd4d";
      };
    }

    {
      name = "mute-stream-0.0.5.tgz";
      path = fetchurl {
        name = "mute-stream-0.0.5.tgz";
        url  = "https://registry.yarnpkg.com/mute-stream/-/mute-stream-0.0.5.tgz";
        sha1 = "8fbfabb0a98a253d3184331f9e8deb7372fac6c0";
      };
    }

    {
      name = "mute-stream-0.0.7.tgz";
      path = fetchurl {
        name = "mute-stream-0.0.7.tgz";
        url  = "https://registry.yarnpkg.com/mute-stream/-/mute-stream-0.0.7.tgz";
        sha1 = "3075ce93bc21b8fab43e1bc4da7e8115ed1e7bab";
      };
    }

    {
      name = "nan-2.10.0.tgz";
      path = fetchurl {
        name = "nan-2.10.0.tgz";
        url  = "https://registry.yarnpkg.com/nan/-/nan-2.10.0.tgz";
        sha1 = "96d0cd610ebd58d4b4de9cc0c6828cda99c7548f";
      };
    }

    {
      name = "nanomatch-1.2.9.tgz";
      path = fetchurl {
        name = "nanomatch-1.2.9.tgz";
        url  = "https://registry.yarnpkg.com/nanomatch/-/nanomatch-1.2.9.tgz";
        sha1 = "879f7150cb2dab7a471259066c104eee6e0fa7c2";
      };
    }

    {
      name = "natives-1.1.4.tgz";
      path = fetchurl {
        name = "natives-1.1.4.tgz";
        url  = "https://registry.yarnpkg.com/natives/-/natives-1.1.4.tgz";
        sha1 = "2f0f224fc9a7dd53407c7667c84cf8dbe773de58";
      };
    }

    {
      name = "natural-compare-1.4.0.tgz";
      path = fetchurl {
        name = "natural-compare-1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/natural-compare/-/natural-compare-1.4.0.tgz";
        sha1 = "4abebfeed7541f2c27acfb29bdbbd15c8d5ba4f7";
      };
    }

    {
      name = "navigo-7.1.2.tgz";
      path = fetchurl {
        name = "navigo-7.1.2.tgz";
        url  = "https://registry.yarnpkg.com/navigo/-/navigo-7.1.2.tgz";
        sha1 = "f543098ae5cbc5763b926742b5047ffb68a187e2";
      };
    }

    {
      name = "needle-2.2.1.tgz";
      path = fetchurl {
        name = "needle-2.2.1.tgz";
        url  = "https://registry.yarnpkg.com/needle/-/needle-2.2.1.tgz";
        sha1 = "b5e325bd3aae8c2678902fa296f729455d1d3a7d";
      };
    }

    {
      name = "negotiator-0.6.1.tgz";
      path = fetchurl {
        name = "negotiator-0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/negotiator/-/negotiator-0.6.1.tgz";
        sha1 = "2b327184e8992101177b28563fb5e7102acd0ca9";
      };
    }

    {
      name = "next-tick-1.0.0.tgz";
      path = fetchurl {
        name = "next-tick-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/next-tick/-/next-tick-1.0.0.tgz";
        sha1 = "ca86d1fe8828169b0120208e3dc8424b9db8342c";
      };
    }

    {
      name = "nice-try-1.0.4.tgz";
      path = fetchurl {
        name = "nice-try-1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/nice-try/-/nice-try-1.0.4.tgz";
        sha1 = "d93962f6c52f2c1558c0fbda6d512819f1efe1c4";
      };
    }

    {
      name = "no-case-2.3.2.tgz";
      path = fetchurl {
        name = "no-case-2.3.2.tgz";
        url  = "https://registry.yarnpkg.com/no-case/-/no-case-2.3.2.tgz";
        sha1 = "60b813396be39b3f1288a4c1ed5d1e7d28b464ac";
      };
    }

    {
      name = "node-gyp-3.7.0.tgz";
      path = fetchurl {
        name = "node-gyp-3.7.0.tgz";
        url  = "https://registry.yarnpkg.com/node-gyp/-/node-gyp-3.7.0.tgz";
        sha1 = "789478e8f6c45e277aa014f3e28f958f286f9203";
      };
    }

    {
      name = "node-polyglot-2.2.2.tgz";
      path = fetchurl {
        name = "node-polyglot-2.2.2.tgz";
        url  = "https://registry.yarnpkg.com/node-polyglot/-/node-polyglot-2.2.2.tgz";
        sha1 = "1a3f76d7392f836ea0823836ede817e6ea6ec26c";
      };
    }

    {
      name = "node-pre-gyp-0.10.2.tgz";
      path = fetchurl {
        name = "node-pre-gyp-0.10.2.tgz";
        url  = "https://registry.yarnpkg.com/node-pre-gyp/-/node-pre-gyp-0.10.2.tgz";
        sha1 = "e8945c20ef6795a20aac2b44f036eb13cf5146e3";
      };
    }

    {
      name = "node-rest-client-1.8.0.tgz";
      path = fetchurl {
        name = "node-rest-client-1.8.0.tgz";
        url  = "https://registry.yarnpkg.com/node-rest-client/-/node-rest-client-1.8.0.tgz";
        sha1 = "8d3c566b817e27394cb7273783a41caefe3e5955";
      };
    }

    {
      name = "node-sass-4.9.0.tgz";
      path = fetchurl {
        name = "node-sass-4.9.0.tgz";
        url  = "https://registry.yarnpkg.com/node-sass/-/node-sass-4.9.0.tgz";
        sha1 = "d1b8aa855d98ed684d6848db929a20771cc2ae52";
      };
    }

    {
      name = "nopt-3.0.6.tgz";
      path = fetchurl {
        name = "nopt-3.0.6.tgz";
        url  = "https://registry.yarnpkg.com/nopt/-/nopt-3.0.6.tgz";
        sha1 = "c6465dbf08abcd4db359317f79ac68a646b28ff9";
      };
    }

    {
      name = "nopt-4.0.1.tgz";
      path = fetchurl {
        name = "nopt-4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/nopt/-/nopt-4.0.1.tgz";
        sha1 = "d0d4685afd5415193c8c7505602d0d17cd64474d";
      };
    }

    {
      name = "normalize-package-data-2.4.0.tgz";
      path = fetchurl {
        name = "normalize-package-data-2.4.0.tgz";
        url  = "https://registry.yarnpkg.com/normalize-package-data/-/normalize-package-data-2.4.0.tgz";
        sha1 = "12f95a307d58352075a04907b84ac8be98ac012f";
      };
    }

    {
      name = "normalize-path-2.1.1.tgz";
      path = fetchurl {
        name = "normalize-path-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/normalize-path/-/normalize-path-2.1.1.tgz";
        sha1 = "1ab28b556e198363a8c1a6f7e6fa20137fe6aed9";
      };
    }

    {
      name = "normalize-range-0.1.2.tgz";
      path = fetchurl {
        name = "normalize-range-0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/normalize-range/-/normalize-range-0.1.2.tgz";
        sha1 = "2d10c06bdfd312ea9777695a4d28439456b75942";
      };
    }

    {
      name = "now-and-later-2.0.0.tgz";
      path = fetchurl {
        name = "now-and-later-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/now-and-later/-/now-and-later-2.0.0.tgz";
        sha1 = "bc61cbb456d79cb32207ce47ca05136ff2e7d6ee";
      };
    }

    {
      name = "npm-bundled-1.0.3.tgz";
      path = fetchurl {
        name = "npm-bundled-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/npm-bundled/-/npm-bundled-1.0.3.tgz";
        sha1 = "7e71703d973af3370a9591bafe3a63aca0be2308";
      };
    }

    {
      name = "npm-packlist-1.1.10.tgz";
      path = fetchurl {
        name = "npm-packlist-1.1.10.tgz";
        url  = "https://registry.yarnpkg.com/npm-packlist/-/npm-packlist-1.1.10.tgz";
        sha1 = "1039db9e985727e464df066f4cf0ab6ef85c398a";
      };
    }

    {
      name = "npmlog-4.1.2.tgz";
      path = fetchurl {
        name = "npmlog-4.1.2.tgz";
        url  = "https://registry.yarnpkg.com/npmlog/-/npmlog-4.1.2.tgz";
        sha1 = "08a7f2a8bf734604779a9efa4ad5cc717abb954b";
      };
    }

    {
      name = "nth-check-1.0.1.tgz";
      path = fetchurl {
        name = "nth-check-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/nth-check/-/nth-check-1.0.1.tgz";
        sha1 = "9929acdf628fc2c41098deab82ac580cf149aae4";
      };
    }

    {
      name = "num2fraction-1.2.2.tgz";
      path = fetchurl {
        name = "num2fraction-1.2.2.tgz";
        url  = "https://registry.yarnpkg.com/num2fraction/-/num2fraction-1.2.2.tgz";
        sha1 = "6f682b6a027a4e9ddfa4564cd2589d1d4e669ede";
      };
    }

    {
      name = "number-is-nan-1.0.1.tgz";
      path = fetchurl {
        name = "number-is-nan-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/number-is-nan/-/number-is-nan-1.0.1.tgz";
        sha1 = "097b602b53422a522c1afb8790318336941a011d";
      };
    }

    {
      name = "oauth-sign-0.8.2.tgz";
      path = fetchurl {
        name = "oauth-sign-0.8.2.tgz";
        url  = "https://registry.yarnpkg.com/oauth-sign/-/oauth-sign-0.8.2.tgz";
        sha1 = "46a6ab7f0aead8deae9ec0565780b7d4efeb9d43";
      };
    }

    {
      name = "object-assign-4.1.1.tgz";
      path = fetchurl {
        name = "object-assign-4.1.1.tgz";
        url  = "https://registry.yarnpkg.com/object-assign/-/object-assign-4.1.1.tgz";
        sha1 = "2109adc7965887cfc05cbbd442cac8bfbb360863";
      };
    }

    {
      name = "object-assign-3.0.0.tgz";
      path = fetchurl {
        name = "object-assign-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/object-assign/-/object-assign-3.0.0.tgz";
        sha1 = "9bedd5ca0897949bca47e7ff408062d549f587f2";
      };
    }

    {
      name = "object-component-0.0.3.tgz";
      path = fetchurl {
        name = "object-component-0.0.3.tgz";
        url  = "https://registry.yarnpkg.com/object-component/-/object-component-0.0.3.tgz";
        sha1 = "f0c69aa50efc95b866c186f400a33769cb2f1291";
      };
    }

    {
      name = "object-copy-0.1.0.tgz";
      path = fetchurl {
        name = "object-copy-0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/object-copy/-/object-copy-0.1.0.tgz";
        sha1 = "7e7d858b781bd7c991a41ba975ed3812754e998c";
      };
    }

    {
      name = "object-keys-1.0.12.tgz";
      path = fetchurl {
        name = "object-keys-1.0.12.tgz";
        url  = "https://registry.yarnpkg.com/object-keys/-/object-keys-1.0.12.tgz";
        sha1 = "09c53855377575310cca62f55bb334abff7b3ed2";
      };
    }

    {
      name = "object-path-0.9.2.tgz";
      path = fetchurl {
        name = "object-path-0.9.2.tgz";
        url  = "https://registry.yarnpkg.com/object-path/-/object-path-0.9.2.tgz";
        sha1 = "0fd9a74fc5fad1ae3968b586bda5c632bd6c05a5";
      };
    }

    {
      name = "object-visit-1.0.1.tgz";
      path = fetchurl {
        name = "object-visit-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/object-visit/-/object-visit-1.0.1.tgz";
        sha1 = "f79c4493af0c5377b59fe39d395e41042dd045bb";
      };
    }

    {
      name = "object.assign-4.1.0.tgz";
      path = fetchurl {
        name = "object.assign-4.1.0.tgz";
        url  = "https://registry.yarnpkg.com/object.assign/-/object.assign-4.1.0.tgz";
        sha1 = "968bf1100d7956bb3ca086f006f846b3bc4008da";
      };
    }

    {
      name = "object.defaults-1.1.0.tgz";
      path = fetchurl {
        name = "object.defaults-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/object.defaults/-/object.defaults-1.1.0.tgz";
        sha1 = "3a7f868334b407dea06da16d88d5cd29e435fecf";
      };
    }

    {
      name = "object.map-1.0.1.tgz";
      path = fetchurl {
        name = "object.map-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/object.map/-/object.map-1.0.1.tgz";
        sha1 = "cf83e59dc8fcc0ad5f4250e1f78b3b81bd801d37";
      };
    }

    {
      name = "object.omit-2.0.1.tgz";
      path = fetchurl {
        name = "object.omit-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/object.omit/-/object.omit-2.0.1.tgz";
        sha1 = "1a9c744829f39dbb858c76ca3579ae2a54ebd1fa";
      };
    }

    {
      name = "object.pick-1.3.0.tgz";
      path = fetchurl {
        name = "object.pick-1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/object.pick/-/object.pick-1.3.0.tgz";
        sha1 = "87a10ac4c1694bd2e1cbf53591a66141fb5dd747";
      };
    }

    {
      name = "object.reduce-1.0.1.tgz";
      path = fetchurl {
        name = "object.reduce-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/object.reduce/-/object.reduce-1.0.1.tgz";
        sha1 = "6fe348f2ac7fa0f95ca621226599096825bb03ad";
      };
    }

    {
      name = "on-finished-2.3.0.tgz";
      path = fetchurl {
        name = "on-finished-2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/on-finished/-/on-finished-2.3.0.tgz";
        sha1 = "20f1336481b083cd75337992a16971aa2d906947";
      };
    }

    {
      name = "once-1.4.0.tgz";
      path = fetchurl {
        name = "once-1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/once/-/once-1.4.0.tgz";
        sha1 = "583b1aa775961d4b113ac17d9c50baef9dd76bd1";
      };
    }

    {
      name = "onetime-1.1.0.tgz";
      path = fetchurl {
        name = "onetime-1.1.0.tgz";
        url  = "http://registry.npmjs.org/onetime/-/onetime-1.1.0.tgz";
        sha1 = "a1f7838f8314c516f05ecefcbc4ccfe04b4ed789";
      };
    }

    {
      name = "onetime-2.0.1.tgz";
      path = fetchurl {
        name = "onetime-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/onetime/-/onetime-2.0.1.tgz";
        sha1 = "067428230fd67443b2794b22bba528b6867962d4";
      };
    }

    {
      name = "openurl-1.1.1.tgz";
      path = fetchurl {
        name = "openurl-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/openurl/-/openurl-1.1.1.tgz";
        sha1 = "3875b4b0ef7a52c156f0db41d4609dbb0f94b387";
      };
    }

    {
      name = "opn-4.0.2.tgz";
      path = fetchurl {
        name = "opn-4.0.2.tgz";
        url  = "https://registry.yarnpkg.com/opn/-/opn-4.0.2.tgz";
        sha1 = "7abc22e644dff63b0a96d5ab7f2790c0f01abc95";
      };
    }

    {
      name = "optionator-0.8.2.tgz";
      path = fetchurl {
        name = "optionator-0.8.2.tgz";
        url  = "https://registry.yarnpkg.com/optionator/-/optionator-0.8.2.tgz";
        sha1 = "364c5e409d3f4d6301d6c0b4c05bba50180aeb64";
      };
    }

    {
      name = "ordered-read-streams-1.0.1.tgz";
      path = fetchurl {
        name = "ordered-read-streams-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/ordered-read-streams/-/ordered-read-streams-1.0.1.tgz";
        sha1 = "77c0cb37c41525d64166d990ffad7ec6a0e1363e";
      };
    }

    {
      name = "os-homedir-1.0.2.tgz";
      path = fetchurl {
        name = "os-homedir-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/os-homedir/-/os-homedir-1.0.2.tgz";
        sha1 = "ffbc4988336e0e833de0c168c7ef152121aa7fb3";
      };
    }

    {
      name = "os-locale-1.4.0.tgz";
      path = fetchurl {
        name = "os-locale-1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/os-locale/-/os-locale-1.4.0.tgz";
        sha1 = "20f9f17ae29ed345e8bde583b13d2009803c14d9";
      };
    }

    {
      name = "os-tmpdir-1.0.2.tgz";
      path = fetchurl {
        name = "os-tmpdir-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/os-tmpdir/-/os-tmpdir-1.0.2.tgz";
        sha1 = "bbe67406c79aa85c5cfec766fe5734555dfa1274";
      };
    }

    {
      name = "osenv-0.1.5.tgz";
      path = fetchurl {
        name = "osenv-0.1.5.tgz";
        url  = "https://registry.yarnpkg.com/osenv/-/osenv-0.1.5.tgz";
        sha1 = "85cdfafaeb28e8677f416e287592b5f3f49ea410";
      };
    }

    {
      name = "over-0.0.5.tgz";
      path = fetchurl {
        name = "over-0.0.5.tgz";
        url  = "https://registry.yarnpkg.com/over/-/over-0.0.5.tgz";
        sha1 = "f29852e70fd7e25f360e013a8ec44c82aedb5708";
      };
    }

    {
      name = "param-case-2.1.1.tgz";
      path = fetchurl {
        name = "param-case-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/param-case/-/param-case-2.1.1.tgz";
        sha1 = "df94fd8cf6531ecf75e6bef9a0858fbc72be2247";
      };
    }

    {
      name = "parse-filepath-1.0.2.tgz";
      path = fetchurl {
        name = "parse-filepath-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/parse-filepath/-/parse-filepath-1.0.2.tgz";
        sha1 = "a632127f53aaf3d15876f5872f3ffac763d6c891";
      };
    }

    {
      name = "parse-glob-3.0.4.tgz";
      path = fetchurl {
        name = "parse-glob-3.0.4.tgz";
        url  = "https://registry.yarnpkg.com/parse-glob/-/parse-glob-3.0.4.tgz";
        sha1 = "b2c376cfb11f35513badd173ef0bb6e3a388391c";
      };
    }

    {
      name = "parse-json-2.2.0.tgz";
      path = fetchurl {
        name = "parse-json-2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/parse-json/-/parse-json-2.2.0.tgz";
        sha1 = "f480f40434ef80741f8469099f8dea18f55a4dc9";
      };
    }

    {
      name = "parse-passwd-1.0.0.tgz";
      path = fetchurl {
        name = "parse-passwd-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/parse-passwd/-/parse-passwd-1.0.0.tgz";
        sha1 = "6d5b934a456993b23d37f40a382d6f1666a8e5c6";
      };
    }

    {
      name = "parseqs-0.0.5.tgz";
      path = fetchurl {
        name = "parseqs-0.0.5.tgz";
        url  = "https://registry.yarnpkg.com/parseqs/-/parseqs-0.0.5.tgz";
        sha1 = "d5208a3738e46766e291ba2ea173684921a8b89d";
      };
    }

    {
      name = "parseuri-0.0.5.tgz";
      path = fetchurl {
        name = "parseuri-0.0.5.tgz";
        url  = "https://registry.yarnpkg.com/parseuri/-/parseuri-0.0.5.tgz";
        sha1 = "80204a50d4dbb779bfdc6ebe2778d90e4bce320a";
      };
    }

    {
      name = "parseurl-1.3.2.tgz";
      path = fetchurl {
        name = "parseurl-1.3.2.tgz";
        url  = "https://registry.yarnpkg.com/parseurl/-/parseurl-1.3.2.tgz";
        sha1 = "fc289d4ed8993119460c156253262cdc8de65bf3";
      };
    }

    {
      name = "pascalcase-0.1.1.tgz";
      path = fetchurl {
        name = "pascalcase-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/pascalcase/-/pascalcase-0.1.1.tgz";
        sha1 = "b363e55e8006ca6fe21784d2db22bd15d7917f14";
      };
    }

    {
      name = "path-dirname-1.0.2.tgz";
      path = fetchurl {
        name = "path-dirname-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/path-dirname/-/path-dirname-1.0.2.tgz";
        sha1 = "cc33d24d525e099a5388c0336c6e32b9160609e0";
      };
    }

    {
      name = "path-exists-2.1.0.tgz";
      path = fetchurl {
        name = "path-exists-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/path-exists/-/path-exists-2.1.0.tgz";
        sha1 = "0feb6c64f0fc518d9a754dd5efb62c7022761f4b";
      };
    }

    {
      name = "path-is-absolute-1.0.1.tgz";
      path = fetchurl {
        name = "path-is-absolute-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
        sha1 = "174b9268735534ffbc7ace6bf53a5a9e1b5c5f5f";
      };
    }

    {
      name = "path-is-inside-1.0.2.tgz";
      path = fetchurl {
        name = "path-is-inside-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/path-is-inside/-/path-is-inside-1.0.2.tgz";
        sha1 = "365417dede44430d1c11af61027facf074bdfc53";
      };
    }

    {
      name = "path-key-2.0.1.tgz";
      path = fetchurl {
        name = "path-key-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/path-key/-/path-key-2.0.1.tgz";
        sha1 = "411cadb574c5a140d3a4b1910d40d80cc9f40b40";
      };
    }

    {
      name = "path-parse-1.0.5.tgz";
      path = fetchurl {
        name = "path-parse-1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/path-parse/-/path-parse-1.0.5.tgz";
        sha1 = "3c1adf871ea9cd6c9431b6ea2bd74a0ff055c4c1";
      };
    }

    {
      name = "path-root-regex-0.1.2.tgz";
      path = fetchurl {
        name = "path-root-regex-0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/path-root-regex/-/path-root-regex-0.1.2.tgz";
        sha1 = "bfccdc8df5b12dc52c8b43ec38d18d72c04ba96d";
      };
    }

    {
      name = "path-root-0.1.1.tgz";
      path = fetchurl {
        name = "path-root-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/path-root/-/path-root-0.1.1.tgz";
        sha1 = "9a4a6814cac1c0cd73360a95f32083c8ea4745b7";
      };
    }

    {
      name = "path-type-1.1.0.tgz";
      path = fetchurl {
        name = "path-type-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/path-type/-/path-type-1.1.0.tgz";
        sha1 = "59c44f7ee491da704da415da5a4070ba4f8fe441";
      };
    }

    {
      name = "pause-stream-0.0.11.tgz";
      path = fetchurl {
        name = "pause-stream-0.0.11.tgz";
        url  = "https://registry.yarnpkg.com/pause-stream/-/pause-stream-0.0.11.tgz";
        sha1 = "fe5a34b0cbce12b5aa6a2b403ee2e73b602f1445";
      };
    }

    {
      name = "performance-now-0.2.0.tgz";
      path = fetchurl {
        name = "performance-now-0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/performance-now/-/performance-now-0.2.0.tgz";
        sha1 = "33ef30c5c77d4ea21c5a53869d91b56d8f2555e5";
      };
    }

    {
      name = "pify-2.3.0.tgz";
      path = fetchurl {
        name = "pify-2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/pify/-/pify-2.3.0.tgz";
        sha1 = "ed141a6ac043a849ea588498e7dca8b15330e90c";
      };
    }

    {
      name = "pinkie-promise-2.0.1.tgz";
      path = fetchurl {
        name = "pinkie-promise-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/pinkie-promise/-/pinkie-promise-2.0.1.tgz";
        sha1 = "2135d6dfa7a358c069ac9b178776288228450ffa";
      };
    }

    {
      name = "pinkie-2.0.4.tgz";
      path = fetchurl {
        name = "pinkie-2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/pinkie/-/pinkie-2.0.4.tgz";
        sha1 = "72556b80cfa0d48a974e80e77248e80ed4f7f870";
      };
    }

    {
      name = "plugin-error-0.1.2.tgz";
      path = fetchurl {
        name = "plugin-error-0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/plugin-error/-/plugin-error-0.1.2.tgz";
        sha1 = "3b9bb3335ccf00f425e07437e19276967da47ace";
      };
    }

    {
      name = "plugin-error-1.0.1.tgz";
      path = fetchurl {
        name = "plugin-error-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/plugin-error/-/plugin-error-1.0.1.tgz";
        sha1 = "77016bd8919d0ac377fdcdd0322328953ca5781c";
      };
    }

    {
      name = "pluralize-1.2.1.tgz";
      path = fetchurl {
        name = "pluralize-1.2.1.tgz";
        url  = "https://registry.yarnpkg.com/pluralize/-/pluralize-1.2.1.tgz";
        sha1 = "d1a21483fd22bb41e58a12fa3421823140897c45";
      };
    }

    {
      name = "pluralize-7.0.0.tgz";
      path = fetchurl {
        name = "pluralize-7.0.0.tgz";
        url  = "https://registry.yarnpkg.com/pluralize/-/pluralize-7.0.0.tgz";
        sha1 = "298b89df8b93b0221dbf421ad2b1b1ea23fc6777";
      };
    }

    {
      name = "portscanner-2.1.1.tgz";
      path = fetchurl {
        name = "portscanner-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/portscanner/-/portscanner-2.1.1.tgz";
        sha1 = "eabb409e4de24950f5a2a516d35ae769343fbb96";
      };
    }

    {
      name = "posix-character-classes-0.1.1.tgz";
      path = fetchurl {
        name = "posix-character-classes-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/posix-character-classes/-/posix-character-classes-0.1.1.tgz";
        sha1 = "01eac0fe3b5af71a2a6c02feabb8c1fef7e00eab";
      };
    }

    {
      name = "postcss-value-parser-3.3.0.tgz";
      path = fetchurl {
        name = "postcss-value-parser-3.3.0.tgz";
        url  = "https://registry.yarnpkg.com/postcss-value-parser/-/postcss-value-parser-3.3.0.tgz";
        sha1 = "87f38f9f18f774a4ab4c8a232f5c5ce8872a9d15";
      };
    }

    {
      name = "postcss-6.0.23.tgz";
      path = fetchurl {
        name = "postcss-6.0.23.tgz";
        url  = "https://registry.yarnpkg.com/postcss/-/postcss-6.0.23.tgz";
        sha1 = "61c82cc328ac60e677645f979054eb98bc0e3324";
      };
    }

    {
      name = "prelude-ls-1.1.2.tgz";
      path = fetchurl {
        name = "prelude-ls-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/prelude-ls/-/prelude-ls-1.1.2.tgz";
        sha1 = "21932a549f5e52ffd9a827f570e04be62a97da54";
      };
    }

    {
      name = "preserve-0.2.0.tgz";
      path = fetchurl {
        name = "preserve-0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/preserve/-/preserve-0.2.0.tgz";
        sha1 = "815ed1f6ebc65926f865b310c0713bcb3315ce4b";
      };
    }

    {
      name = "pretty-hrtime-1.0.3.tgz";
      path = fetchurl {
        name = "pretty-hrtime-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/pretty-hrtime/-/pretty-hrtime-1.0.3.tgz";
        sha1 = "b7e3ea42435a4c9b2759d99e0f201eb195802ee1";
      };
    }

    {
      name = "process-nextick-args-1.0.7.tgz";
      path = fetchurl {
        name = "process-nextick-args-1.0.7.tgz";
        url  = "https://registry.yarnpkg.com/process-nextick-args/-/process-nextick-args-1.0.7.tgz";
        sha1 = "150e20b756590ad3f91093f25a4f2ad8bff30ba3";
      };
    }

    {
      name = "process-nextick-args-2.0.0.tgz";
      path = fetchurl {
        name = "process-nextick-args-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/process-nextick-args/-/process-nextick-args-2.0.0.tgz";
        sha1 = "a37d732f4271b4ab1ad070d35508e8290788ffaa";
      };
    }

    {
      name = "progress-1.1.8.tgz";
      path = fetchurl {
        name = "progress-1.1.8.tgz";
        url  = "https://registry.yarnpkg.com/progress/-/progress-1.1.8.tgz";
        sha1 = "e260c78f6161cdd9b0e56cc3e0a85de17c7a57be";
      };
    }

    {
      name = "progress-2.0.0.tgz";
      path = fetchurl {
        name = "progress-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/progress/-/progress-2.0.0.tgz";
        sha1 = "8a1be366bf8fc23db2bd23f10c6fe920b4389d1f";
      };
    }

    {
      name = "promise-polyfill-8.0.0.tgz";
      path = fetchurl {
        name = "promise-polyfill-8.0.0.tgz";
        url  = "https://registry.yarnpkg.com/promise-polyfill/-/promise-polyfill-8.0.0.tgz";
        sha1 = "b47c7fc74052cc5b2132b703cca144f1a5eb56ef";
      };
    }

    {
      name = "prop-types-15.6.2.tgz";
      path = fetchurl {
        name = "prop-types-15.6.2.tgz";
        url  = "https://registry.yarnpkg.com/prop-types/-/prop-types-15.6.2.tgz";
        sha1 = "05d5ca77b4453e985d60fc7ff8c859094a497102";
      };
    }

    {
      name = "pseudomap-1.0.2.tgz";
      path = fetchurl {
        name = "pseudomap-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/pseudomap/-/pseudomap-1.0.2.tgz";
        sha1 = "f052a28da70e618917ef0a8ac34c1ae5a68286b3";
      };
    }

    {
      name = "pullstream-0.4.1.tgz";
      path = fetchurl {
        name = "pullstream-0.4.1.tgz";
        url  = "https://registry.yarnpkg.com/pullstream/-/pullstream-0.4.1.tgz";
        sha1 = "d6fb3bf5aed697e831150eb1002c25a3f8ae1314";
      };
    }

    {
      name = "pump-2.0.1.tgz";
      path = fetchurl {
        name = "pump-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/pump/-/pump-2.0.1.tgz";
        sha1 = "12399add6e4cf7526d973cbc8b5ce2e2908b3909";
      };
    }

    {
      name = "pumpify-1.5.1.tgz";
      path = fetchurl {
        name = "pumpify-1.5.1.tgz";
        url  = "https://registry.yarnpkg.com/pumpify/-/pumpify-1.5.1.tgz";
        sha1 = "36513be246ab27570b1a374a5ce278bfd74370ce";
      };
    }

    {
      name = "punycode-1.4.1.tgz";
      path = fetchurl {
        name = "punycode-1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/punycode/-/punycode-1.4.1.tgz";
        sha1 = "c0d5a63b2718800ad8e1eb0fa5269c84dd41845e";
      };
    }

    {
      name = "punycode-2.1.1.tgz";
      path = fetchurl {
        name = "punycode-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/punycode/-/punycode-2.1.1.tgz";
        sha1 = "b58b010ac40c22c5657616c8d2c2c02c7bf479ec";
      };
    }

    {
      name = "q-1.5.1.tgz";
      path = fetchurl {
        name = "q-1.5.1.tgz";
        url  = "https://registry.yarnpkg.com/q/-/q-1.5.1.tgz";
        sha1 = "7e32f75b41381291d04611f1bf14109ac00651d7";
      };
    }

    {
      name = "qs-6.2.3.tgz";
      path = fetchurl {
        name = "qs-6.2.3.tgz";
        url  = "https://registry.yarnpkg.com/qs/-/qs-6.2.3.tgz";
        sha1 = "1cfcb25c10a9b2b483053ff39f5dfc9233908cfe";
      };
    }

    {
      name = "qs-6.3.2.tgz";
      path = fetchurl {
        name = "qs-6.3.2.tgz";
        url  = "https://registry.yarnpkg.com/qs/-/qs-6.3.2.tgz";
        sha1 = "e75bd5f6e268122a2a0e0bda630b2550c166502c";
      };
    }

    {
      name = "qs-6.4.0.tgz";
      path = fetchurl {
        name = "qs-6.4.0.tgz";
        url  = "https://registry.yarnpkg.com/qs/-/qs-6.4.0.tgz";
        sha1 = "13e26d28ad6b0ffaa91312cd3bf708ed351e7233";
      };
    }

    {
      name = "quickselect-1.1.1.tgz";
      path = fetchurl {
        name = "quickselect-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/quickselect/-/quickselect-1.1.1.tgz";
        sha1 = "852e412ce418f237ad5b660d70cffac647ae94c2";
      };
    }

    {
      name = "randomatic-3.0.0.tgz";
      path = fetchurl {
        name = "randomatic-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/randomatic/-/randomatic-3.0.0.tgz";
        sha1 = "d35490030eb4f7578de292ce6dfb04a91a128923";
      };
    }

    {
      name = "range-parser-1.2.0.tgz";
      path = fetchurl {
        name = "range-parser-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/range-parser/-/range-parser-1.2.0.tgz";
        sha1 = "f49be6b487894ddc40dcc94a322f611092e00d5e";
      };
    }

    {
      name = "raw-body-2.3.3.tgz";
      path = fetchurl {
        name = "raw-body-2.3.3.tgz";
        url  = "https://registry.yarnpkg.com/raw-body/-/raw-body-2.3.3.tgz";
        sha1 = "1b324ece6b5706e153855bc1148c65bb7f6ea0c3";
      };
    }

    {
      name = "rbush-2.0.2.tgz";
      path = fetchurl {
        name = "rbush-2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/rbush/-/rbush-2.0.2.tgz";
        sha1 = "bb6005c2731b7ba1d5a9a035772927d16a614605";
      };
    }

    {
      name = "rc-1.2.8.tgz";
      path = fetchurl {
        name = "rc-1.2.8.tgz";
        url  = "https://registry.yarnpkg.com/rc/-/rc-1.2.8.tgz";
        sha1 = "cd924bf5200a075b83c188cd6b9e211b7fc0d3ed";
      };
    }

    {
      name = "read-pkg-up-1.0.1.tgz";
      path = fetchurl {
        name = "read-pkg-up-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/read-pkg-up/-/read-pkg-up-1.0.1.tgz";
        sha1 = "9d63c13276c065918d57f002a57f40a1b643fb02";
      };
    }

    {
      name = "read-pkg-1.1.0.tgz";
      path = fetchurl {
        name = "read-pkg-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/read-pkg/-/read-pkg-1.1.0.tgz";
        sha1 = "f5ffaa5ecd29cb31c0474bca7d756b6bb29e3f28";
      };
    }

    {
      name = "readable-stream-1.1.13.tgz";
      path = fetchurl {
        name = "readable-stream-1.1.13.tgz";
        url  = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-1.1.13.tgz";
        sha1 = "f6eef764f514c89e2b9e23146a75ba106756d23e";
      };
    }

    {
      name = "readable-stream-1.0.34.tgz";
      path = fetchurl {
        name = "readable-stream-1.0.34.tgz";
        url  = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-1.0.34.tgz";
        sha1 = "125820e34bc842d2f2aaafafe4c2916ee32c157c";
      };
    }

    {
      name = "readable-stream-2.3.6.tgz";
      path = fetchurl {
        name = "readable-stream-2.3.6.tgz";
        url  = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.3.6.tgz";
        sha1 = "b11c27d88b8ff1fbe070643cf94b0c79ae1b0aaf";
      };
    }

    {
      name = "readable-stream-1.1.14.tgz";
      path = fetchurl {
        name = "readable-stream-1.1.14.tgz";
        url  = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-1.1.14.tgz";
        sha1 = "7cf4c54ef648e3813084c636dd2079e166c081d9";
      };
    }

    {
      name = "readable-stream-2.0.6.tgz";
      path = fetchurl {
        name = "readable-stream-2.0.6.tgz";
        url  = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.0.6.tgz";
        sha1 = "8f90341e68a53ccc928788dacfcd11b36eb9b78e";
      };
    }

    {
      name = "readdirp-2.1.0.tgz";
      path = fetchurl {
        name = "readdirp-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/readdirp/-/readdirp-2.1.0.tgz";
        sha1 = "4ed0ad060df3073300c48440373f72d1cc642d78";
      };
    }

    {
      name = "readline2-1.0.1.tgz";
      path = fetchurl {
        name = "readline2-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/readline2/-/readline2-1.0.1.tgz";
        sha1 = "41059608ffc154757b715d9989d199ffbf372e35";
      };
    }

    {
      name = "rechoir-0.6.2.tgz";
      path = fetchurl {
        name = "rechoir-0.6.2.tgz";
        url  = "https://registry.yarnpkg.com/rechoir/-/rechoir-0.6.2.tgz";
        sha1 = "85204b54dba82d5742e28c96756ef43af50e3384";
      };
    }

    {
      name = "redent-1.0.0.tgz";
      path = fetchurl {
        name = "redent-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/redent/-/redent-1.0.0.tgz";
        sha1 = "cf916ab1fd5f1f16dfb20822dd6ec7f730c2afde";
      };
    }

    {
      name = "regex-cache-0.4.4.tgz";
      path = fetchurl {
        name = "regex-cache-0.4.4.tgz";
        url  = "https://registry.yarnpkg.com/regex-cache/-/regex-cache-0.4.4.tgz";
        sha1 = "75bdc58a2a1496cec48a12835bc54c8d562336dd";
      };
    }

    {
      name = "regex-not-1.0.2.tgz";
      path = fetchurl {
        name = "regex-not-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/regex-not/-/regex-not-1.0.2.tgz";
        sha1 = "1f4ece27e00b0b65e0247a6810e6a85d83a5752c";
      };
    }

    {
      name = "regexp.prototype.flags-1.2.0.tgz";
      path = fetchurl {
        name = "regexp.prototype.flags-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/regexp.prototype.flags/-/regexp.prototype.flags-1.2.0.tgz";
        sha1 = "6b30724e306a27833eeb171b66ac8890ba37e41c";
      };
    }

    {
      name = "regexpp-1.1.0.tgz";
      path = fetchurl {
        name = "regexpp-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/regexpp/-/regexpp-1.1.0.tgz";
        sha1 = "0e3516dd0b7904f413d2d4193dce4618c3a689ab";
      };
    }

    {
      name = "relateurl-0.2.7.tgz";
      path = fetchurl {
        name = "relateurl-0.2.7.tgz";
        url  = "https://registry.yarnpkg.com/relateurl/-/relateurl-0.2.7.tgz";
        sha1 = "54dbf377e51440aca90a4cd274600d3ff2d888a9";
      };
    }

    {
      name = "remove-bom-buffer-3.0.0.tgz";
      path = fetchurl {
        name = "remove-bom-buffer-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/remove-bom-buffer/-/remove-bom-buffer-3.0.0.tgz";
        sha1 = "c2bf1e377520d324f623892e33c10cac2c252b53";
      };
    }

    {
      name = "remove-bom-stream-1.2.0.tgz";
      path = fetchurl {
        name = "remove-bom-stream-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/remove-bom-stream/-/remove-bom-stream-1.2.0.tgz";
        sha1 = "05f1a593f16e42e1fb90ebf59de8e569525f9523";
      };
    }

    {
      name = "remove-trailing-separator-1.1.0.tgz";
      path = fetchurl {
        name = "remove-trailing-separator-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/remove-trailing-separator/-/remove-trailing-separator-1.1.0.tgz";
        sha1 = "c24bce2a283adad5bc3f58e0d48249b92379d8ef";
      };
    }

    {
      name = "repeat-element-1.1.2.tgz";
      path = fetchurl {
        name = "repeat-element-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/repeat-element/-/repeat-element-1.1.2.tgz";
        sha1 = "ef089a178d1483baae4d93eb98b4f9e4e11d990a";
      };
    }

    {
      name = "repeat-string-1.6.1.tgz";
      path = fetchurl {
        name = "repeat-string-1.6.1.tgz";
        url  = "https://registry.yarnpkg.com/repeat-string/-/repeat-string-1.6.1.tgz";
        sha1 = "8dcae470e1c88abc2d600fff4a776286da75e637";
      };
    }

    {
      name = "repeating-2.0.1.tgz";
      path = fetchurl {
        name = "repeating-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/repeating/-/repeating-2.0.1.tgz";
        sha1 = "5214c53a926d3552707527fbab415dbc08d06dda";
      };
    }

    {
      name = "replace-ext-0.0.1.tgz";
      path = fetchurl {
        name = "replace-ext-0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/replace-ext/-/replace-ext-0.0.1.tgz";
        sha1 = "29bbd92078a739f0bcce2b4ee41e837953522924";
      };
    }

    {
      name = "replace-ext-1.0.0.tgz";
      path = fetchurl {
        name = "replace-ext-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/replace-ext/-/replace-ext-1.0.0.tgz";
        sha1 = "de63128373fcbf7c3ccfa4de5a480c45a67958eb";
      };
    }

    {
      name = "replace-homedir-1.0.0.tgz";
      path = fetchurl {
        name = "replace-homedir-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/replace-homedir/-/replace-homedir-1.0.0.tgz";
        sha1 = "e87f6d513b928dde808260c12be7fec6ff6e798c";
      };
    }

    {
      name = "request-2.81.0.tgz";
      path = fetchurl {
        name = "request-2.81.0.tgz";
        url  = "https://registry.yarnpkg.com/request/-/request-2.81.0.tgz";
        sha1 = "c6928946a0e06c5f8d6f8a9333469ffda46298a0";
      };
    }

    {
      name = "request-2.79.0.tgz";
      path = fetchurl {
        name = "request-2.79.0.tgz";
        url  = "https://registry.yarnpkg.com/request/-/request-2.79.0.tgz";
        sha1 = "4dfe5bf6be8b8cdc37fcf93e04b65577722710de";
      };
    }

    {
      name = "require-directory-2.1.1.tgz";
      path = fetchurl {
        name = "require-directory-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/require-directory/-/require-directory-2.1.1.tgz";
        sha1 = "8c64ad5fd30dab1c976e2344ffe7f792a6a6df42";
      };
    }

    {
      name = "require-main-filename-1.0.1.tgz";
      path = fetchurl {
        name = "require-main-filename-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/require-main-filename/-/require-main-filename-1.0.1.tgz";
        sha1 = "97f717b69d48784f5f526a6c5aa8ffdda055a4d1";
      };
    }

    {
      name = "require-uncached-1.0.3.tgz";
      path = fetchurl {
        name = "require-uncached-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/require-uncached/-/require-uncached-1.0.3.tgz";
        sha1 = "4e0d56d6c9662fd31e43011c4b95aa49955421d3";
      };
    }

    {
      name = "requirejs-2.3.5.tgz";
      path = fetchurl {
        name = "requirejs-2.3.5.tgz";
        url  = "https://registry.yarnpkg.com/requirejs/-/requirejs-2.3.5.tgz";
        sha1 = "617b9acbbcb336540ef4914d790323a8d4b861b0";
      };
    }

    {
      name = "requires-port-1.0.0.tgz";
      path = fetchurl {
        name = "requires-port-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/requires-port/-/requires-port-1.0.0.tgz";
        sha1 = "925d2601d39ac485e091cf0da5c6e694dc3dcaff";
      };
    }

    {
      name = "resolve-dir-0.1.1.tgz";
      path = fetchurl {
        name = "resolve-dir-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/resolve-dir/-/resolve-dir-0.1.1.tgz";
        sha1 = "b219259a5602fac5c5c496ad894a6e8cc430261e";
      };
    }

    {
      name = "resolve-dir-1.0.1.tgz";
      path = fetchurl {
        name = "resolve-dir-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/resolve-dir/-/resolve-dir-1.0.1.tgz";
        sha1 = "79a40644c362be82f26effe739c9bb5382046f43";
      };
    }

    {
      name = "resolve-from-1.0.1.tgz";
      path = fetchurl {
        name = "resolve-from-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/resolve-from/-/resolve-from-1.0.1.tgz";
        sha1 = "26cbfe935d1aeeeabb29bc3fe5aeb01e93d44226";
      };
    }

    {
      name = "resolve-options-1.1.0.tgz";
      path = fetchurl {
        name = "resolve-options-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/resolve-options/-/resolve-options-1.1.0.tgz";
        sha1 = "32bb9e39c06d67338dc9378c0d6d6074566ad131";
      };
    }

    {
      name = "resolve-url-0.2.1.tgz";
      path = fetchurl {
        name = "resolve-url-0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/resolve-url/-/resolve-url-0.2.1.tgz";
        sha1 = "2c637fe77c893afd2a663fe21aa9080068e2052a";
      };
    }

    {
      name = "resolve-1.8.1.tgz";
      path = fetchurl {
        name = "resolve-1.8.1.tgz";
        url  = "https://registry.yarnpkg.com/resolve/-/resolve-1.8.1.tgz";
        sha1 = "82f1ec19a423ac1fbd080b0bab06ba36e84a7a26";
      };
    }

    {
      name = "resp-modifier-6.0.2.tgz";
      path = fetchurl {
        name = "resp-modifier-6.0.2.tgz";
        url  = "https://registry.yarnpkg.com/resp-modifier/-/resp-modifier-6.0.2.tgz";
        sha1 = "b124de5c4fbafcba541f48ffa73970f4aa456b4f";
      };
    }

    {
      name = "restore-cursor-1.0.1.tgz";
      path = fetchurl {
        name = "restore-cursor-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/restore-cursor/-/restore-cursor-1.0.1.tgz";
        sha1 = "34661f46886327fed2991479152252df92daa541";
      };
    }

    {
      name = "restore-cursor-2.0.0.tgz";
      path = fetchurl {
        name = "restore-cursor-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/restore-cursor/-/restore-cursor-2.0.0.tgz";
        sha1 = "9f7ee287f82fd326d4fd162923d62129eee0dfaf";
      };
    }

    {
      name = "ret-0.1.15.tgz";
      path = fetchurl {
        name = "ret-0.1.15.tgz";
        url  = "https://registry.yarnpkg.com/ret/-/ret-0.1.15.tgz";
        sha1 = "b8a4825d5bdb1fc3f6f53c2bc33f81388681c7bc";
      };
    }

    {
      name = "rfg-api-0.3.0.tgz";
      path = fetchurl {
        name = "rfg-api-0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/rfg-api/-/rfg-api-0.3.0.tgz";
        sha1 = "42745648547f254f35d70edccf7cd3f465d9390a";
      };
    }

    {
      name = "rimraf-2.6.2.tgz";
      path = fetchurl {
        name = "rimraf-2.6.2.tgz";
        url  = "https://registry.yarnpkg.com/rimraf/-/rimraf-2.6.2.tgz";
        sha1 = "2ed8150d24a16ea8651e6d6ef0f47c4158ce7a36";
      };
    }

    {
      name = "run-async-0.1.0.tgz";
      path = fetchurl {
        name = "run-async-0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/run-async/-/run-async-0.1.0.tgz";
        sha1 = "c8ad4a5e110661e402a7d21b530e009f25f8e389";
      };
    }

    {
      name = "run-async-2.3.0.tgz";
      path = fetchurl {
        name = "run-async-2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/run-async/-/run-async-2.3.0.tgz";
        sha1 = "0371ab4ae0bdd720d4166d7dfda64ff7a445a6c0";
      };
    }

    {
      name = "rx-lite-aggregates-4.0.8.tgz";
      path = fetchurl {
        name = "rx-lite-aggregates-4.0.8.tgz";
        url  = "https://registry.yarnpkg.com/rx-lite-aggregates/-/rx-lite-aggregates-4.0.8.tgz";
        sha1 = "753b87a89a11c95467c4ac1626c4efc4e05c67be";
      };
    }

    {
      name = "rx-lite-4.0.8.tgz";
      path = fetchurl {
        name = "rx-lite-4.0.8.tgz";
        url  = "https://registry.yarnpkg.com/rx-lite/-/rx-lite-4.0.8.tgz";
        sha1 = "0b1e11af8bc44836f04a6407e92da42467b79444";
      };
    }

    {
      name = "rx-lite-3.1.2.tgz";
      path = fetchurl {
        name = "rx-lite-3.1.2.tgz";
        url  = "https://registry.yarnpkg.com/rx-lite/-/rx-lite-3.1.2.tgz";
        sha1 = "19ce502ca572665f3b647b10939f97fd1615f102";
      };
    }

    {
      name = "rx-4.1.0.tgz";
      path = fetchurl {
        name = "rx-4.1.0.tgz";
        url  = "https://registry.yarnpkg.com/rx/-/rx-4.1.0.tgz";
        sha1 = "a5f13ff79ef3b740fe30aa803fb09f98805d4782";
      };
    }

    {
      name = "rxjs-5.5.11.tgz";
      path = fetchurl {
        name = "rxjs-5.5.11.tgz";
        url  = "https://registry.yarnpkg.com/rxjs/-/rxjs-5.5.11.tgz";
        sha1 = "f733027ca43e3bec6b994473be4ab98ad43ced87";
      };
    }

    {
      name = "safe-buffer-5.1.2.tgz";
      path = fetchurl {
        name = "safe-buffer-5.1.2.tgz";
        url  = "https://registry.yarnpkg.com/safe-buffer/-/safe-buffer-5.1.2.tgz";
        sha1 = "991ec69d296e0313747d59bdfd2b745c35f8828d";
      };
    }

    {
      name = "safe-regex-1.1.0.tgz";
      path = fetchurl {
        name = "safe-regex-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/safe-regex/-/safe-regex-1.1.0.tgz";
        sha1 = "40a3669f3b077d1e943d44629e157dd48023bf2e";
      };
    }

    {
      name = "safer-buffer-2.1.2.tgz";
      path = fetchurl {
        name = "safer-buffer-2.1.2.tgz";
        url  = "https://registry.yarnpkg.com/safer-buffer/-/safer-buffer-2.1.2.tgz";
        sha1 = "44fa161b0187b9549dd84bb91802f9bd8385cd6a";
      };
    }

    {
      name = "sass-graph-2.2.4.tgz";
      path = fetchurl {
        name = "sass-graph-2.2.4.tgz";
        url  = "https://registry.yarnpkg.com/sass-graph/-/sass-graph-2.2.4.tgz";
        sha1 = "13fbd63cd1caf0908b9fd93476ad43a51d1e0b49";
      };
    }

    {
      name = "sass-lint-1.12.1.tgz";
      path = fetchurl {
        name = "sass-lint-1.12.1.tgz";
        url  = "https://registry.yarnpkg.com/sass-lint/-/sass-lint-1.12.1.tgz";
        sha1 = "630f69c216aa206b8232fb2aa907bdf3336b6d83";
      };
    }

    {
      name = "sax-1.2.4.tgz";
      path = fetchurl {
        name = "sax-1.2.4.tgz";
        url  = "https://registry.yarnpkg.com/sax/-/sax-1.2.4.tgz";
        sha1 = "2816234e2378bddc4e5354fab5caa895df7100d9";
      };
    }

    {
      name = "scss-tokenizer-0.2.3.tgz";
      path = fetchurl {
        name = "scss-tokenizer-0.2.3.tgz";
        url  = "https://registry.yarnpkg.com/scss-tokenizer/-/scss-tokenizer-0.2.3.tgz";
        sha1 = "8eb06db9a9723333824d3f5530641149847ce5d1";
      };
    }

    {
      name = "semver-greatest-satisfied-range-1.1.0.tgz";
      path = fetchurl {
        name = "semver-greatest-satisfied-range-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/semver-greatest-satisfied-range/-/semver-greatest-satisfied-range-1.1.0.tgz";
        sha1 = "13e8c2658ab9691cb0cd71093240280d36f77a5b";
      };
    }

    {
      name = "semver-5.5.0.tgz";
      path = fetchurl {
        name = "semver-5.5.0.tgz";
        url  = "https://registry.yarnpkg.com/semver/-/semver-5.5.0.tgz";
        sha1 = "dc4bbc7a6ca9d916dee5d43516f0092b58f7b8ab";
      };
    }

    {
      name = "semver-5.3.0.tgz";
      path = fetchurl {
        name = "semver-5.3.0.tgz";
        url  = "https://registry.yarnpkg.com/semver/-/semver-5.3.0.tgz";
        sha1 = "9b2ce5d3de02d17c6012ad326aa6b4d0cf54f94f";
      };
    }

    {
      name = "send-0.16.2.tgz";
      path = fetchurl {
        name = "send-0.16.2.tgz";
        url  = "https://registry.yarnpkg.com/send/-/send-0.16.2.tgz";
        sha1 = "6ecca1e0f8c156d141597559848df64730a6bbc1";
      };
    }

    {
      name = "serve-index-1.9.1.tgz";
      path = fetchurl {
        name = "serve-index-1.9.1.tgz";
        url  = "https://registry.yarnpkg.com/serve-index/-/serve-index-1.9.1.tgz";
        sha1 = "d3768d69b1e7d82e5ce050fff5b453bea12a9239";
      };
    }

    {
      name = "serve-static-1.13.2.tgz";
      path = fetchurl {
        name = "serve-static-1.13.2.tgz";
        url  = "https://registry.yarnpkg.com/serve-static/-/serve-static-1.13.2.tgz";
        sha1 = "095e8472fd5b46237db50ce486a43f4b86c6cec1";
      };
    }

    {
      name = "server-destroy-1.0.1.tgz";
      path = fetchurl {
        name = "server-destroy-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/server-destroy/-/server-destroy-1.0.1.tgz";
        sha1 = "f13bf928e42b9c3e79383e61cc3998b5d14e6cdd";
      };
    }

    {
      name = "set-blocking-2.0.0.tgz";
      path = fetchurl {
        name = "set-blocking-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/set-blocking/-/set-blocking-2.0.0.tgz";
        sha1 = "045f9782d011ae9a6803ddd382b24392b3d890f7";
      };
    }

    {
      name = "set-immediate-shim-1.0.1.tgz";
      path = fetchurl {
        name = "set-immediate-shim-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/set-immediate-shim/-/set-immediate-shim-1.0.1.tgz";
        sha1 = "4b2b1b27eb808a9f8dcc481a58e5e56f599f3f61";
      };
    }

    {
      name = "set-value-0.4.3.tgz";
      path = fetchurl {
        name = "set-value-0.4.3.tgz";
        url  = "https://registry.yarnpkg.com/set-value/-/set-value-0.4.3.tgz";
        sha1 = "7db08f9d3d22dc7f78e53af3c3bf4666ecdfccf1";
      };
    }

    {
      name = "set-value-2.0.0.tgz";
      path = fetchurl {
        name = "set-value-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/set-value/-/set-value-2.0.0.tgz";
        sha1 = "71ae4a88f0feefbbf52d1ea604f3fb315ebb6274";
      };
    }

    {
      name = "setimmediate-1.0.5.tgz";
      path = fetchurl {
        name = "setimmediate-1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/setimmediate/-/setimmediate-1.0.5.tgz";
        sha1 = "290cbb232e306942d7d7ea9b83732ab7856f8285";
      };
    }

    {
      name = "setprototypeof-1.1.0.tgz";
      path = fetchurl {
        name = "setprototypeof-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/setprototypeof/-/setprototypeof-1.1.0.tgz";
        sha1 = "d0bd85536887b6fe7c0d818cb962d9d91c54e656";
      };
    }

    {
      name = "shebang-command-1.2.0.tgz";
      path = fetchurl {
        name = "shebang-command-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/shebang-command/-/shebang-command-1.2.0.tgz";
        sha1 = "44aac65b695b03398968c39f363fee5deafdf1ea";
      };
    }

    {
      name = "shebang-regex-1.0.0.tgz";
      path = fetchurl {
        name = "shebang-regex-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/shebang-regex/-/shebang-regex-1.0.0.tgz";
        sha1 = "da42f49740c0b42db2ca9728571cb190c98efea3";
      };
    }

    {
      name = "shelljs-0.6.1.tgz";
      path = fetchurl {
        name = "shelljs-0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/shelljs/-/shelljs-0.6.1.tgz";
        sha1 = "ec6211bed1920442088fe0f70b2837232ed2c8a8";
      };
    }

    {
      name = "signal-exit-3.0.2.tgz";
      path = fetchurl {
        name = "signal-exit-3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/signal-exit/-/signal-exit-3.0.2.tgz";
        sha1 = "b5fdc08f1287ea1178628e415e25132b73646c6d";
      };
    }

    {
      name = "slice-ansi-0.0.4.tgz";
      path = fetchurl {
        name = "slice-ansi-0.0.4.tgz";
        url  = "https://registry.yarnpkg.com/slice-ansi/-/slice-ansi-0.0.4.tgz";
        sha1 = "edbf8903f66f7ce2f8eafd6ceed65e264c831b35";
      };
    }

    {
      name = "slice-ansi-1.0.0.tgz";
      path = fetchurl {
        name = "slice-ansi-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/slice-ansi/-/slice-ansi-1.0.0.tgz";
        sha1 = "044f1a49d8842ff307aad6b505ed178bd950134d";
      };
    }

    {
      name = "slice-stream-1.0.0.tgz";
      path = fetchurl {
        name = "slice-stream-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/slice-stream/-/slice-stream-1.0.0.tgz";
        sha1 = "5b33bd66f013b1a7f86460b03d463dec39ad3ea0";
      };
    }

    {
      name = "snabbdom-0.7.1.tgz";
      path = fetchurl {
        name = "snabbdom-0.7.1.tgz";
        url  = "https://registry.yarnpkg.com/snabbdom/-/snabbdom-0.7.1.tgz";
        sha1 = "c1e9eddfad2c02ebc2cf66aaefb040419d059597";
      };
    }

    {
      name = "snapdragon-node-2.1.1.tgz";
      path = fetchurl {
        name = "snapdragon-node-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/snapdragon-node/-/snapdragon-node-2.1.1.tgz";
        sha1 = "6c175f86ff14bdb0724563e8f3c1b021a286853b";
      };
    }

    {
      name = "snapdragon-util-3.0.1.tgz";
      path = fetchurl {
        name = "snapdragon-util-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/snapdragon-util/-/snapdragon-util-3.0.1.tgz";
        sha1 = "f956479486f2acd79700693f6f7b805e45ab56e2";
      };
    }

    {
      name = "snapdragon-0.8.2.tgz";
      path = fetchurl {
        name = "snapdragon-0.8.2.tgz";
        url  = "https://registry.yarnpkg.com/snapdragon/-/snapdragon-0.8.2.tgz";
        sha1 = "64922e7c565b0e14204ba1aa7d6964278d25182d";
      };
    }

    {
      name = "sntp-1.0.9.tgz";
      path = fetchurl {
        name = "sntp-1.0.9.tgz";
        url  = "https://registry.yarnpkg.com/sntp/-/sntp-1.0.9.tgz";
        sha1 = "6541184cc90aeea6c6e7b35e2659082443c66198";
      };
    }

    {
      name = "socket.io-adapter-1.1.1.tgz";
      path = fetchurl {
        name = "socket.io-adapter-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/socket.io-adapter/-/socket.io-adapter-1.1.1.tgz";
        sha1 = "2a805e8a14d6372124dd9159ad4502f8cb07f06b";
      };
    }

    {
      name = "socket.io-client-2.0.4.tgz";
      path = fetchurl {
        name = "socket.io-client-2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/socket.io-client/-/socket.io-client-2.0.4.tgz";
        sha1 = "0918a552406dc5e540b380dcd97afc4a64332f8e";
      };
    }

    {
      name = "socket.io-client-2.1.1.tgz";
      path = fetchurl {
        name = "socket.io-client-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/socket.io-client/-/socket.io-client-2.1.1.tgz";
        sha1 = "dcb38103436ab4578ddb026638ae2f21b623671f";
      };
    }

    {
      name = "socket.io-parser-3.1.3.tgz";
      path = fetchurl {
        name = "socket.io-parser-3.1.3.tgz";
        url  = "https://registry.yarnpkg.com/socket.io-parser/-/socket.io-parser-3.1.3.tgz";
        sha1 = "ed2da5ee79f10955036e3da413bfd7f1e4d86c8e";
      };
    }

    {
      name = "socket.io-parser-3.2.0.tgz";
      path = fetchurl {
        name = "socket.io-parser-3.2.0.tgz";
        url  = "https://registry.yarnpkg.com/socket.io-parser/-/socket.io-parser-3.2.0.tgz";
        sha1 = "e7c6228b6aa1f814e6148aea325b51aa9499e077";
      };
    }

    {
      name = "socket.io-2.1.1.tgz";
      path = fetchurl {
        name = "socket.io-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/socket.io/-/socket.io-2.1.1.tgz";
        sha1 = "a069c5feabee3e6b214a75b40ce0652e1cfb9980";
      };
    }

    {
      name = "source-map-resolve-0.5.2.tgz";
      path = fetchurl {
        name = "source-map-resolve-0.5.2.tgz";
        url  = "https://registry.yarnpkg.com/source-map-resolve/-/source-map-resolve-0.5.2.tgz";
        sha1 = "72e2cc34095543e43b2c62b2c4c10d4a9054f259";
      };
    }

    {
      name = "source-map-url-0.4.0.tgz";
      path = fetchurl {
        name = "source-map-url-0.4.0.tgz";
        url  = "https://registry.yarnpkg.com/source-map-url/-/source-map-url-0.4.0.tgz";
        sha1 = "3e935d7ddd73631b97659956d55128e87b5084a3";
      };
    }

    {
      name = "source-map-0.5.7.tgz";
      path = fetchurl {
        name = "source-map-0.5.7.tgz";
        url  = "https://registry.yarnpkg.com/source-map/-/source-map-0.5.7.tgz";
        sha1 = "8a039d2d1021d22d1ea14c80d8ea468ba2ef3fcc";
      };
    }

    {
      name = "source-map-0.1.43.tgz";
      path = fetchurl {
        name = "source-map-0.1.43.tgz";
        url  = "https://registry.yarnpkg.com/source-map/-/source-map-0.1.43.tgz";
        sha1 = "c24bc146ca517c1471f5dacbe2571b2b7f9e3346";
      };
    }

    {
      name = "source-map-0.4.4.tgz";
      path = fetchurl {
        name = "source-map-0.4.4.tgz";
        url  = "https://registry.yarnpkg.com/source-map/-/source-map-0.4.4.tgz";
        sha1 = "eba4f5da9c0dc999de68032d8b4f76173652036b";
      };
    }

    {
      name = "source-map-0.6.1.tgz";
      path = fetchurl {
        name = "source-map-0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/source-map/-/source-map-0.6.1.tgz";
        sha1 = "74722af32e9614e9c287a8d0bbde48b5e2f1a263";
      };
    }

    {
      name = "sparkles-1.0.1.tgz";
      path = fetchurl {
        name = "sparkles-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/sparkles/-/sparkles-1.0.1.tgz";
        sha1 = "008db65edce6c50eec0c5e228e1945061dd0437c";
      };
    }

    {
      name = "spdx-correct-3.0.0.tgz";
      path = fetchurl {
        name = "spdx-correct-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/spdx-correct/-/spdx-correct-3.0.0.tgz";
        sha1 = "05a5b4d7153a195bc92c3c425b69f3b2a9524c82";
      };
    }

    {
      name = "spdx-exceptions-2.1.0.tgz";
      path = fetchurl {
        name = "spdx-exceptions-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/spdx-exceptions/-/spdx-exceptions-2.1.0.tgz";
        sha1 = "2c7ae61056c714a5b9b9b2b2af7d311ef5c78fe9";
      };
    }

    {
      name = "spdx-expression-parse-3.0.0.tgz";
      path = fetchurl {
        name = "spdx-expression-parse-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/spdx-expression-parse/-/spdx-expression-parse-3.0.0.tgz";
        sha1 = "99e119b7a5da00e05491c9fa338b7904823b41d0";
      };
    }

    {
      name = "spdx-license-ids-3.0.0.tgz";
      path = fetchurl {
        name = "spdx-license-ids-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/spdx-license-ids/-/spdx-license-ids-3.0.0.tgz";
        sha1 = "7a7cd28470cc6d3a1cfe6d66886f6bc430d3ac87";
      };
    }

    {
      name = "split-string-1.0.1.tgz";
      path = fetchurl {
        name = "split-string-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/split-string/-/split-string-1.0.1.tgz";
        sha1 = "bcbab3f4152acee3a0d6ab2479c0d2879c3db3ce";
      };
    }

    {
      name = "split-string-3.1.0.tgz";
      path = fetchurl {
        name = "split-string-3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/split-string/-/split-string-3.1.0.tgz";
        sha1 = "7cb09dda3a86585705c64b39a6466038682e8fe2";
      };
    }

    {
      name = "split-0.3.3.tgz";
      path = fetchurl {
        name = "split-0.3.3.tgz";
        url  = "https://registry.yarnpkg.com/split/-/split-0.3.3.tgz";
        sha1 = "cd0eea5e63a211dfff7eb0f091c4133e2d0dd28f";
      };
    }

    {
      name = "sprintf-js-1.0.3.tgz";
      path = fetchurl {
        name = "sprintf-js-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/sprintf-js/-/sprintf-js-1.0.3.tgz";
        sha1 = "04e6926f662895354f3dd015203633b857297e2c";
      };
    }

    {
      name = "sshpk-1.14.2.tgz";
      path = fetchurl {
        name = "sshpk-1.14.2.tgz";
        url  = "https://registry.yarnpkg.com/sshpk/-/sshpk-1.14.2.tgz";
        sha1 = "c6fc61648a3d9c4e764fd3fcdf4ea105e492ba98";
      };
    }

    {
      name = "stack-trace-0.0.10.tgz";
      path = fetchurl {
        name = "stack-trace-0.0.10.tgz";
        url  = "https://registry.yarnpkg.com/stack-trace/-/stack-trace-0.0.10.tgz";
        sha1 = "547c70b347e8d32b4e108ea1a2a159e5fdde19c0";
      };
    }

    {
      name = "static-extend-0.1.2.tgz";
      path = fetchurl {
        name = "static-extend-0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/static-extend/-/static-extend-0.1.2.tgz";
        sha1 = "60809c39cbff55337226fd5e0b520f341f1fb5c6";
      };
    }

    {
      name = "statuses-1.5.0.tgz";
      path = fetchurl {
        name = "statuses-1.5.0.tgz";
        url  = "https://registry.yarnpkg.com/statuses/-/statuses-1.5.0.tgz";
        sha1 = "161c7dac177659fd9811f43771fa99381478628c";
      };
    }

    {
      name = "statuses-1.3.1.tgz";
      path = fetchurl {
        name = "statuses-1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/statuses/-/statuses-1.3.1.tgz";
        sha1 = "faf51b9eb74aaef3b3acf4ad5f61abf24cb7b93e";
      };
    }

    {
      name = "statuses-1.4.0.tgz";
      path = fetchurl {
        name = "statuses-1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/statuses/-/statuses-1.4.0.tgz";
        sha1 = "bb73d446da2796106efcc1b601a253d6c46bd087";
      };
    }

    {
      name = "stdout-stream-1.4.0.tgz";
      path = fetchurl {
        name = "stdout-stream-1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/stdout-stream/-/stdout-stream-1.4.0.tgz";
        sha1 = "a2c7c8587e54d9427ea9edb3ac3f2cd522df378b";
      };
    }

    {
      name = "stream-combiner-0.0.4.tgz";
      path = fetchurl {
        name = "stream-combiner-0.0.4.tgz";
        url  = "https://registry.yarnpkg.com/stream-combiner/-/stream-combiner-0.0.4.tgz";
        sha1 = "4d5e433c185261dde623ca3f44c586bcf5c4ad14";
      };
    }

    {
      name = "stream-exhaust-1.0.2.tgz";
      path = fetchurl {
        name = "stream-exhaust-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/stream-exhaust/-/stream-exhaust-1.0.2.tgz";
        sha1 = "acdac8da59ef2bc1e17a2c0ccf6c320d120e555d";
      };
    }

    {
      name = "stream-shift-1.0.0.tgz";
      path = fetchurl {
        name = "stream-shift-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/stream-shift/-/stream-shift-1.0.0.tgz";
        sha1 = "d5c752825e5367e786f78e18e445ea223a155952";
      };
    }

    {
      name = "stream-throttle-0.1.3.tgz";
      path = fetchurl {
        name = "stream-throttle-0.1.3.tgz";
        url  = "https://registry.yarnpkg.com/stream-throttle/-/stream-throttle-0.1.3.tgz";
        sha1 = "add57c8d7cc73a81630d31cd55d3961cfafba9c3";
      };
    }

    {
      name = "stream-to-array-2.3.0.tgz";
      path = fetchurl {
        name = "stream-to-array-2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/stream-to-array/-/stream-to-array-2.3.0.tgz";
        sha1 = "bbf6b39f5f43ec30bc71babcb37557acecf34353";
      };
    }

    {
      name = "string-width-1.0.2.tgz";
      path = fetchurl {
        name = "string-width-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/string-width/-/string-width-1.0.2.tgz";
        sha1 = "118bdf5b8cdc51a2a7e70d211e07e2b0b9b107d3";
      };
    }

    {
      name = "string-width-2.1.1.tgz";
      path = fetchurl {
        name = "string-width-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/string-width/-/string-width-2.1.1.tgz";
        sha1 = "ab93f27a8dc13d28cac815c462143a6d9012ae9e";
      };
    }

    {
      name = "string.prototype.matchall-2.0.0.tgz";
      path = fetchurl {
        name = "string.prototype.matchall-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/string.prototype.matchall/-/string.prototype.matchall-2.0.0.tgz";
        sha1 = "2af8fe3d2d6dc53ca2a59bd376b089c3c152b3c8";
      };
    }

    {
      name = "string.prototype.trim-1.1.2.tgz";
      path = fetchurl {
        name = "string.prototype.trim-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/string.prototype.trim/-/string.prototype.trim-1.1.2.tgz";
        sha1 = "d04de2c89e137f4d7d206f086b5ed2fae6be8cea";
      };
    }

    {
      name = "string_decoder-0.10.31.tgz";
      path = fetchurl {
        name = "string_decoder-0.10.31.tgz";
        url  = "https://registry.yarnpkg.com/string_decoder/-/string_decoder-0.10.31.tgz";
        sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
      };
    }

    {
      name = "string_decoder-1.1.1.tgz";
      path = fetchurl {
        name = "string_decoder-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/string_decoder/-/string_decoder-1.1.1.tgz";
        sha1 = "9cf1611ba62685d7030ae9e4ba34149c3af03fc8";
      };
    }

    {
      name = "stringstream-0.0.6.tgz";
      path = fetchurl {
        name = "stringstream-0.0.6.tgz";
        url  = "https://registry.yarnpkg.com/stringstream/-/stringstream-0.0.6.tgz";
        sha1 = "7880225b0d4ad10e30927d167a1d6f2fd3b33a72";
      };
    }

    {
      name = "strip-ansi-3.0.1.tgz";
      path = fetchurl {
        name = "strip-ansi-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-3.0.1.tgz";
        sha1 = "6a385fb8853d952d5ff05d0e8aaf94278dc63dcf";
      };
    }

    {
      name = "strip-ansi-4.0.0.tgz";
      path = fetchurl {
        name = "strip-ansi-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-4.0.0.tgz";
        sha1 = "a8479022eb1ac368a871389b635262c505ee368f";
      };
    }

    {
      name = "strip-bom-string-1.0.0.tgz";
      path = fetchurl {
        name = "strip-bom-string-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/strip-bom-string/-/strip-bom-string-1.0.0.tgz";
        sha1 = "e5211e9224369fbb81d633a2f00044dc8cedad92";
      };
    }

    {
      name = "strip-bom-2.0.0.tgz";
      path = fetchurl {
        name = "strip-bom-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/strip-bom/-/strip-bom-2.0.0.tgz";
        sha1 = "6219a85616520491f35788bdbf1447a99c7e6b0e";
      };
    }

    {
      name = "strip-indent-1.0.1.tgz";
      path = fetchurl {
        name = "strip-indent-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/strip-indent/-/strip-indent-1.0.1.tgz";
        sha1 = "0c7962a6adefa7bbd4ac366460a638552ae1a0a2";
      };
    }

    {
      name = "strip-json-comments-1.0.2.tgz";
      path = fetchurl {
        name = "strip-json-comments-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/strip-json-comments/-/strip-json-comments-1.0.2.tgz";
        sha1 = "5a48ab96023dbac1b7b8d0ffabf6f63f1677be9f";
      };
    }

    {
      name = "strip-json-comments-2.0.1.tgz";
      path = fetchurl {
        name = "strip-json-comments-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/strip-json-comments/-/strip-json-comments-2.0.1.tgz";
        sha1 = "3c531942e908c2697c0ec344858c286c7ca0a60a";
      };
    }

    {
      name = "strip-json-comments-1.0.4.tgz";
      path = fetchurl {
        name = "strip-json-comments-1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/strip-json-comments/-/strip-json-comments-1.0.4.tgz";
        sha1 = "1e15fbcac97d3ee99bf2d73b4c656b082bbafb91";
      };
    }

    {
      name = "supports-color-2.0.0.tgz";
      path = fetchurl {
        name = "supports-color-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/supports-color/-/supports-color-2.0.0.tgz";
        sha1 = "535d045ce6b6363fa40117084629995e9df324c7";
      };
    }

    {
      name = "supports-color-5.4.0.tgz";
      path = fetchurl {
        name = "supports-color-5.4.0.tgz";
        url  = "https://registry.yarnpkg.com/supports-color/-/supports-color-5.4.0.tgz";
        sha1 = "1c6b337402c2137605efe19f10fec390f6faab54";
      };
    }

    {
      name = "sver-compat-1.5.0.tgz";
      path = fetchurl {
        name = "sver-compat-1.5.0.tgz";
        url  = "https://registry.yarnpkg.com/sver-compat/-/sver-compat-1.5.0.tgz";
        sha1 = "3cf87dfeb4d07b4a3f14827bc186b3fd0c645cd8";
      };
    }

    {
      name = "svgo-0.7.2.tgz";
      path = fetchurl {
        name = "svgo-0.7.2.tgz";
        url  = "https://registry.yarnpkg.com/svgo/-/svgo-0.7.2.tgz";
        sha1 = "9f5772413952135c6fefbf40afe6a4faa88b4bb5";
      };
    }

    {
      name = "symbol-observable-1.0.1.tgz";
      path = fetchurl {
        name = "symbol-observable-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/symbol-observable/-/symbol-observable-1.0.1.tgz";
        sha1 = "8340fc4702c3122df5d22288f88283f513d3fdd4";
      };
    }

    {
      name = "table-4.0.2.tgz";
      path = fetchurl {
        name = "table-4.0.2.tgz";
        url  = "https://registry.yarnpkg.com/table/-/table-4.0.2.tgz";
        sha1 = "a33447375391e766ad34d3486e6e2aedc84d2e36";
      };
    }

    {
      name = "table-3.8.3.tgz";
      path = fetchurl {
        name = "table-3.8.3.tgz";
        url  = "https://registry.yarnpkg.com/table/-/table-3.8.3.tgz";
        sha1 = "2bbc542f0fda9861a755d3947fefd8b3f513855f";
      };
    }

    {
      name = "table-4.0.3.tgz";
      path = fetchurl {
        name = "table-4.0.3.tgz";
        url  = "https://registry.yarnpkg.com/table/-/table-4.0.3.tgz";
        sha1 = "00b5e2b602f1794b9acaf9ca908a76386a7813bc";
      };
    }

    {
      name = "tar-2.2.1.tgz";
      path = fetchurl {
        name = "tar-2.2.1.tgz";
        url  = "https://registry.yarnpkg.com/tar/-/tar-2.2.1.tgz";
        sha1 = "8e4d2a256c0e2185c6b18ad694aec968b83cb1d1";
      };
    }

    {
      name = "tar-4.4.4.tgz";
      path = fetchurl {
        name = "tar-4.4.4.tgz";
        url  = "https://registry.yarnpkg.com/tar/-/tar-4.4.4.tgz";
        sha1 = "ec8409fae9f665a4355cc3b4087d0820232bb8cd";
      };
    }

    {
      name = "temp-write-2.1.0.tgz";
      path = fetchurl {
        name = "temp-write-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/temp-write/-/temp-write-2.1.0.tgz";
        sha1 = "59890918e0ef09d548aaa342f4bd3409d8404e96";
      };
    }

    {
      name = "ternary-stream-2.0.1.tgz";
      path = fetchurl {
        name = "ternary-stream-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/ternary-stream/-/ternary-stream-2.0.1.tgz";
        sha1 = "064e489b4b5bf60ba6a6b7bc7f2f5c274ecf8269";
      };
    }

    {
      name = "text-table-0.2.0.tgz";
      path = fetchurl {
        name = "text-table-0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/text-table/-/text-table-0.2.0.tgz";
        sha1 = "7f5ee823ae805207c00af2df4a84ec3fcfa570b4";
      };
    }

    {
      name = "tfunk-3.1.0.tgz";
      path = fetchurl {
        name = "tfunk-3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/tfunk/-/tfunk-3.1.0.tgz";
        sha1 = "38e4414fc64977d87afdaa72facb6d29f82f7b5b";
      };
    }

    {
      name = "through2-filter-2.0.0.tgz";
      path = fetchurl {
        name = "through2-filter-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/through2-filter/-/through2-filter-2.0.0.tgz";
        sha1 = "60bc55a0dacb76085db1f9dae99ab43f83d622ec";
      };
    }

    {
      name = "through2-2.0.1.tgz";
      path = fetchurl {
        name = "through2-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/through2/-/through2-2.0.1.tgz";
        sha1 = "384e75314d49f32de12eebb8136b8eb6b5d59da9";
      };
    }

    {
      name = "through2-2.0.3.tgz";
      path = fetchurl {
        name = "through2-2.0.3.tgz";
        url  = "https://registry.yarnpkg.com/through2/-/through2-2.0.3.tgz";
        sha1 = "0004569b37c7c74ba39c43f3ced78d1ad94140be";
      };
    }

    {
      name = "through2-0.6.5.tgz";
      path = fetchurl {
        name = "through2-0.6.5.tgz";
        url  = "https://registry.yarnpkg.com/through2/-/through2-0.6.5.tgz";
        sha1 = "41ab9c67b29d57209071410e1d7a7a968cd3ad48";
      };
    }

    {
      name = "through-2.3.8.tgz";
      path = fetchurl {
        name = "through-2.3.8.tgz";
        url  = "https://registry.yarnpkg.com/through/-/through-2.3.8.tgz";
        sha1 = "0dd4c9ffaabc357960b1b724115d7e0e86a2e1f5";
      };
    }

    {
      name = "time-stamp-1.1.0.tgz";
      path = fetchurl {
        name = "time-stamp-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/time-stamp/-/time-stamp-1.1.0.tgz";
        sha1 = "764a5a11af50561921b133f3b44e618687e0f5c3";
      };
    }

    {
      name = "timers-ext-0.1.5.tgz";
      path = fetchurl {
        name = "timers-ext-0.1.5.tgz";
        url  = "https://registry.yarnpkg.com/timers-ext/-/timers-ext-0.1.5.tgz";
        sha1 = "77147dd4e76b660c2abb8785db96574cbbd12922";
      };
    }

    {
      name = "tmp-0.0.33.tgz";
      path = fetchurl {
        name = "tmp-0.0.33.tgz";
        url  = "https://registry.yarnpkg.com/tmp/-/tmp-0.0.33.tgz";
        sha1 = "6d34335889768d21b2bcda0aa277ced3b1bfadf9";
      };
    }

    {
      name = "to-absolute-glob-2.0.2.tgz";
      path = fetchurl {
        name = "to-absolute-glob-2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/to-absolute-glob/-/to-absolute-glob-2.0.2.tgz";
        sha1 = "1865f43d9e74b0822db9f145b78cff7d0f7c849b";
      };
    }

    {
      name = "to-array-0.1.4.tgz";
      path = fetchurl {
        name = "to-array-0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/to-array/-/to-array-0.1.4.tgz";
        sha1 = "17e6c11f73dd4f3d74cda7a4ff3238e9ad9bf890";
      };
    }

    {
      name = "to-fast-properties-2.0.0.tgz";
      path = fetchurl {
        name = "to-fast-properties-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/to-fast-properties/-/to-fast-properties-2.0.0.tgz";
        sha1 = "dc5e698cbd079265bc73e0377681a4e4e83f616e";
      };
    }

    {
      name = "to-object-path-0.3.0.tgz";
      path = fetchurl {
        name = "to-object-path-0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/to-object-path/-/to-object-path-0.3.0.tgz";
        sha1 = "297588b7b0e7e0ac08e04e672f85c1f4999e17af";
      };
    }

    {
      name = "to-regex-range-2.1.1.tgz";
      path = fetchurl {
        name = "to-regex-range-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/to-regex-range/-/to-regex-range-2.1.1.tgz";
        sha1 = "7c80c17b9dfebe599e27367e0d4dd5590141db38";
      };
    }

    {
      name = "to-regex-3.0.2.tgz";
      path = fetchurl {
        name = "to-regex-3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/to-regex/-/to-regex-3.0.2.tgz";
        sha1 = "13cfdd9b336552f30b51f33a8ae1b42a7a7599ce";
      };
    }

    {
      name = "to-through-2.0.0.tgz";
      path = fetchurl {
        name = "to-through-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/to-through/-/to-through-2.0.0.tgz";
        sha1 = "fc92adaba072647bc0b67d6b03664aa195093af6";
      };
    }

    {
      name = "tough-cookie-2.3.4.tgz";
      path = fetchurl {
        name = "tough-cookie-2.3.4.tgz";
        url  = "https://registry.yarnpkg.com/tough-cookie/-/tough-cookie-2.3.4.tgz";
        sha1 = "ec60cee38ac675063ffc97a5c18970578ee83655";
      };
    }

    {
      name = "traverse-0.3.9.tgz";
      path = fetchurl {
        name = "traverse-0.3.9.tgz";
        url  = "https://registry.yarnpkg.com/traverse/-/traverse-0.3.9.tgz";
        sha1 = "717b8f220cc0bb7b44e40514c22b2e8bbc70d8b9";
      };
    }

    {
      name = "trim-newlines-1.0.0.tgz";
      path = fetchurl {
        name = "trim-newlines-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/trim-newlines/-/trim-newlines-1.0.0.tgz";
        sha1 = "5887966bb582a4503a41eb524f7d35011815a613";
      };
    }

    {
      name = "trim-right-1.0.1.tgz";
      path = fetchurl {
        name = "trim-right-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/trim-right/-/trim-right-1.0.1.tgz";
        sha1 = "cb2e1203067e0c8de1f614094b9fe45704ea6003";
      };
    }

    {
      name = "true-case-path-1.0.2.tgz";
      path = fetchurl {
        name = "true-case-path-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/true-case-path/-/true-case-path-1.0.2.tgz";
        sha1 = "7ec91130924766c7f573be3020c34f8fdfd00d62";
      };
    }

    {
      name = "tryit-1.0.3.tgz";
      path = fetchurl {
        name = "tryit-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/tryit/-/tryit-1.0.3.tgz";
        sha1 = "393be730a9446fd1ead6da59a014308f36c289cb";
      };
    }

    {
      name = "tunnel-agent-0.6.0.tgz";
      path = fetchurl {
        name = "tunnel-agent-0.6.0.tgz";
        url  = "https://registry.yarnpkg.com/tunnel-agent/-/tunnel-agent-0.6.0.tgz";
        sha1 = "27a5dea06b36b04a0a9966774b290868f0fc40fd";
      };
    }

    {
      name = "tunnel-agent-0.4.3.tgz";
      path = fetchurl {
        name = "tunnel-agent-0.4.3.tgz";
        url  = "https://registry.yarnpkg.com/tunnel-agent/-/tunnel-agent-0.4.3.tgz";
        sha1 = "6373db76909fe570e08d73583365ed828a74eeeb";
      };
    }

    {
      name = "tweetnacl-0.14.5.tgz";
      path = fetchurl {
        name = "tweetnacl-0.14.5.tgz";
        url  = "https://registry.yarnpkg.com/tweetnacl/-/tweetnacl-0.14.5.tgz";
        sha1 = "5ae68177f192d4456269d108afa93ff8743f4f64";
      };
    }

    {
      name = "type-check-0.3.2.tgz";
      path = fetchurl {
        name = "type-check-0.3.2.tgz";
        url  = "https://registry.yarnpkg.com/type-check/-/type-check-0.3.2.tgz";
        sha1 = "5884cab512cf1d355e3fb784f30804b2b520db72";
      };
    }

    {
      name = "typedarray-0.0.6.tgz";
      path = fetchurl {
        name = "typedarray-0.0.6.tgz";
        url  = "https://registry.yarnpkg.com/typedarray/-/typedarray-0.0.6.tgz";
        sha1 = "867ac74e3864187b1d3d47d996a78ec5c8830777";
      };
    }

    {
      name = "ua-parser-js-0.7.17.tgz";
      path = fetchurl {
        name = "ua-parser-js-0.7.17.tgz";
        url  = "https://registry.yarnpkg.com/ua-parser-js/-/ua-parser-js-0.7.17.tgz";
        sha1 = "e9ec5f9498b9ec910e7ae3ac626a805c4d09ecac";
      };
    }

    {
      name = "uglify-js-3.3.28.tgz";
      path = fetchurl {
        name = "uglify-js-3.3.28.tgz";
        url  = "https://registry.yarnpkg.com/uglify-js/-/uglify-js-3.3.28.tgz";
        sha1 = "0efb9a13850e11303361c1051f64d2ec68d9be06";
      };
    }

    {
      name = "uglify-js-3.4.1.tgz";
      path = fetchurl {
        name = "uglify-js-3.4.1.tgz";
        url  = "https://registry.yarnpkg.com/uglify-js/-/uglify-js-3.4.1.tgz";
        sha1 = "006da540dc25e9319d106a99a5ef1d24ae04ce60";
      };
    }

    {
      name = "ultron-1.1.1.tgz";
      path = fetchurl {
        name = "ultron-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ultron/-/ultron-1.1.1.tgz";
        sha1 = "9fe1536a10a664a65266a1e3ccf85fd36302bc9c";
      };
    }

    {
      name = "unc-path-regex-0.1.2.tgz";
      path = fetchurl {
        name = "unc-path-regex-0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/unc-path-regex/-/unc-path-regex-0.1.2.tgz";
        sha1 = "e73dd3d7b0d7c5ed86fbac6b0ae7d8c6a69d50fa";
      };
    }

    {
      name = "underscore-1.9.1.tgz";
      path = fetchurl {
        name = "underscore-1.9.1.tgz";
        url  = "https://registry.yarnpkg.com/underscore/-/underscore-1.9.1.tgz";
        sha1 = "06dce34a0e68a7babc29b365b8e74b8925203961";
      };
    }

    {
      name = "undertaker-registry-1.0.1.tgz";
      path = fetchurl {
        name = "undertaker-registry-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/undertaker-registry/-/undertaker-registry-1.0.1.tgz";
        sha1 = "5e4bda308e4a8a2ae584f9b9a4359a499825cc50";
      };
    }

    {
      name = "undertaker-1.2.0.tgz";
      path = fetchurl {
        name = "undertaker-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/undertaker/-/undertaker-1.2.0.tgz";
        sha1 = "339da4646252d082dc378e708067299750e11b49";
      };
    }

    {
      name = "union-value-0.2.4.tgz";
      path = fetchurl {
        name = "union-value-0.2.4.tgz";
        url  = "https://registry.yarnpkg.com/union-value/-/union-value-0.2.4.tgz";
        sha1 = "7375152786679057e7b37aa676e83468fc0274f0";
      };
    }

    {
      name = "union-value-1.0.0.tgz";
      path = fetchurl {
        name = "union-value-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/union-value/-/union-value-1.0.0.tgz";
        sha1 = "5c71c34cb5bad5dcebe3ea0cd08207ba5aa1aea4";
      };
    }

    {
      name = "unique-stream-2.2.1.tgz";
      path = fetchurl {
        name = "unique-stream-2.2.1.tgz";
        url  = "https://registry.yarnpkg.com/unique-stream/-/unique-stream-2.2.1.tgz";
        sha1 = "5aa003cfbe94c5ff866c4e7d668bb1c4dbadb369";
      };
    }

    {
      name = "universalify-0.1.2.tgz";
      path = fetchurl {
        name = "universalify-0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/universalify/-/universalify-0.1.2.tgz";
        sha1 = "b646f69be3942dabcecc9d6639c80dc105efaa66";
      };
    }

    {
      name = "unpipe-1.0.0.tgz";
      path = fetchurl {
        name = "unpipe-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/unpipe/-/unpipe-1.0.0.tgz";
        sha1 = "b2bf4ee8514aae6165b4817829d21b2ef49904ec";
      };
    }

    {
      name = "unset-value-1.0.0.tgz";
      path = fetchurl {
        name = "unset-value-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/unset-value/-/unset-value-1.0.0.tgz";
        sha1 = "8376873f7d2335179ffb1e6fc3a8ed0dfc8ab559";
      };
    }

    {
      name = "unzip2-0.2.5.tgz";
      path = fetchurl {
        name = "unzip2-0.2.5.tgz";
        url  = "https://registry.yarnpkg.com/unzip2/-/unzip2-0.2.5.tgz";
        sha1 = "4ef7a579a78c15c51f550f6a053db194149c8992";
      };
    }

    {
      name = "upper-case-1.1.3.tgz";
      path = fetchurl {
        name = "upper-case-1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/upper-case/-/upper-case-1.1.3.tgz";
        sha1 = "f6b4501c2ec4cdd26ba78be7222961de77621598";
      };
    }

    {
      name = "uri-js-4.2.2.tgz";
      path = fetchurl {
        name = "uri-js-4.2.2.tgz";
        url  = "https://registry.yarnpkg.com/uri-js/-/uri-js-4.2.2.tgz";
        sha1 = "94c540e1ff772956e2299507c010aea6c8838eb0";
      };
    }

    {
      name = "urix-0.1.0.tgz";
      path = fetchurl {
        name = "urix-0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/urix/-/urix-0.1.0.tgz";
        sha1 = "da937f7a62e21fec1fd18d49b35c2935067a6c72";
      };
    }

    {
      name = "use-3.1.0.tgz";
      path = fetchurl {
        name = "use-3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/use/-/use-3.1.0.tgz";
        sha1 = "14716bf03fdfefd03040aef58d8b4b85f3a7c544";
      };
    }

    {
      name = "user-home-2.0.0.tgz";
      path = fetchurl {
        name = "user-home-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/user-home/-/user-home-2.0.0.tgz";
        sha1 = "9c70bfd8169bc1dcbf48604e0f04b8b49cde9e9f";
      };
    }

    {
      name = "util-deprecate-1.0.2.tgz";
      path = fetchurl {
        name = "util-deprecate-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/util-deprecate/-/util-deprecate-1.0.2.tgz";
        sha1 = "450d4dc9fa70de732762fbd2d4a28981419a0ccf";
      };
    }

    {
      name = "util-0.10.4.tgz";
      path = fetchurl {
        name = "util-0.10.4.tgz";
        url  = "https://registry.yarnpkg.com/util/-/util-0.10.4.tgz";
        sha1 = "3aa0125bfe668a4672de58857d3ace27ecb76901";
      };
    }

    {
      name = "utils-merge-1.0.1.tgz";
      path = fetchurl {
        name = "utils-merge-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/utils-merge/-/utils-merge-1.0.1.tgz";
        sha1 = "9f95710f50a267947b2ccc124741c1028427e713";
      };
    }

    {
      name = "uuid-2.0.3.tgz";
      path = fetchurl {
        name = "uuid-2.0.3.tgz";
        url  = "https://registry.yarnpkg.com/uuid/-/uuid-2.0.3.tgz";
        sha1 = "67e2e863797215530dff318e5bf9dcebfd47b21a";
      };
    }

    {
      name = "uuid-3.2.1.tgz";
      path = fetchurl {
        name = "uuid-3.2.1.tgz";
        url  = "https://registry.yarnpkg.com/uuid/-/uuid-3.2.1.tgz";
        sha1 = "12c528bb9d58d0b9265d9a2f6f0fe8be17ff1f14";
      };
    }

    {
      name = "v8flags-3.1.1.tgz";
      path = fetchurl {
        name = "v8flags-3.1.1.tgz";
        url  = "https://registry.yarnpkg.com/v8flags/-/v8flags-3.1.1.tgz";
        sha1 = "42259a1461c08397e37fe1d4f1cfb59cad85a053";
      };
    }

    {
      name = "validate-npm-package-license-3.0.3.tgz";
      path = fetchurl {
        name = "validate-npm-package-license-3.0.3.tgz";
        url  = "https://registry.yarnpkg.com/validate-npm-package-license/-/validate-npm-package-license-3.0.3.tgz";
        sha1 = "81643bcbef1bdfecd4623793dc4648948ba98338";
      };
    }

    {
      name = "value-or-function-3.0.0.tgz";
      path = fetchurl {
        name = "value-or-function-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/value-or-function/-/value-or-function-3.0.0.tgz";
        sha1 = "1c243a50b595c1be54a754bfece8563b9ff8d813";
      };
    }

    {
      name = "verror-1.10.0.tgz";
      path = fetchurl {
        name = "verror-1.10.0.tgz";
        url  = "https://registry.yarnpkg.com/verror/-/verror-1.10.0.tgz";
        sha1 = "3a105ca17053af55d6e270c1f8288682e18da400";
      };
    }

    {
      name = "vinyl-fs-3.0.3.tgz";
      path = fetchurl {
        name = "vinyl-fs-3.0.3.tgz";
        url  = "https://registry.yarnpkg.com/vinyl-fs/-/vinyl-fs-3.0.3.tgz";
        sha1 = "c85849405f67428feabbbd5c5dbdd64f47d31bc7";
      };
    }

    {
      name = "vinyl-sourcemap-1.1.0.tgz";
      path = fetchurl {
        name = "vinyl-sourcemap-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/vinyl-sourcemap/-/vinyl-sourcemap-1.1.0.tgz";
        sha1 = "92a800593a38703a8cdb11d8b300ad4be63b3e16";
      };
    }

    {
      name = "vinyl-sourcemaps-apply-0.2.1.tgz";
      path = fetchurl {
        name = "vinyl-sourcemaps-apply-0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/vinyl-sourcemaps-apply/-/vinyl-sourcemaps-apply-0.2.1.tgz";
        sha1 = "ab6549d61d172c2b1b87be5c508d239c8ef87705";
      };
    }

    {
      name = "vinyl-0.5.3.tgz";
      path = fetchurl {
        name = "vinyl-0.5.3.tgz";
        url  = "https://registry.yarnpkg.com/vinyl/-/vinyl-0.5.3.tgz";
        sha1 = "b0455b38fc5e0cf30d4325132e461970c2091cde";
      };
    }

    {
      name = "vinyl-2.2.0.tgz";
      path = fetchurl {
        name = "vinyl-2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/vinyl/-/vinyl-2.2.0.tgz";
        sha1 = "d85b07da96e458d25b2ffe19fece9f2caa13ed86";
      };
    }

    {
      name = "warning-3.0.0.tgz";
      path = fetchurl {
        name = "warning-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/warning/-/warning-3.0.0.tgz";
        sha1 = "32e5377cb572de4ab04753bdf8821c01ed605b7c";
      };
    }

    {
      name = "whet.extend-0.9.9.tgz";
      path = fetchurl {
        name = "whet.extend-0.9.9.tgz";
        url  = "https://registry.yarnpkg.com/whet.extend/-/whet.extend-0.9.9.tgz";
        sha1 = "f877d5bf648c97e5aa542fadc16d6a259b9c11a1";
      };
    }

    {
      name = "which-module-1.0.0.tgz";
      path = fetchurl {
        name = "which-module-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/which-module/-/which-module-1.0.0.tgz";
        sha1 = "bba63ca861948994ff307736089e3b96026c2a4f";
      };
    }

    {
      name = "which-1.3.1.tgz";
      path = fetchurl {
        name = "which-1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/which/-/which-1.3.1.tgz";
        sha1 = "a45043d54f5805316da8d62f9f50918d3da70b0a";
      };
    }

    {
      name = "wide-align-1.1.3.tgz";
      path = fetchurl {
        name = "wide-align-1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/wide-align/-/wide-align-1.1.3.tgz";
        sha1 = "ae074e6bdc0c14a431e804e624549c633b000457";
      };
    }

    {
      name = "window-size-0.2.0.tgz";
      path = fetchurl {
        name = "window-size-0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/window-size/-/window-size-0.2.0.tgz";
        sha1 = "b4315bb4214a3d7058ebeee892e13fa24d98b075";
      };
    }

    {
      name = "wordwrap-1.0.0.tgz";
      path = fetchurl {
        name = "wordwrap-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/wordwrap/-/wordwrap-1.0.0.tgz";
        sha1 = "27584810891456a4171c8d0226441ade90cbcaeb";
      };
    }

    {
      name = "wrap-ansi-2.1.0.tgz";
      path = fetchurl {
        name = "wrap-ansi-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/wrap-ansi/-/wrap-ansi-2.1.0.tgz";
        sha1 = "d8fc3d284dd05794fe84973caecdd1cf824fdd85";
      };
    }

    {
      name = "wrappy-1.0.2.tgz";
      path = fetchurl {
        name = "wrappy-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/wrappy/-/wrappy-1.0.2.tgz";
        sha1 = "b5243d8f3ec1aa35f1364605bc0d1036e30ab69f";
      };
    }

    {
      name = "write-0.2.1.tgz";
      path = fetchurl {
        name = "write-0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/write/-/write-0.2.1.tgz";
        sha1 = "5fc03828e264cea3fe91455476f7a3c566cb0757";
      };
    }

    {
      name = "ws-3.3.3.tgz";
      path = fetchurl {
        name = "ws-3.3.3.tgz";
        url  = "https://registry.yarnpkg.com/ws/-/ws-3.3.3.tgz";
        sha1 = "f1cf84fe2d5e901ebce94efaece785f187a228f2";
      };
    }

    {
      name = "xml2js-0.4.19.tgz";
      path = fetchurl {
        name = "xml2js-0.4.19.tgz";
        url  = "https://registry.yarnpkg.com/xml2js/-/xml2js-0.4.19.tgz";
        sha1 = "686c20f213209e94abf0d1bcf1efaa291c7827a7";
      };
    }

    {
      name = "xmlbuilder-9.0.7.tgz";
      path = fetchurl {
        name = "xmlbuilder-9.0.7.tgz";
        url  = "https://registry.yarnpkg.com/xmlbuilder/-/xmlbuilder-9.0.7.tgz";
        sha1 = "132ee63d2ec5565c557e20f4c22df9aca686b10d";
      };
    }

    {
      name = "xmlhttprequest-ssl-1.5.5.tgz";
      path = fetchurl {
        name = "xmlhttprequest-ssl-1.5.5.tgz";
        url  = "https://registry.yarnpkg.com/xmlhttprequest-ssl/-/xmlhttprequest-ssl-1.5.5.tgz";
        sha1 = "c2876b06168aadc40e57d97e81191ac8f4398b3e";
      };
    }

    {
      name = "xtend-4.0.1.tgz";
      path = fetchurl {
        name = "xtend-4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/xtend/-/xtend-4.0.1.tgz";
        sha1 = "a5c6d532be656e23db820efb943a1f04998d63af";
      };
    }

    {
      name = "y18n-3.2.1.tgz";
      path = fetchurl {
        name = "y18n-3.2.1.tgz";
        url  = "https://registry.yarnpkg.com/y18n/-/y18n-3.2.1.tgz";
        sha1 = "6d15fba884c08679c0d77e88e7759e811e07fa41";
      };
    }

    {
      name = "yallist-2.1.2.tgz";
      path = fetchurl {
        name = "yallist-2.1.2.tgz";
        url  = "https://registry.yarnpkg.com/yallist/-/yallist-2.1.2.tgz";
        sha1 = "1c11f9218f076089a47dd512f93c6699a6a81d52";
      };
    }

    {
      name = "yallist-3.0.2.tgz";
      path = fetchurl {
        name = "yallist-3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/yallist/-/yallist-3.0.2.tgz";
        sha1 = "8452b4bb7e83c7c188d8041c1a837c773d6d8bb9";
      };
    }

    {
      name = "yargs-parser-3.2.0.tgz";
      path = fetchurl {
        name = "yargs-parser-3.2.0.tgz";
        url  = "https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-3.2.0.tgz";
        sha1 = "5081355d19d9d0c8c5d81ada908cb4e6d186664f";
      };
    }

    {
      name = "yargs-parser-4.2.1.tgz";
      path = fetchurl {
        name = "yargs-parser-4.2.1.tgz";
        url  = "https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-4.2.1.tgz";
        sha1 = "29cceac0dc4f03c6c87b4a9f217dd18c9f74871c";
      };
    }

    {
      name = "yargs-parser-5.0.0.tgz";
      path = fetchurl {
        name = "yargs-parser-5.0.0.tgz";
        url  = "https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-5.0.0.tgz";
        sha1 = "275ecf0d7ffe05c77e64e7c86e4cd94bf0e1228a";
      };
    }

    {
      name = "yargs-6.4.0.tgz";
      path = fetchurl {
        name = "yargs-6.4.0.tgz";
        url  = "https://registry.yarnpkg.com/yargs/-/yargs-6.4.0.tgz";
        sha1 = "816e1a866d5598ccf34e5596ddce22d92da490d4";
      };
    }

    {
      name = "yargs-6.6.0.tgz";
      path = fetchurl {
        name = "yargs-6.6.0.tgz";
        url  = "https://registry.yarnpkg.com/yargs/-/yargs-6.6.0.tgz";
        sha1 = "782ec21ef403345f830a808ca3d513af56065208";
      };
    }

    {
      name = "yargs-5.0.0.tgz";
      path = fetchurl {
        name = "yargs-5.0.0.tgz";
        url  = "https://registry.yarnpkg.com/yargs/-/yargs-5.0.0.tgz";
        sha1 = "3355144977d05757dbb86d6e38ec056123b3a66e";
      };
    }

    {
      name = "yargs-7.1.0.tgz";
      path = fetchurl {
        name = "yargs-7.1.0.tgz";
        url  = "https://registry.yarnpkg.com/yargs/-/yargs-7.1.0.tgz";
        sha1 = "6ba318eb16961727f5d284f8ea003e8d6154d0c8";
      };
    }

    {
      name = "yeast-0.1.2.tgz";
      path = fetchurl {
        name = "yeast-0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/yeast/-/yeast-0.1.2.tgz";
        sha1 = "008e06d8094320c372dbc2f8ed76a0ca6c8ac419";
      };
    }
  ];
}
