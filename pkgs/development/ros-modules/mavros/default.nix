{ stdenv
, mkRosPackage
, fetchFromGitHub
, diagnostic_updater
, geographic_msgs
, sensor_msgs
, nav_msgs
, std_srvs
, rosconsole
, pluginlib
, tf2_ros
, tf2_eigen
, angles
, libmavconn
, rosconsole_bridge
, eigen_conversions
, mavros_msgs
, geographiclib
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "mavros";
  version = "0.32.2";
  rosdistro = "melodic";

  src = fetchFromGitHub {
    owner = "mavlink";
    repo = "mavros-release";
    rev = "release/${rosdistro}/${pname}/${version}-1";
    sha256 = "0cx5zjj2ncq5nc4a6rhwpl5cy9abqs38s1i91v34bck4qd34sdsx";
  };

  propagatedBuildInputs = [
    diagnostic_updater pluginlib rosconsole
    sensor_msgs nav_msgs geographic_msgs std_srvs
    tf2_ros tf2_eigen angles libmavconn rosconsole_bridge
    eigen_conversions mavros_msgs geographiclib
  ];

  meta = with stdenv.lib; {
    description = "MAVLink extendable communication node for ROS with proxy for Ground Control Station.";
    homepage = https://github.com/mavlink/mavro;
    license = licenses.gpl3;
    platforms = platforms.linux;
    maintainers = [ maintainers.akru ];
  };
}
