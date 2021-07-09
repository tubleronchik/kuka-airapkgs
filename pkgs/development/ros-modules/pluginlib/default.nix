{ stdenv
, mkRosPackage
, fetchFromGitHub
, class_loader
, rosconsole
, tinyxml-2
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "pluginlib";
  version = "2.1.1";
  rosdistro = "melodic";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "${pname}-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "06knk7hk17xhblf2g59czjhgk81wjrd8fcws6rj564p8jp9l7b4h";
  };

  buildInputs = [ tinyxml-2 ];
  propagatedBuildInputs = [ class_loader rosconsole ];

  meta = with stdenv.lib; {
    description = "Tools for writing and dynamically loading plugins using the ROS build infrastructure.";
    homepage = http://wiki.ros.org/pluginlib;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
