{ lib
, python3
, python3Packages
}:

python3Packages.buildPythonApplication rec {
  pname = "RPi_GPIO";
  version = "0.7.0";

  propagatedBuildInputs = with python3Packages; [ ];

  src = python3Packages.fetchPypi {
    inherit version;
    pname  = "RPi.GPIO";
    sha256 = "0gvxp0nfm2ph89f2j2zjv9vl10m0hy0w2rpn617pcrjl41nbq93l";
  };

  doCheck = false;

  meta = with lib; {
    description = "This package provides a class to control the GPIO on a Raspberry Pi.";
    homepage = https://sourceforge.net/projects/raspberry-gpio-python;
    license = licenses.mit;
    maintainers = with maintainers; [ vourhey ];
  };
}

