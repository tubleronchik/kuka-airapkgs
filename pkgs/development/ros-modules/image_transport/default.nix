{ stdenv
, mkRosPackage
, fetchFromGitHub
, message_filters
, pluginlib
, sensor_msgs
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "image_transport";
  version = "1.11.13";
  rosdistro = "melodic";

  src = fetchFromGitHub {
    owner = "ros-gbp";
    repo = "image_common-release";
    rev = "release/${rosdistro}/${pname}/${version}-0";
    sha256 = "09f998cacs3z958kn1vna1ma0vqfl3wbyzygq8kqx61x1wz9mfhm";
  };

  propagatedBuildInputs = [ message_filters pluginlib sensor_msgs ];

  meta = with stdenv.lib; {
    description = "Provides transparent support for transporting images in low-bandwidth compressed formats.";
    homepage = http://wiki.ros.org/image_transport;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
