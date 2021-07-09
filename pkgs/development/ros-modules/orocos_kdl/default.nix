{ stdenv
, mkRosPackage
, fetchFromGitHub
, eigen
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "orocos_kdl";
  version = "1.4.0";
  rosdistro = "melodic";

  src = fetchFromGitHub {
    owner = "orocos";
    repo = "orocos-kdl-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "017z0wsck2sbr3v89g58xvbdx5w6rvkcs03iw9knaqnxdc66zx3x";
  };

  buildInputs = [ eigen ];

  meta = with stdenv.lib; {
    description = "Kinematics and Dynamics Library";
    homepage = http://wiki.ros.org/orocos_kdl;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
