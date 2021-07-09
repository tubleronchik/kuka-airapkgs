{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, message_generation
, message_runtime
, std_msgs
}:

let
  pname = "rosgraph_msgs";
  version = "1.11.2";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "ros_comm_msgs-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "1acyvalskr9hk23g2rsavpanjvnhq1cz467lnymyh4xd5g7xkrza";
  };

  propagatedBuildInputs = [ catkin message_generation message_runtime std_msgs ];

  meta = with stdenv.lib; {
    description = "Message relating to the ROS Computation Graph";
    homepage = http://wiki.ros.org/rosgraph_msgs;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
