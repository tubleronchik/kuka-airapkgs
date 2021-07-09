{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.ethereum;
  home = "/var/lib/ethereum";

in {
  options = {
    services.ethereum = {
      enable = mkEnableOption "Enable Ethereum service";

      networkid = mkOption {
        type = types.int;
        default = 1;
        description = "Ethereum network identifier";
      };

      bootnodes = mkOption {
        type = types.str;
        default = "";
        description = "Bootstrap nodes";
      };

      miner = {
        enable = mkEnableOption "Enable mining";

        threads = mkOption {
          type = types.int;
          default = 1;
          description = "Count of CPU used for mining";
        };
      };

      package = mkOption {
        type = types.package;
        default = pkgs.go-ethereum;
        defaultText = "pkgs.go-ethereum";
        description = "Ethereum client for service providing";
      };
    };
  };

  config = mkIf cfg.enable { 
    systemd.services.ethereum = {
      description = "Ethereum network service";
      after = [ "network-online.target" ];
      wantedBy = [ "multi-user.target" ];

      script = ''
        ${cfg.package}/bin/geth --datadir ${home} --networkid ${toString cfg.networkid} --bootnodes "${cfg.bootnodes}" \
          ${if cfg.miner.enable then "--mine --minerthreads=${toString cfg.miner.threads}" else ""}
      '';

      serviceConfig = {
        Restart    = "on-failure";
        KillSignal = "SIGHUP";
        RestartSec = 1;
        User = "ethereum";
      };
    };

    users.extraUsers = singleton {
      name = "ethereum";
      home = "${home}";
      createHome = true;
      isNormalUser = true;
      description = "Ethereum daemon";
    };
  };
}
