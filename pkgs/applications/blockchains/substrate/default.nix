{ stdenv
, fetchFromGitHub
, rustPlatform
, llvmPackages
, pkgconfig
, protobuf
, openssl
, clang
}:

rustPlatform.buildRustPackage rec {
  name = "${pname}-${version}";
  pname = "substrate-node";
  version = "master";

  src = fetchFromGitHub {
    owner = "paritytech";
    repo = "substrate";
    rev = "6c2df4a49039f054625f4f8d4cbdd5a6b20b1766";
    sha256 = "0chcvjwd7ypxifwraqrcy42yv3kagh287dnyckvq96jjg4ax8br4";
  }; 

  cargoSha256 = "19wf53jidgkr1k6h5dsx53z4r3rzdmv98qhz8zmg95dx2v7bv0kh";

  buildInputs = [ pkgconfig openssl openssl.dev clang ];
  LIBCLANG_PATH = "${llvmPackages.libclang}/lib";
  PROTOC = "${protobuf}/bin/protoc";

  meta = with stdenv.lib; {
    description = "Substrate: The platform for blockchain innovators";
    homepage = https://github.com/paritytech/substrate;
    license = licenses.gpl3;
    maintainers = [ maintainers.akru ];
    platforms = platforms.linux;
  };
}
