{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, rosgraph
}:

let
  pname = "rosparam";
  version = "1.14.4";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "ros_comm-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "09c6xz2ccgz6qbw3fv5ibj3dn52k4h67bbmq56yx9ilrc48hwqf0";
  };

  propagatedBuildInputs = [ catkin rosgraph ];

  meta = with stdenv.lib; {
    description = "Command-line tool for getting and setting ROS Parameters";
    homepage = http://wiki.ros.org/rosparam;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
