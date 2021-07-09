{ stdenv
, mkRosPackage
, fetchFromGitHub
, message_generation
, message_runtime
, geographic_msgs
, sensor_msgs
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "mavros_msgs";
  version = "0.32.2";
  rosdistro = "melodic";

  src = fetchFromGitHub {
    owner = "mavlink";
    repo = "mavros-release";
    rev = "release/${rosdistro}/${pname}/${version}-1";
    sha256 = "0kvcbcrabm2mlzkdpbpb59wwf2gwj2jhl2q31cfi2lfa7pyang1i";
  };

  propagatedBuildInputs = [ message_generation message_runtime geographic_msgs sensor_msgs ];

  meta = with stdenv.lib; {
    description = "MAVLink extendable communication node messages.";
    homepage = https://github.com/mavlink/mavros;
    license = licenses.gpl3;
    platforms = platforms.linux;
    maintainers = [ maintainers.akru ];
  };
}
