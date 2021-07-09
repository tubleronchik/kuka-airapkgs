{ stdenv
, mkYarnPackage
, fetchFromGitHub
}:

mkYarnPackage rec {
  name = "meshviewer-${version}";
  version = "10.0.0";
  sha256 = "088qd3kwngz5ia1gg62qg4z5qaqdn7hdw9c78w2gaz4al73glbll";
  rev = "15f8f4bd749aa19059f49c47b393ecdd48727418";

  src = fetchFromGitHub {
    owner = "ffrgb";
    repo = "meshviewer";
    inherit rev sha256;
  };

  buildPhase = ''
    npm run gulp
  '';

  yarnNix = ./yarn.nix;
}
