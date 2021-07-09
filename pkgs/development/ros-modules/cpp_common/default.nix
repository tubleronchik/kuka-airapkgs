{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, boost
, console_bridge
}:

let 
  pname = "cpp_common";
  version = "0.6.11";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "roscpp_core-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "1xr926154i7kspnj4sb32vxl4q4jm178ncazq0hhvviwwh46nxpy";
  };

  propagatedBuildInputs = [ catkin boost console_bridge ];

  meta = with stdenv.lib; {
    description = "C++ code for doing things that are not necessarily ROS related";
    homepage = http://wiki.ros.org/cpp_common;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
