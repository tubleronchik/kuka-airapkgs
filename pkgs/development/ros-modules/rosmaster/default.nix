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
    sha256 = "013m9rw66glaly58vga8r855qzhgqh1vkr8nmc72h1q0lg5yqgah";
  };

  propagatedBuildInputs = [ catkin rosgraph ];

  meta = with stdenv.lib; {
    description = "ROS Master implementation";
    homepage = http://wiki.ros.org/rosmaster;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
