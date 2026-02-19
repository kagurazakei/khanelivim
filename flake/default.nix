{
  inputs,
  lib,
  self,
  ...
}:

{
  # ------------------------
  # Imports
  # ------------------------
  imports = [
    ./apps
    ./nixvim.nix
    ./overlays.nix
    ./pkgs-by-name.nix

    # Import partitions as a set, do NOT call it
    (import inputs.flake-parts.flakeModules.partitions)
  ];

  # ------------------------
  # Partitions
  # ------------------------
  partitions = {
    dev = {
      module = ./dev;

      # If ./dev expects args, import it as a set
      extraInputsFlake = (import ./dev { inherit inputs self lib; });
    };
  };

  # ------------------------
  # Partitioned outputs
  # ------------------------
  partitionedAttrs = {
    checks = "dev";
    devShells = "dev";
    formatter = "dev";
  };

  # ------------------------
  # Per-system configuration
  # ------------------------
  perSystem =
    { config, system, ... }:
    let
      pkgs = import inputs.nixpkgs {
        inherit system;
        overlays = lib.attrValues self.overlays;
        config = {
          allowUnfree = true;
          # allowAliases = false; # Uncomment if needed
        };
      };
    in
    {
      _module.args.pkgs = pkgs;

      # Reference your main package here
      packages.default = config.packages.khanelivim;
    };
}
