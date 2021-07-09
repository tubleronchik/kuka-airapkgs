{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, roscpp
, rostest
, openssl
}:

let
  pname = "rosauth";
  version = "0.1.7";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "GT-RAIL";
    repo = "${pname}";
    rev = "${version}";
    sha256 = "13g989n4fly1ps9z01c6d5vxcfkjcad1cgzk2chxdkwh2zw8x1cq";
  };

  propagatedBuildInputs = [ catkin roscpp rostest openssl.dev ];

  meta = with stdenv.lib; {
    description = "Server Side tools for Authorization and Authentication of ROS Clients";
    homepage = http://wiki.ros.org/rosauth;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
