{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, console_bridge
, rosconsole
}:

let
  pname = "rosconsole_bridge";
  version = "0.5.2";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "${pname}-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "0y6j9w8p3gifq6jv5931d15gv3c12yfsaikncfrf628abp037sj8";
  };

  propagatedBuildInputs = [ catkin console_bridge rosconsole ];

  meta = with stdenv.lib; {
    description = "ROS console output library";
    homepage = http://wiki.ros.org/rosconsole_bridge;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
