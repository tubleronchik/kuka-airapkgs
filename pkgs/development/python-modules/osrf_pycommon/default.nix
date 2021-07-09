{ stdenv
, fetchPypi
, buildPythonPackage
, trollius
}:

let
  version = "0.1.3";
  pname = "osrf_pycommon";
  sha256 = "0da3836raprxj4kpn45pm5ardd8kcba087w2xk43jf489q72ci2i";

in buildPythonPackage rec { 
  name = "${pname}-${version}";
  src = fetchPypi { inherit pname version sha256; };

  propagatedBuildInputs = [ trollius ];

  doCheck = false;

  meta = with stdenv.lib; {
    description = "Commonly needed Python modules, used by Python software developed at OSRF";
    homepage = http://osrf-pycommon.readthedocs.io;
    license = licenses.asl20;
    maintainers = [ maintainers.akru ];
  }; 
}
