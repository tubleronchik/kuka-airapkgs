{ buildPythonPackage
, fetchPypi
, requests
, isPy27
, lib
}:

buildPythonPackage rec {
  name = "${pname}-${version}";
  pname = "ipfsapi"; 
  version = "0.4.3";

  disabled = isPy27;

  src = fetchPypi {
    inherit pname version;
    sha256 = "13lz063ghspn2pwca7xrm1h1hvm73js2l1rq0rrrcfqz7w6crrzj";
  };

  propagatedBuildInputs = [ requests ];

  meta = {
    description = "A python client library for the IPFS API.";
    homepage = https://github.com/ipfs/py-ipfs-api;
    license = lib.licenses.mit;
    maintainers = [ lib.maintainers.akru ];
  };
}
