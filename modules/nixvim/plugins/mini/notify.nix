{ config, lib, ... }:
{
  plugins = lib.mkIf (config.khanelivim.ui.notifications == "mini-notify") {
    mini = {
      enable = true;

      modules = {
        notify = {
          enable = true;
          # Configuration for mini.notify
          # Uses vim.notify() interface
        };
      };
    };
  };
}
