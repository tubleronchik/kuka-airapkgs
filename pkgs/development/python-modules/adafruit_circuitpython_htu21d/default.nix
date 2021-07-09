{ lib
, python3
, python3Packages
}:

python3Packages.buildPythonApplication rec {
  pname = "Adafruit-CircuitPython-HTU21D";
  version = "0.9.0";

  propagatedBuildInputs = with python3Packages; [ adafruit-circuitpython-busdevice ];

  src = python3Packages.fetchPypi {
    inherit version;
    pname  = "adafruit-circuitpython-HTU21D";
    sha256 = "0757r78h7wjm2dc3fih23w4mzifqwz2iqvkwklcwfnbh6ydrgi03";
  };

  doCheck = false;

  meta = with lib; {
    description = "Python library for interfacing with the Adafruit Motor HAT for Raspberry Pi to control DC motors with speed control and Stepper motors with single, double, interleave and microstepping.";
    homepage = https://github.com/adafruit/Adafruit_CircuitPython_HTU21D;
    license = licenses.mit;
    maintainers = with maintainers; [ vourhey ];
  };
}

