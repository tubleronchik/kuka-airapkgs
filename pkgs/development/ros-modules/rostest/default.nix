{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, rosgraph
, roslaunch
, rosmaster
, rospy
, rosunit
}:

let
  pname = "rostest";
  version = "1.14.4";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "ros_comm-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "0ipmi59yhjs8nssm84nxbblnjl5wmmjhwr909cma90c2n4zr9d1v";
  };

  propagatedBuildInputs = [ catkin rosgraph roslaunch rosmaster rospy rosunit ];

  meta = with stdenv.lib; {
    description = "Integration test suite based on roslaunch that is compatible with xUnit frameworks";
    homepage = http://wiki.ros.org/rostest;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
