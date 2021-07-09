{ lib
, python3
, python3Packages
}:

python3Packages.buildPythonApplication rec {
  pname = "Adafruit-MotorHAT";
  version = "1.4.0";

  propagatedBuildInputs = with python3Packages; [ adafruit-gpio ];

  src = python3Packages.fetchPypi {
    inherit version;
    pname  = "Adafruit_MotorHAT";
    sha256 = "1bh5b70y5k001zzfdyvz3xx9qivhph9paz0ixc8z2i3a1p2i8b28";
  };

  doCheck = false;

  meta = with lib; {
    description = "Python library for interfacing with the Adafruit Motor HAT for Raspberry Pi to control DC motors with speed control and Stepper motors with single, double, interleave and microstepping.";
    homepage = https://github.com/adafruit/Adafruit-Motor-HAT-Python-Library;
    license = licenses.mit;
    maintainers = with maintainers; [ spd ];
  };
}

