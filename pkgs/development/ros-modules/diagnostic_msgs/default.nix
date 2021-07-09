{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, message_generation
, message_runtime
, std_msgs
}:

let
  pname = "diagnostic_msgs";
  version = "1.12.6";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "common_msgs-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "13ivijxc8h7fg7id40wf05y81iq9jci4k51djfyqrykwh1fg1rvc";
  };

  propagatedBuildInputs = [ catkin message_generation message_runtime std_msgs ];

  meta = with stdenv.lib; {
    description = "Diagnostic messages which provide the standardized interface for the diagnostic and runtime monitoring systems in ROS.";
    homepage = http://wiki.ros.org/diagnostic_msgs;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
