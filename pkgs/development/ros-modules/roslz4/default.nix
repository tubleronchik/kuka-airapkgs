{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
, lz4
, cpp_common
}:

let
  pname = "roslz4";
  version = "1.14.4";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "ros_comm-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "1qk4079am2r0hwi3gbhivacgpyf9hfd0b1xbwh8ra4lg086vphz9";
  };

  propagatedBuildInputs = [ catkin lz4 cpp_common ];

  meta = with stdenv.lib; {
    description = "A Python and C++ implementation of the LZ4 streaming format";
    homepage = http://wiki.ros.org/roslz4;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
