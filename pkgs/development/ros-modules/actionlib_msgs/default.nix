{ stdenv
, mkRosPackage
, fetchFromGitHub
, message_generation
, std_msgs
}:

let

in mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "actionlib_msgs";
  version = "1.12.5";
  rosdistro = "melodic";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "common_msgs-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "0927xymm16b6dwyp3rpr5ig0ppiljnlmyjwf6nb96lb6ywifdznc";
  };

  propagatedBuildInputs = [ message_generation std_msgs ];

  meta = with stdenv.lib; {
    description = "Common messages to interact with an action server and an action client";
    homepage = http://wiki.ros.org/actionlib_msgs;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
