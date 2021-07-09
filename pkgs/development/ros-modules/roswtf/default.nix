{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, rosbuild
, rosgraph
, roslaunch
, roslib
, rosnode
, rosservice
, rostest
}:

let
  pname = "roswtf";
  version = "1.14.4";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "ros_comm-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "1dp7gl4pvhp1bgdgbbpk0lq2s6hs8j1l5bcc31272c3ljmxvkz7c";
  };

  propagatedBuildInputs = [ catkin rosbuild rosgraph roslaunch roslib rosnode rosservice rostest ];

  meta = with stdenv.lib; {
    description = "Tool for diagnosing issues with a running ROS system";
    homepage = http://wiki.ros.org/roswtf;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
