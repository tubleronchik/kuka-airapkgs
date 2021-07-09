{ stdenv
, mkRosPackage
, fetchFromGitHub
, orocos_kdl
, geometry_msgs
, cmake_modules
, eigen
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "eigen_conversions";
  version = "1.12.0";
  rosdistro = "melodic";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "geometry-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "17fz7dpn8m300bdb8xmx5mpld35i19psyr9nksv4qxxa1f6rxgr4";
  };

  propagatedBuildInputs = [ orocos_kdl geometry_msgs cmake_modules eigen ];

  postPatch = ''
    sed -i '/find_package(Eigen3 REQUIRED)/d' CMakeLists.txt
  '';

  meta = with stdenv.lib; {
    description = "Conversion functions between: - Eigen and KDL - Eigen and geometry_msgs.";
    homepage = http://wiki.ros.org/eigen_conversions;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
