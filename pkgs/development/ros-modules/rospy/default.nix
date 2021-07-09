{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, genpy
, roscpp
, rosgraph
, rosgraph_msgs
, roslib
, std_msgs
}:

let
  pname = "rospy";
  version = "1.14.4";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "ros_comm-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "1qj9bd7l0vpj3pi6pvvy204h1bw4ca01h0bzg1qv9ynmkdzxcqc8";
  };

  propagatedBuildInputs = [ catkin genpy roscpp rosgraph rosgraph_msgs roslib std_msgs ];

  meta = with stdenv.lib; {
    description = "Python client library for ROS";
    homepage = http://wiki.ros.org/rospy;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
