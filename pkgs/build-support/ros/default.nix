{ stdenv
, cmake
, catkin
, python3Packages
, python3
}:

attrs:

stdenv.mkDerivation (attrs // rec {
  propagatedBuildInputs = with python3Packages;
    [ python3 cmake catkin_pkg rospkg catkin ] ++ (attrs.propagatedBuildInputs or []);

  # Disable testing by default
  doCheck = attrs.doCheck or false;

  ROS_LANG_DISABLE = "geneus:genlisp:gennodejs";

  cmakeFlags = "-DCATKIN_ENABLE_TESTING=${if doCheck then "ON" else "OFF"} -DSETUPTOOLS_DEB_LAYOUT=OFF";

  preConfigure = ''
    if [ ! -e CMakeLists.txt ]; then
      catkin_init_workspace
    fi
  '';
})
