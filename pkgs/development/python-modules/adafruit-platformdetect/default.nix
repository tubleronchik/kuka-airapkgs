{ lib
, python3
, python3Packages
}:

python3Packages.buildPythonApplication rec {
  pname = "Adafruit-PlatformDetect";
  version = "1.3.8";

  propagatedBuildInputs = with python3Packages; [ ];

  src = python3Packages.fetchPypi {
    inherit version;
    pname  = "Adafruit-PlatformDetect";
    sha256 = "1pl7l40y5bf7jl5vbb06jylvl8xhhbn80bhb2139kmf8mr2128kc";
  };

  doCheck = false;

  meta = with lib; {
    description = "This library provides best-guess platform detection for a range of single-board computers and (potentially) other platforms. It was written primarily for use in Adafruit_Blinka, but may be useful in other contexts.";
    homepage = https://github.com/adafruit/Adafruit_Python_PlatformDetect;
    license = licenses.mit;
    maintainers = with maintainers; [ vourhey ];
  };
}

