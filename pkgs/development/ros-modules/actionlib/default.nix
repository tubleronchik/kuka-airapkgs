{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, actionlib_msgs
, message_generation
, roscpp
, rosunit
, rostest
, std_msgs
}:

let
  pname = "actionlib";
  version = "1.11.14";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "${pname}-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "1h5gjjf1yqqi0p115x2x0drgvlfhipvx37xnglsyqzv5dg1plj1k";
  };

  propagatedBuildInputs =
  [ catkin actionlib_msgs message_generation roscpp rosunit rostest std_msgs ];

  meta = with stdenv.lib; {
    description = "Standardized interface for interfacing with preemptable tasks";
    homepage = http://wiki.ros.org/actionlib;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
