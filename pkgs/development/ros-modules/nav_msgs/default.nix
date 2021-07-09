{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, message_generation
, message_runtime
, geometry_msgs
, actionlib_msgs
}:

let
  pname = "nav_msgs";
  version = "1.12.6";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "common_msgs-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "0mgingdcidym907w8yvqh51nm91123z26g4h3p193zfgbkvh9hnf";
  };

  propagatedBuildInputs = [ catkin message_generation message_runtime geometry_msgs actionlib_msgs ];

  meta = with stdenv.lib; {
    description = "Messages used to interact with the navigation stack.";
    homepage = http://wiki.ros.org/nav_msgs;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
