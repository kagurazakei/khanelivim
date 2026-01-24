{ config, ... }:
{
  # Template for nixvim upstream plugin
  # Replace kitty-scrollback with actual plugin name
  plugins.kitty-scrollback = {
    enable = true;
    lazyLoad.enable = config.plugins.lz-n.enable;
    lazyLoad.settings = {
      event = [
        "DeferredUIEnter"
      ];
    };
    settings = {
      myconfig.kitty_get_text.ansi = false;
      ksb_builtin_last_cmd_output.ansi = false;
    };
  };

}
