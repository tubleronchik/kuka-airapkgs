{ stdenv
, fetchPypi
, buildPythonApplication
}:

let
  version = "3.3.2";
  pname = "empy";
  sha256 = "177avx6iv9sq2j2iak2il5lxqq0k4np7mpv5gasqmi3h4ypidw4r";

in buildPythonApplication rec { 
  name = "${pname}-${version}";
  src = fetchPypi { inherit pname version sha256; };

  meta = with stdenv.lib; {
    homepage = http://www.alcyone.com/software/empy/;
    description = "A powerful and robust templating system for Python";
    license = licenses.lgpl3;
    maintainers = [ maintainers.akru ];
  }; 
}
