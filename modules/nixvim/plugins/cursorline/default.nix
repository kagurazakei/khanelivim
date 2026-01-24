{ config, ... }:
{
  plugins.cursorline = {
    enable = true;
    lazyLoad.enable = config.plugins.lz-n.enable;
    lazyLoad.settings = {
      event = [
        "DeferredUIEnter"
      ];
    };
    settings = {
      cursorline = {
        enable = true;
        timeout = 1200;
        number = false;
      };
      cursorword = {
        enable = true;
        min_length = 3;
        hl = {
          underline = true;
        };
      };
    };
  };
}
