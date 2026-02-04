_: {
  plugins.better-escape = {
    enable = true;
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
