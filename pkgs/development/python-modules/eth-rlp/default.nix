{ lib
, fetchFromGitHub 
, buildPythonPackage
, eth-utils
, hexbytes
, rlp
}:

let
  pname = "eth-rlp";
  version = "0.1.2";
in buildPythonPackage rec {
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    owner = "ethereum";
    repo = "${pname}";
    rev = "v${version}";
    sha256 = "1ih4lf158zafbpvznkl5q288r9rzjg9q0wijskiylqff23cn0z79";
  };

  propagatedBuildInputs = [ eth-utils hexbytes rlp ];

  prePatch = ''
    sed -i '/setuptools-markdown/d' setup.py
  '';

  meta = {
    description = "RLP definitions for common Ethereum objects in Python";
    homepage = https://github.com/ethereum/eth-rlp;
    license = lib.licenses.mit;
    maintainers = [ lib.maintainers.akru ];
  };
}
