{flake}: _final: prev: let
  nixpkgs-master-packages = import flake.inputs.nixpkgs-master {
    inherit (prev.stdenv) system;
    overlays = [
      flake.inputs.neovim-nightly-overlay.overlays.default
    ];
    config = {
      allowUnfree = true;
      allowAliases = false;
    };
  };
  neovim-unwrapped = flake.inputs.neovim-nightly-overlay.packages.${prev.stdenv.system}.default;
  inherit (nixpkgs-master-packages) luaPackages vimPlugins;
in {
  inherit
    (nixpkgs-master-packages)
    neovim-unwrapped
    claude-code
    github-copilot-cli
    opencode
    # TODO: Remove after hitting channel
    swift
    ;

  luaPackages =
    luaPackages
    // {
      #
      # Specific package overlays need to go in here to not get ignored
      #
      fzf-lua = luaPackages.fzf-lua.override {
        doCheck = false;
      };

      grug-far-nvim = luaPackages.grug-far-nvim.override {
        doCheck = false;
      };

      neotest = luaPackages.neotest.override {
        doCheck = false;
      };
    };

  vimPlugins = vimPlugins.extend (
    _self: super: {
      #
      # Specific package overlays need to go in here to not get ignored
      #
      fzf-lua = super.fzf-lua.overrideAttrs {
        doCheck = false;
      };

      grug-far-nvim = super.grug-far-nvim.overrideAttrs {
        doCheck = false;
      };

      neotest = super.neotest.overrideAttrs {
        doCheck = false;
      };
    }
  );
}
