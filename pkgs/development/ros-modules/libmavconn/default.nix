{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, mavlink
, console_bridge
, boost
}:

let
  pname = "libmavconn";
  version = "0.26.1";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "mavlink";
    repo = "mavros-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "1wa988rkz53nzf7k6509x5s6a6hp82s8h7bmrdnrd13f61fnkdg2";
  };

  propagatedBuildInputs = [ catkin mavlink console_bridge boost ];

  meta = with stdenv.lib; {
    description = "MAVLink communication library.";
    homepage = https://github.com/mavlink/mavros;
    license = licenses.gpl3;
    platforms = platforms.linux;
    maintainers = [ maintainers.akru ];
  };
}
