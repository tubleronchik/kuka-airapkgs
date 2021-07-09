{ buildPythonPackage
, fetchPypi
, isPy27
, lib
, multiaddr
, requests
, httpx
}:

buildPythonPackage rec {
  name = "${pname}-${version}";
  pname = "ipfshttpclient";
  version = "0.6.0.post1";

  disabled = isPy27;

  src = fetchPypi {
    inherit pname version;
    sha256 = "0ma0fakn5ia2prna364brhzpq22q54vbwzd1gb7i6f5jc8axjxyp";
  };

  propagatedBuildInputs = [ multiaddr requests httpx ];

  meta = {
    description = "A python client library for the IPFS API.";
    homepage = https://github.com/ipfs/py-ipfs-http-client;
    license = lib.licenses.mit;
    maintainers = [ lib.maintainers.akru ];
  };
}
