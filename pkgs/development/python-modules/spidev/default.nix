{ lib
, python3
, python3Packages
}:

python3Packages.buildPythonApplication rec {
  pname = "spidev";
  version = "3.4";

  src = python3Packages.fetchPypi {
    inherit version;
    pname  = "spidev";
    sha256 = "104y2w76nlhinxxyg5z10skah4rki5c7ac3zj0y2759xawpya523";
  };

  meta = with lib; {
    description = "Python Spidev";
    homepage = https://github.com/doceme/py-spidev;
    license = licenses.mit;
    maintainers = with maintainers; [ spd ];
  };
}

