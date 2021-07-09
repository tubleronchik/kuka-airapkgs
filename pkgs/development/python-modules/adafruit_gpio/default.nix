{ lib
, python3
, python3Packages
}:

python3Packages.buildPythonApplication rec {
  pname = "Adafruit-GPIO";
  version = "1.0.3";

  propagatedBuildInputs = with python3Packages; [ adafruit-pureio spidev ];

  src = python3Packages.fetchPypi {
    inherit version;
    pname  = "Adafruit_GPIO";
    sha256 = "1l6wlba5d5qhq40l3m8gdnscsp3gqcp8y7mwyfl1rib6r295ninn";
  };

  doCheck = false;

  meta = with lib; {
    description = "";
    homepage = https://github.com/adafruit/Adafruit_Python_GPIO;
    license = licenses.mit;
    maintainers = with maintainers; [ spd ];
  };
}
