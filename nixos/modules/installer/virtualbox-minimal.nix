{ config, lib, pkgs, ... }:

with lib;

{
  imports =
    [ ../virtualisation/virtualbox-image.nix
      ../profiles/clone-config.nix
    ];

  # FIXME: UUID detection is currently broken
  boot.loader.grub.fsIdentifier = "provided";

  # Disable X11 for minimal image
  virtualisation.virtualbox.guest.x11 = false;

  system.fsPackages = [
    config.boot.kernelPackages.virtualboxGuestAdditions
  ];
}
