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
    sha256 = "02rwqa874v034r42b5kia40z3rvfrly801yablqygl0v0ffzia1g";
  };

  propagatedBuildInputs = [ catkin genmsg rosbag roslib ];

  meta = with stdenv.lib; {
    description = "Command-line tool for displaying information about ROS Message/Service types";
    homepage = http://wiki.ros.org/rosmsg;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
