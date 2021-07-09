{ lib
, python3
, python3Packages
}:

python3Packages.buildPythonApplication rec {
  pname = "Adafruit-PureIO";
  version = "0.2.3";

  src = python3Packages.fetchPypi {
    inherit version;
    pname  = "Adafruit_PureIO";
    sha256 = "123l9mi92hg0n7svgaf1959z3x1bfk15gr6i7r8hkqfqy4lxjp76";
  };

  meta = with lib; {
    description = "";
    homepage = https://github.com/adafruit/Adafruit_Python_PureIO;
    license = licenses.mit;
    maintainers = with maintainers; [ spd ];
  };
}

