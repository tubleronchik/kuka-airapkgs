{ stdenv
, mkRosPackage
, fetchFromGitHub
, python3Packages
, ros_comm
, nav_msgs
, sensor_msgs
, geometry_msgs
, diagnostic_msgs
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "rosserial";
  version = "0.8.0";
  rosdistro = "melodic";

  src = fetchFromGitHub {
    owner = "akru";
    repo = pname;
    rev = "${rosdistro}-devel";
    sha256 = "11pa0xxjcqr4lc4x80ymsw3d4i1cs7n8k2j583ywfv1sy9q9aghw";
  };

  propagatedBuildInputs = with python3Packages;
  [ ros_comm geometry_msgs nav_msgs sensor_msgs diagnostic_msgs pyserial ];

  meta = with stdenv.lib; {
    description = "A ROS client library for small, embedded devices, such as Arduino.";
    homepage = http://wiki.ros.org/rosserial;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
