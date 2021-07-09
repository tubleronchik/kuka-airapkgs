{ stdenv
, fetchPypi
, buildPythonPackage
, catkin_pkg
, pyyaml
}:

let
  version = "1.1.7";
  pname = "rospkg";
  sha256 = "1axj16vc145njnn6hq8yxrkb0k2fysca5f87zmib6lba7bhiisf6";

in buildPythonPackage rec { 
  name = "${pname}-${version}";
  src = fetchPypi { inherit pname version sha256; };

  propagatedBuildInputs = [ catkin_pkg pyyaml ];

  meta = with stdenv.lib; {
    description = "Standalone Python library for the ROS package system";
    homepage = http://wiki.ros.org/rospkg;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  }; 
}
