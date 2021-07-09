{ lib, buildPythonPackage, fetchPypi, flask, python3Packages }:

buildPythonPackage rec {
  pname = "Flask-GraphQL";
  version = "2.0.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0p93qm5rcdjpwkhbdsd5rl5aj6f966yqp8q38pbnqhyz8k07hmc2";
  };

  propagatedBuildInputs = with python3Packages; [ graphql-server-core flask ];

  meta = with lib; {
    description = "Adds GraphQL support to your Flask application";
    homepage = "https://github.com/graphql-python/flask-graphql";
    license = licenses.mit;
    maintainers = with maintainers; [ vourhey ];
  };
}
