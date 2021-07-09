{ stdenv
, fetchFromGitHub
, cmake
, pkgconfig
, boost
, libxml2
, python3
}:

stdenv.mkDerivation {
  name = "freeopcua_2018-01-26";

  src = fetchFromGitHub {
    owner = "FreeOpcUa";
    repo = "freeopcua";
    rev = "18e5a08531ab19f8c4f00dad1bee3d0597ee882c";
    sha256 = "0d7884mj7ar324rdhs801a62lz1gcl50wk8inb96w6h7p26xvc8z";
  };

  nativeBuildInputs = [ cmake pkgconfig ];
  buildInputs = [ boost libxml2 python3 ];

  cmakeFlags = [ "-DBUILD_SERVER=OFF" "-DSSL_SUPPORT_MBEDTLS=OFF" ];

  patches = [ ./pkgconfig_generator.patch ];

  meta = with stdenv.lib; {
    homepage = https://github.com/FreeOpcUa/freeopcua;
    license = licenses.lgpl3;
    shortDescription = "Open Source C++ OPC-UA Server and Client Library";
    platforms = platforms.linux;
    maintainers = with maintainers; [ akru ];
  };
}
