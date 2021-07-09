{ stdenv
, buildPythonPackage
, fetchPypi
, lib
, netaddr
, six
, varint
, base58
, idna
}:

buildPythonPackage rec {
  pname = "multiaddr";
  version = "0.0.8";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0f0jvdsnqvc0mfhy6dl82jm3kyfcpkwc2bfx91mzwicr8y5wdbig";
  };

  propagatedBuildInputs = [ netaddr six varint base58 idna ];

  meta = with stdenv.lib; {
    description = "multiaddr implementation in Python";
    homepage = https://github.com/multiformats/py-multiaddr;
    license = [licenses.mit licenses.asl20];
    maintainers = [ maintainers.strdn ];
  };
}
