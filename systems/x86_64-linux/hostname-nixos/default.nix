{
  # If you have hardware.nix, please copy and import it.
  # You can use `nixos-generate-config` to generate
  # path: /etc/nixos/hardware-configuration.nix
  # imports = [ ./hardware.nix ];

  fileSystems."/" = {
    device = "/dev/sda1";
    fsType = "ext4";
  };

  cattery = {
    room.desktop.dev.enable = true;

    # Enable kde plasma desktop for this system
    desktop.plasma.enable = true;
  };

  # Compatibility Configuration
  # https://search.nixos.org/options?query=system.stateVersion&show=system.stateVersion
  system.stateVersion = "25.11";
}
