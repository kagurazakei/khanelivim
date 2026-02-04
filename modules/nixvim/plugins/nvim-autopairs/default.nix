_: {
  plugins.nvim-autopairs = {
    enable = true;
    lazyLoad.settings = {
      event = [
        "DeferredUIEnter"
      ];
    };
    settings = {
      disable_filetype = [ "TelescopePrompt" ];
      fast_wrap = {
        map = "<M-e>";
        end_key = "$";
      };
    };
  };
}
