{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, genmsg
, rosbag
, roslib
}:

let
  pname = "rosmsg";
  version = "1.14.4";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "ros_comm-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "xSY21cE/RuCxF+eZiOgVTSPpgUHgIRKGDP9JY82qZl4=";
  };

  propagatedBuildInputs = [ catkin genmsg rosbag roslib ];

  meta = with stdenv.lib; {
    description = "Command-line tool for displaying information about ROS Message/Service types";
    homepage = http://wiki.ros.org/rosmsg;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
