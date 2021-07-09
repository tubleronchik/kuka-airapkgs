{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, message_generation
, message_runtime
, std_msgs
}:

let
  pname = "uuid_msgs";
  version = "1.0.6";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-geographic-info";
    repo = "unique_identifier-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "1ffjhmga9s5l4vby9a8v0ifi6vcyjpfhkcn5bqdxfbw9vmvjyv13";
  };

  propagatedBuildInputs = [ catkin message_generation message_runtime std_msgs ];

  meta = with stdenv.lib; {
    description = "ROS messages for universally unique identifiers.";
    homepage = http://wiki.ros.org/uuid_msgs;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
