{ stdenv
, robonomics_comm
, rosserial
, mkRosPackage
, fetchFromGitHub
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "robonomics_tutorials";
  version = "0.2.1";

  src = fetchFromGitHub {
    owner = "airalab";
    repo = pname;
    rev = "v${version}";
    sha256 = "0klf79b40m3fkxwrviayv9hwi9s3djz9acr6akxanwfv42pblj1q";
  };

  propagatedBuildInputs = [ robonomics_comm rosserial ];

  meta = with stdenv.lib; {
    description = "Robonomics tutorials stack";
    homepage = http://github.com/airalab/robonomics_tutorials;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
