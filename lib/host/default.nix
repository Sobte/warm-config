{
  # default vars
  host = {
    # Your name
    name = "nixos";
    # Your real name (currently used as git name)
    realName = "NixOS";
    # Your email
    email = {
      address = "nixos@example.com";
      # smtp.host = "smtp.example.com";
      # imap.host = "imap.example.com";
    };
    gpg = {
      # If you want git to use gpg, you can fill in the key id here
      signKey = "";
      encryptKey = "";
    };
    # Fill in the key that all your hosts trust.
    # Note that they have large permissions and need to be saved offline.
    authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICz8fLDHIDhM5rbjNfUMzeHpKQjGcruV7MzKwL4/08p6"
    ];
    # starship config, see: https://starship.rs/config/
    starship.settings = builtins.fromTOML (builtins.readFile ./config/starship.toml);
  };
}
