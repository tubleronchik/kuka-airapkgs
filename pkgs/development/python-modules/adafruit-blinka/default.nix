{ lib
, python3
, python3Packages
}:

python3Packages.buildPythonApplication rec {
  pname = "Adafruit-Blinka";
  version = "3.2.0";

  propagatedBuildInputs = with python3Packages; [ adafruit-pureio adafruit-platformdetect sysv_ipc rpi_ws281x rpi_gpio ];

  src = python3Packages.fetchPypi {
    inherit version;
    pname  = "Adafruit-Blinka";
    sha256 = "1x6fkfn194adg03dxrz1a1j40jzjip3bb8kdk9a8367v8rmlzc7v";
  };

  doCheck = false;

  meta = with lib; {
    description = "Python library for interfacing with the Adafruit Motor HAT for Raspberry Pi to control DC motors with speed control and Stepper motors with single, double, interleave and microstepping.";
    homepage = https://github.com/adafruit/Adafruit_Blinka;
    license = licenses.mit;
    maintainers = with maintainers; [ vourhey ];
  };
}

