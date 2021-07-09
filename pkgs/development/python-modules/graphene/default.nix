{ lib
, python3
, python3Packages
}:

python3Packages.buildPythonApplication rec {
  pname = "graphene";
  version = "2.1.8";

  propagatedBuildInputs = with python3Packages; [ graphql-relay aniso8601_7_0_0 ];

  src = python3Packages.fetchPypi {
    inherit version;
    pname  = "graphene";
    sha256 = "1y8jgi4wzln0zl6rj3qvrrhp2x40bc70lxp00mw7pz2wy576vgic";
  };

  doCheck = false;

  meta = with lib; {
    description = "Graphene is a Python library for building GraphQL schemas/types fast and easily.";
    homepage = https://github.com/graphql-python/graphene;
    license = licenses.mit;
    maintainers = with maintainers; [ vourhey ];
  };
}

