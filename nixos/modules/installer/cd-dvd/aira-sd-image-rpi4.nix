{ config, lib, pkgs, ... }:
{
  imports = [
    ../../profiles/base.nix
    ../../profiles/clone-config.nix
    ./sd-image.nix
  ];
  nixpkgs.config = { allowUnfree = true; };
  hardware.firmware = [ pkgs.raspberrypiWirelessFirmware ];
  fileSystems = {
    "/boot" = {
      device = "/dev/disk/by-label/FIRMWARE";
      fsType = "vfat";
    };
    "/" = {
      device = "/dev/disk/by-label/NIXOS_SD";
      fsType = "ext4";
    };
  };
  boot = {
    loader = {
      grub.enable = false;
      raspberryPi = {
        enable = true;
        version = 4;
      };
    };
    kernelPackages = pkgs.linuxPackages_rpi4;
    kernelParams = [ "cma=256M" "console=ttyS0,115200n8" "console=ttyAMA0,115200n8" "console=tty0" ];
    initrd.kernelModules =  [ "w1-gpio" "w1-therm" ];
    consoleLogLevel = lib.mkDefault 7;
  };
  documentation.nixos.enable = false;
  networking = {
    hostName = "aira-rpi4";
    wireless = {
      enable = true;  # Enables wireless support via wpa_supplicant.
      networks = {
        Aira = { psk = "airapassword"; };
#        SSID = { psk = "password"; };
      };
    };
  };
  sdImage = {
    imageBaseName  = "aira-image-rpi4";
    firmwareSize = 128;
    # This is a hack to avoid replicating config.txt from boot.loader.raspberryPi
    populateFirmwareCommands = ''
      ${config.system.build.installBootLoader} ${config.system.build.toplevel} -d ./firmware
      cp ${pkgs.ubootRaspberryPi4_64bit}/u-boot.bin firmware/u-boot.bin
    '';
    populateRootCommands = "";
  };
  # the installation media is also the installation target,
  # so we don't want to provide the installation configuration.nix.
  installer = {
    cloneConfigExtra = ''
#  boot = {
#    initrd.kernelModules =  [ "w1-gpio" "w1-therm" ];
#    kernelParams = [ "cma=256M" ];
#  };
#  hardware = {
#    deviceTree  = {
#      enable = true;
#      base = "${pkgs.linux_rpi4}/dtbs" ;
#      overlays = ["${pkgs.linux_rpi4}/dtbs/overlays/w1-gpio.dtbo"];
#    };
#  };

  networking = {
    hostName = "aira-rpi4";
    wireless = {
      enable = true;  # Enables wireless support via wpa_supplicant.
      networks = {
#       Aira = { psk = "airapassword"; }; #default wifi settings
      };
    };
  };
  environment.systemPackages = with pkgs; [ nano wget ];
    '';
  };
}

