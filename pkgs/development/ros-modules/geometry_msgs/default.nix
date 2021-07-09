{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, message_generation
, message_runtime
, std_msgs
}:

let
  pname = "geometry_msgs";
  version = "1.12.6";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "common_msgs-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "128hnhb326jhx4asxn88qmbrwrpl43d2618cnmldb68g7w7kkrvw";
  };

  propagatedBuildInputs = [ catkin message_generation message_runtime std_msgs ];

  meta = with stdenv.lib; {
    description = "Messages for common geometric primitives such as points, vectors, and poses.";
    homepage = http://wiki.ros.org/geometry_msgs;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
