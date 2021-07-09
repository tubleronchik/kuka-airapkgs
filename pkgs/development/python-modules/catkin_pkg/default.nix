{ stdenv
, fetchPypi
, buildPythonPackage
, pyparsing
, docutils
, dateutil
}:

let
  pname = "catkin_pkg";
  version = "0.4.9";
  sha256 = "1vz3c6ri71wv09vac2dafr79w3107k7pq00fp5w9ci7vqpmx7l5f";

in buildPythonPackage rec { 
  name = "${pname}-${version}";
  src = fetchPypi { inherit pname version sha256; };

  propagatedBuildInputs = [ pyparsing docutils dateutil ];

  meta = with stdenv.lib; {
    description = "Standalone Python library for the catkin package system";
    homepage = http://wiki.ros.org/catkin_pkg;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  }; 
}
