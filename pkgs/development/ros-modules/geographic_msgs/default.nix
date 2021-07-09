{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, message_generation
, message_runtime
, geometry_msgs
, uuid_msgs
}:

let
  pname = "geographic_msgs";
  version = "0.5.3";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-geographic-info";
    repo = "geographic_info-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "1sfsv2vmvh0mnkqrpvcngbniyj764gmnws3g3wipp6kpmm5zljpj";
  };

  propagatedBuildInputs = [ catkin message_generation message_runtime geometry_msgs uuid_msgs ];

  meta = with stdenv.lib; {
    description = "ROS messages for Geographic Information Systems.";
    homepage = http://wiki.ros.org/geographic_msgs;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
