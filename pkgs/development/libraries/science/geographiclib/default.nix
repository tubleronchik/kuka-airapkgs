{ stdenv
, fetchFromGitHub
, wget
, cacert
}:

let
  pname = "geographiclib";
  version = "1.44";

in stdenv.mkDerivation {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ObjSal";
    repo = "${pname}";
    rev = "v${version}";
    sha256 = "0ck5iihpydl5h20q071h51zcy555qm1s6vijiw0fb8dhxjr0ar88";
  };

  buildInputs = [ wget cacert ];

  postInstall = ''
    $out/sbin/geographiclib-get-geoids egm96-5
    $out/sbin/geographiclib-get-gravity egm96
    $out/sbin/geographiclib-get-magnetic emm2015
  '';

  meta = with stdenv.lib; {
    description = "Small set of C++ classes for performing conversions between geographic.";
    homepage = https://github.com/ethz-asl/geographic_lib;
    license = licenses.mit;
    maintainers = [ maintainers.akru ];
  };
}
