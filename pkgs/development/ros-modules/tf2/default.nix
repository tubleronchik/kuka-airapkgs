{ stdenv
, mkRosPackage
, fetchFromGitHub
, console_bridge
, tf2_msgs
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "tf2";
  version = "0.6.4";
  rosdistro = "melodic";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "geometry2-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "1376h9rjpfi39qh0r1d8wwc7f76b1dl5jk1a7wlv4vra4b1w281y";
  };

  propagatedBuildInputs = [ console_bridge tf2_msgs ];

  meta = with stdenv.lib; {
    description = "ROS bindings for the tf2 library, for both Python and C++.";
    homepage = http://wiki.ros.org/tf2;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
