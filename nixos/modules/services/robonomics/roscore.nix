{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.roscore;

  ros_master_port = 11311;

in {
  options = {
    services.roscore = {
      enable = mkEnableOption "Enable ROS Master, a ROS Parameter Server and a rosout logging node.";

      package = mkOption {
        type = types.package;
        default = pkgs.roslaunch;
        defaultText = "pkgs.roslaunch";
        description = "Tool for launching ROS nodes";
      };

      port = mkOption {
        type = types.int;
        default = ros_master_port;
        description = "ROS master port";
      };
    };
  };

  config = mkIf cfg.enable {
    systemd.services.roscore = {
      wantedBy = [ "multi-user.target" ];

      script = ''
        source ${cfg.package}/setup.bash \
          && roscore -p ${toString cfg.port}
      '';

      serviceConfig = {
        Restart = "on-failure";
        RestartSec = 5;
      };


    };
  };
}
