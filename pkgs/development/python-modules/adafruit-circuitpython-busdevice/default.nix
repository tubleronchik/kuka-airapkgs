{ lib
, python3
, python3Packages
}:

python3Packages.buildPythonApplication rec {
  pname = "Adafruit-CircuitPython-BusDevice";
  version = "4.0.1";

  propagatedBuildInputs = with python3Packages; [ adafruit-blinka ];

  src = python3Packages.fetchPypi {
    inherit version;
    pname  = "adafruit-circuitpython-busdevice";
    sha256 = "1kvphjkzcavy1x9c3d6lsz2p6ig5rlhw3s7065753y1w319plj40";
  };

  doCheck = false;

  meta = with lib; {
    description = "Python library for interfacing with the Adafruit Motor HAT for Raspberry Pi to control DC motors with speed control and Stepper motors with single, double, interleave and microstepping.";
    homepage = https://github.com/adafruit/Adafruit_CircuitPython_BusDevice;
    license = licenses.mit;
    maintainers = with maintainers; [ vourhey ];
  };
}

