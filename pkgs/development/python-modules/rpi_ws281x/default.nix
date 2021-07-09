{ lib
, python3
, python3Packages
, fetchgit
, pkgs
}:

python3Packages.buildPythonApplication rec {
  pname = "rpi_ws281x";
  version = "4.2.3";

  # buildInputs = [ pkgs.gcc ];
  propagatedBuildInputs = with python3Packages; [ ];


 src_lib = fetchgit {
    url = "http://github.com/rpi-ws281x/rpi-ws281x-python.git";
    deepClone = true;
    rev = "${version}";
    sha256 = "0k0ngp4fn2i4kgibxyl01zhl64rcdclj4dr4457gpvs3gr1b8p3c";
  };

 src = "${src_lib}/library";


  meta = with lib; {
    description = "";
    homepage = https://github.com/rpi-ws281x/rpi-ws281x-python;
    license = licenses.mit;
    maintainers = with maintainers; [ spd ];
  };
}
