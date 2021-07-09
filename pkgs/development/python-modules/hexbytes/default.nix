{ lib
, fetchurl
, buildPythonPackage
, eth-utils
}:

let
  pname = "hexbytes";
  version = "0.1.0";
in buildPythonPackage rec {
  name = "${pname}-${version}";

  src = fetchurl {
    url = "mirror://pypi/${builtins.substring 0 1 pname}/${pname}/${name}.tar.gz";
    sha256 = "1piqrx5ya45ghbf9y8dmy9z2037pn5dmk3h5xm60lkd1nj661rb7";
  };

  propagatedBuildInputs = [ eth-utils ];

  prePatch = ''
    sed -i '/setuptools-markdown/d' setup.py
  '';

  meta = {
    description = "Python `bytes` subclass that decodes hex, with a readable console output";
    homepage = https://github.com/ethereum/hexbytes;
    license = lib.licenses.mit;
    maintainers = [ lib.maintainers.akru ];
  };
}
