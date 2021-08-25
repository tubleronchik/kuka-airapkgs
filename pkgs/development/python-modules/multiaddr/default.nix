{ lib
, buildPythonPackage
, fetchPypi
, netaddr
, six
, varint
, base58
, idna
, pytestCheckHook
}:

buildPythonPackage rec {
  pname = "multiaddr";
  version = "0.0.9";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1kqfmcbv8plpicbygwpdljin7n82iyxklc0w1ywxbhzdi58nkcih";
  };

  postPatch = ''
    substituteInPlace setup.py --replace "'pytest-runner'," ""
  '';

  checkInputs = [
    pytestCheckHook
  ];

  pythonImportsCheck = [ "multiaddr" ];

  propagatedBuildInputs = [ netaddr six varint base58 idna ];

  meta = with lib; {
    description = "multiaddr implementation in Python";
    homepage = https://github.com/multiformats/py-multiaddr;
    license = [licenses.mit licenses.asl20];
    maintainers = [ maintainers.strdn ];
  };
}
