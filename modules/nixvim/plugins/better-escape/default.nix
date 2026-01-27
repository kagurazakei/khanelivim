{ config, ... }:
{
  plugins.better-escape = {
    enable = true;

    lazyLoad.enable = config.plugins.lz-n.enable;
    lazyLoad.settings = {
      event = [
        "DeferredUIEnter"
      ];
    };
    settings = {
      timeout = "vim.o.timeoutlen";
      default_mappings = true;
    };
  };
}
