{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, console_bridge
, angles
, geometry_msgs
, sensor_msgs
, message_filters
, tf2_ros
}:

let
  pname = "tf";
  version = "1.12.0";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "geometry-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "0j13qnb21xii1wm14ixpdlnbh3rpa6pq286g7zwsz5c30jpi5406";
  };

  propagatedBuildInputs = [ catkin console_bridge angles geometry_msgs sensor_msgs message_filters tf2_ros];

  meta = with stdenv.lib; {
    description = "ROS bindings for the tf library, for both Python and C++.";
    homepage = http://wiki.ros.org/tf;
    license = licenses.bsd3;
    maintainers = [ maintainers.tuuzdu ];
  };
}
