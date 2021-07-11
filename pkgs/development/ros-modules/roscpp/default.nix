{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, cpp_common
, message_generation
, message_runtime
, rosconsole
, roscpp_serialization
, roscpp_traits
, rosgraph_msgs
, roslang
, rostime
, std_msgs
, xmlrpcpp
}:

let
  pname = "roscpp";
  version = "1.14.4";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "ros_comm-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "0xapxgah3r3sbhljdnh9zf9njjiq06cgqg9wypmhrs65lmvnakkm";
  };

  propagatedBuildInputs =
  [ catkin cpp_common message_generation message_runtime
    rosconsole roscpp_serialization roscpp_traits rosgraph_msgs
    roslang rostime std_msgs xmlrpcpp ];

  meta = with stdenv.lib; {
    description = "C++ implementation of ROS client library";
    homepage = http://wiki.ros.org/roscpp;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
