{ config, lib, ... }:
{
  # Template for nixvim upstream plugin
  # Replace cord with actual plugin name
  plugins.cord = {
    enable = true;

    settings = {
      display = {
        theme = "catppuccin";
        flavor = "dark";
      };
      editor.tooltip = "Neovim";
      timestamp.reset_on_idle = true;
      idle = {
        enabled = true;
        timeout = 900000;
      };
    };
  };

}
