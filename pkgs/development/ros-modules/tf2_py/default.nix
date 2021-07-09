{ stdenv
, mkRosPackage
, fetchFromGitHub
, rospy
, tf2
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "tf2_py";
  version = "0.6.4";
  rosdistro = "melodic";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "geometry2-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "1jm3mxm3lvil4wijx3r34d4jxryxihbg4y90i2fnd1x5d418dprj";
  };

  propagatedBuildInputs = [ tf2 rospy ];

  meta = with stdenv.lib; {
    description = "Binds the tf2 functions and exceptions to python.";
    homepage = http://wiki.ros.org/tf2_py;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
