{ stdenv
, mkRosPackage
, fetchFromGitHub
, console_bridge
, cmake_modules
, catkin
, boost
, poco
}:

let
  pname = "class_loader";
  version = "0.4.1";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "${pname}-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "0mw0zx8ifmh7aid7b3lj8mhw7ms1wmk6d0l06br9ridhpc2qmna6";
  };

  propagatedBuildInputs = [ catkin console_bridge cmake_modules boost poco ];

  meta = with stdenv.lib; {
    description = "ROS-independent package for loading plugins during runtime.";
    homepage = http://wiki.ros.org/class_loader;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
