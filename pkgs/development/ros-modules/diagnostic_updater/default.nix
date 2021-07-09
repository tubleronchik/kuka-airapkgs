{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, diagnostic_msgs
, roscpp
}:

let
  pname = "diagnostic_updater";
  version = "1.9.3";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "diagnostics-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "16lhx0zayibd6n32iq46d4sxmwrdaji5s453npf4pd9dscmd5qr4";
  };

  propagatedBuildInputs = [ catkin diagnostic_msgs roscpp ];

  meta = with stdenv.lib; {
    description = "Tools for easily updating diagnostics";
    homepage = http://wiki.ros.org/diagnostic_updater;
    license = licenses.bsd3;
    platforms = platforms.linux;
    maintainers = [ maintainers.akru ];
  };
}
