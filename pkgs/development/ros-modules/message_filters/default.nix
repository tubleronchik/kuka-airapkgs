{ stdenv
, mkRosPackage
, fetchFromGitHub
, rosconsole
, rostest
, roscpp
, rosunit
, xmlrpcpp
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "message_filters";
  version = "1.14.4";
  rosdistro = "melodic";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "ros_comm-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "ZNOYaJdM6+ze2Y0IEm9oV4Vbt9utmFqrP1Nn3pKfjtk=";
  };

  propagatedBuildInputs = [ rosconsole rostest roscpp rosunit xmlrpcpp ];

  meta = with stdenv.lib; {
    description = "A set of message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met";
    homepage = http://wiki.ros.org/message_filters;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
