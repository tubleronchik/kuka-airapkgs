{ stdenv
, mkRosPackage
, fetchFromGitHub
, cmake_modules
, tf2
, eigen
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "tf2_eigen";
  version = "0.6.4";
  rosdistro = "melodic";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "geometry2-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "0awsmhmam4dg9qshd38r1d0flqf0lf2yk6jhjbzbfyhw8gapxzm4";
  };

  propagatedBuildInputs = [ cmake_modules tf2 eigen ];

  meta = with stdenv.lib; {
    description = "Convert tf2 data to eigen data structures.";
    homepage = http://wiki.ros.org/tf2_eigen;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
