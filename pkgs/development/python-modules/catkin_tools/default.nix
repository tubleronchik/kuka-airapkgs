{ stdenv
, fetchPypi
, buildPythonApplication
, catkin_pkg
, osrf_pycommon
, pyyaml
}:

let
  pname = "catkin_tools";
  version = "0.4.4";
  sha256 = "0sgkpsss11abhl55nq64y2j579yakqhwwh40bzsmfj824d8nv901";

in buildPythonApplication rec { 
  name = "${pname}-${version}";
  src = fetchPypi { inherit pname version sha256; };

  propagatedBuildInputs = [ catkin_pkg osrf_pycommon pyyaml ];

  doCheck = false;

  meta = with stdenv.lib; {
    description = "Command line tools for working with catkin";
    homepage = http://catkin-tools.readthedocs.org;
    license = licenses.asl20;
    maintainers = [ maintainers.akru ];
  }; 
}
