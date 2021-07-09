{ stdenv
, mkRosPackage
, fetchFromGitHub
, actionlib
, message_filters
, tf2_py
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "tf2_ros";
  version = "0.6.4";
  rosdistro = "melodic";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "geometry2-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "0yr069jpffzvajqyj509jjfpd9f7zb3glqsyhxbyjhaqknwhby4c";
  };

  propagatedBuildInputs = [ actionlib message_filters tf2_py ];

  meta = with stdenv.lib; {
    description = "ROS bindings for the tf2 library, for both Python and C++.";
    homepage = http://wiki.ros.org/tf2_ros;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
