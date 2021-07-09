{ stdenv
, mkRosPackage
, fetchFromGitHub
, catkin
}:

let
  pname = "catkin_simple";
  version = "0.1.1";

in mkRosPackage {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "catkin";
    repo = "catkin_simple";
    rev = "${version}";
    sha256 = "1i0xdia968rgsq2kd2r0s6cprsi2z0kg7srrmrhcsqfgrdaqvfgn";
  };
  
  propagatedBuildInputs = [ catkin ];

  meta = with stdenv.lib; {
    description = "Catkin simpler wrapper.";
    homepage = https://github.com/catkin/catkin_simple;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
