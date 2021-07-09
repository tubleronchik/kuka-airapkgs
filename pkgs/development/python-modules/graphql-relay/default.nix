{ lib
, python3
, python3Packages
}:

python3Packages.buildPythonApplication rec {
  pname = "graphql-relay";
  version = "2.0.1";

  propagatedBuildInputs = with python3Packages; [ graphql-core ];

  src = python3Packages.fetchPypi {
    inherit version;
    pname  = "graphql-relay";
    sha256 = "1fzsi99bi351kz9hrx3b8rdcxb11w2n9x9qmnah3hfhj0i9nn2w7";
  };

  doCheck = false;

  meta = with lib; {
    description = "GraphQL-relay-py is the Relay library for GraphQL-core.";
    homepage = https://github.com/graphql-python/graphql-relay-py;
    license = licenses.mit;
    maintainers = with maintainers; [ vourhey ];
  };
}

