{ stdenv
, mkRosPackage
, fetchFromGitHub
, message_generation
, message_runtime
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "std_srvs";
  version = "1.11.2";
  rosdistro = "melodic";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "ros_comm_msgs-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "1lrc01bxlh4arcjaxa1vlzvhvcp5xd4ia0g01pbblmmhvyfy06s7";
  };

  propagatedBuildInputs = [ message_generation message_runtime ];

  meta = with stdenv.lib; {
    description = "Common service definitions";
    homepage = http://wiki.ros.org/std_srvs;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
