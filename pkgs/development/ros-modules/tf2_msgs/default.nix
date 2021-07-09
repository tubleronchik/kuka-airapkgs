{ stdenv
, mkRosPackage
, fetchFromGitHub
, geometry_msgs
, actionlib_msgs
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "tf2_msgs";
  version = "0.6.4";
  rosdistro = "melodic";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "geometry2-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "1mdhf52ll22mv8wlpj2bhgknvgg8fn1czkfzcc0fsjq5vn2r39y9";
  };

  propagatedBuildInputs = [ actionlib_msgs geometry_msgs ];

  meta = with stdenv.lib; {
    description = "ROS bindings for the tf2 library, for both Python and C++.";
    homepage = http://wiki.ros.org/tf2_msgs;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
