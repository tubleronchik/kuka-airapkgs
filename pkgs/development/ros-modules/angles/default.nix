{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
}:

let
  pname = "angles";
  version = "1.9.11";
  rosdistro = "melodic";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "geometry_angles_utils-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "0dvv03ak9zpi9ng6a5xfxcxp8pm9k1xv6w7yd81ah5zhy2qknrm3";
  };

  propagatedBuildInputs = [ catkin ];

  meta = with stdenv.lib; {
    description = "A set of simple math utilities to work with angles.";
    homepage = http://wiki.ros.org/angles;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
