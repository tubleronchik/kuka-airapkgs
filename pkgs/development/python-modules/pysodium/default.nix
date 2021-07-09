{ stdenv, fetchPypi, buildPythonPackage, libsodium, pytest }:

buildPythonPackage rec {
  pname = "pysodium";
  version = "0.7.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1zca881k9g0lhmigr2k9vsavigd34fvpr87pkw9902d0qpbpgg2r";
  };

  checkInputs = [ pytest ];
  propagatedBuildInputs = [ libsodium ];

  postPatch =
    let soext = stdenv.hostPlatform.extensions.sharedLibrary; in ''
      substituteInPlace "./pysodium/__init__.py" --replace "ctypes.cdll.LoadLibrary(ctypes.util.find_library('sodium') or ctypes.util.find_library('libsodium'))" "ctypes.cdll.LoadLibrary('${libsodium}/lib/libsodium${soext}')"
    '';

  checkPhase = ''
    py.test
  '';

  meta = with stdenv.lib; {
    description = "A very simple wrapper around libsodium masquerading as nacl.";
    homepage = https://github.com/stef/pysodium;
    license = licenses.bsd3;
    maintainers = with maintainers; [ akru ];
  };
}
