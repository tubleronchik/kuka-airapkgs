{ lib
, python3
, python3Packages
}:

python3Packages.buildPythonApplication rec {
  pname = "graphene-sqlalchemy-filter";
  version = "1.10.2";

  propagatedBuildInputs = with python3Packages; [ graphene-sqlalchemy ];

  src = python3Packages.fetchPypi {
    inherit version;
    pname  = "graphene-sqlalchemy-filter";
    sha256 = "0gk12r59gibi7pzkf93lh2qfhy76p861s1680xqpf63pr9y8pxyg";
  };

  doCheck = false;

  meta = with lib; {
    description = "Filters for Graphene SQLAlchemy integration";
    homepage = https://github.com/art1415926535/graphene-sqlalchemy-filter;
    license = licenses.mit;
    maintainers = with maintainers; [ vourhey ];
  };
}

