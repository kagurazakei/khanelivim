{
  config,
  lib,
  ...
}:
{
  plugins.nerdy = {
    enable = true;
    lazyLoad.enable = config.plugins.lz-n.enable;
    lazyLoad.settings = {
      event = [ "DeferredUIEnter" ];
    };
  };

  keymaps = lib.optionals config.plugins.nerdy.enable [
    {
      mode = "n";
      key = "<leader>ng";
      action = "<cmd>Nerdy list<CR>";
      options = {
        desc = "Nerd Font Picker";
      };
    }
  ];
}
