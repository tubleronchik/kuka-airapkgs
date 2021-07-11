{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, rosgraph
}:

let
  pname = "rosmaster";
  version = "1.14.4";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "ros_comm-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "09ydgjah3px6s3wcfdq736hzasin1zifnysalk4flcxpc4v4dry6";
  };

  propagatedBuildInputs = [ catkin rosgraph ];

  meta = with stdenv.lib; {
    description = "ROS Master implementation";
    homepage = http://wiki.ros.org/rosmaster;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
