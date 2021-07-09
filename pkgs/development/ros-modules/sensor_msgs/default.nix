{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, message_generation
, message_runtime
, geometry_msgs
}:

let
  pname = "sensor_msgs";
  version = "1.12.6";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "common_msgs-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "0zdm5fjgbqcbcfb0yp1d8ga21rcicg1ibr4xfksn5v3slhwbzb5j";
  };

  propagatedBuildInputs = [ catkin message_generation message_runtime geometry_msgs ];

  meta = with stdenv.lib; {
    description = "Messages for commonly used sensors.";
    homepage = http://wiki.ros.org/sensor_msgs;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
