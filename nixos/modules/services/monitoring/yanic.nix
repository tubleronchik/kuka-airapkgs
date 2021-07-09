{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.yanic;

  yanicToml = pkgs.writeText "yanic.toml"
    ''
      # This is the config file for Yanic written in "Tom's Obvious, Minimal Language."
      # syntax: https://github.com/toml-lang/toml
      # (if you need somethink multiple times, checkout out the [[array of table]] section)

      # Send respondd request to update information
      [respondd]
      enable           = true
      # Delay startup until a multiple of the period since zero time
      synchronize      = "1m"
      # how often request per multicast
      collect_interval = "1m"

      [[respondd.interfaces]]
      # name of interface on which this collector is running
      ifname = "${cfg.ifname}"

      [webserver]
      enable  = true 
      bind    = "127.0.0.1:8080"
      webroot = "/var/www/html/meshviewer"

      [nodes]
      # Cache file
      # a json file to cache all data collected directly from respondd
      state_path    = "/var/lib/yanic/state.json"
      # prune data in RAM, cache-file and output json files (i.e. nodes.json)
      # that were inactive for longer than
      prune_after   = "7d"
      # Export nodes and graph periodically
      save_interval = "5s"
      # Set node to offline if not seen within this period
      offline_after = "10m"


      # definition for nodes.json
      [[nodes.output.meshviewer]]
      enable = false
      # The structure version of the output which should be generated (i.e. nodes.json)
      # version 1 is accepted by the legacy meshviewer (which is the master branch)
      #   i.e. https://github.com/ffnord/meshviewer/tree/master
      # version 2 is accepted by the new versions of meshviewer (which are in the legacy develop branch or newer)
      #   i.e. https://github.com/ffnord/meshviewer/tree/dev
      #        https://github.com/ffrgb/meshviewer/tree/develop
      version    = 2
      # path where to store nodes.json
      nodes_path = "/var/www/html/meshviewer/data/nodes.json"
      # path where to store graph.json
      graph_path = "/var/www/html/meshviewer/data/graph.json"

      [nodes.output.meshviewer.filter]
      # WARNING: if it is not set, it will publish contact information of other persons
      no_owner = true

      # definition for nodelist.json
      [[nodes.output.nodelist]]
      enable   = true
      path = "/var/www/html/meshviewer/data/nodelist.json"

      [nodes.output.nodelist.filter]
      # WARNING: if it is not set, it will publish contact information of other persons
      no_owner = true

      [database]
      # this will send delete commands to the database to prune data
      # which is older than:
      delete_after    = "7d"
      # how often run the cleaning
      delete_interval = "1h"

      [[database.connection.influxdb]]
      enable   = true 
      address  = "http://localhost:8086"
      database = "${cfg.database}"
      username = "yanic"
      password = "yanic"
    '';

in

{

  options = {

    services.yanic = {

      enable = mkOption {
        default = false;
        description = "Enable node info collector.";
      };

      ifname = mkOption {
        default = "eth0";
        description = "Network interface name";
        type = types.string;
      };

      database = mkOption {
        default = "yanic";
        description = "Statistics database name";
        type = types.string;
      };

    };

  };

  config = mkIf cfg.enable  {

    services.influxdb.enable = true;

    systemd.services.yanic = {
      description = "Yanic Server";
      wantedBy = [ "multi-user.target" ];
      after = [ "network.target" ];

      serviceConfig = {
        ExecStart = ''${yanic}/bin/yanic serve --config /etc/yanic.toml'';
        User = "${cfg.user}";
        Group = "${cfg.group}";
      };

    };

    users.users = [{
      name = "yanic";
      description = "Yanic daemon user";
      group = "yanic";
      uid = config.ids.uids.yanic;
    }];

    users.groups = [{
      name = "yanic";
      gid = config.ids.gids.yanic;
    }];

  };
}
