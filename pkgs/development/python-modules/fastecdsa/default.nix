{ stdenv, fetchPypi, buildPythonPackage, gmp }:

buildPythonPackage rec {
  pname = "fastecdsa";
  version = "1.7.3";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1zff0ara6waryq4pp07rnp87hh92khkvkwr5bsb4hsg6qqqaaf8d";
  };

  buildInputs = [ gmp ];
  doCheck = false;

  meta = with stdenv.lib; {
    description = "Fast elliptic curve cryptography, specifically digital signatures.";
    homepage = https://github.com/AntonKueltz/fastecdsa;
    license = licenses.cc0;
    maintainers = with maintainers; [ akru ];
  };
}
