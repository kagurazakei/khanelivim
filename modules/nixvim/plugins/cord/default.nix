_: {
  plugins.cord = {
    enable = true;
    lazyLoad.settings = {
      event = [
        "DeferredUIEnter"
      ];
    };
    settings = {
      display = {
        theme = "catppuccin";
      };
      editor.tooltip = "Neovim";
      timestamp.reset_on_idle = true;
      idle = {
        enabled = true;
        timeout = 900000;
      };
      text.workspace = "";
    };
  };
}
