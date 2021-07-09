{ lib
, python3
, python3Packages
}:

python3Packages.buildPythonApplication rec {
  pname = "graphene-sqlalchemy";
  version = "2.2.0";

  propagatedBuildInputs = with python3Packages; [ graphene singledispatch sqlalchemy ];

  src = python3Packages.fetchPypi {
    inherit version;
    pname  = "graphene-sqlalchemy";
    sha256 = "0c1j2kn1zml2ni93hxr7792x9gf569qx3gv5jkzcrbmvjagpqmmy";
  };

  doCheck = false;

  meta = with lib; {
    description = "A SQLAlchemy integration for Graphene";
    homepage = https://github.com/graphql-python/graphene-sqlalchemy;
    license = licenses.mit;
    maintainers = with maintainers; [ vourhey ];
  };
}

