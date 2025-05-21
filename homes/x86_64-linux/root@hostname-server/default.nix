let
  mkDefaultEnabled = {
    enable = true;
  };
in
{
  cattery = {
    cli-apps = {
      dev-kit = {
        git = mkDefaultEnabled;
        nix = mkDefaultEnabled;
      };

      nix = {
        home-manager = mkDefaultEnabled;
        nix-index = mkDefaultEnabled;
      };

      shell = {
        zsh = mkDefaultEnabled;
      };
    };
  };

  snowfallorg.user.enable = false;
}
