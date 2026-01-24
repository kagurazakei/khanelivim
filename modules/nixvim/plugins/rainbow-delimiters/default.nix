_: {
  plugins.rainbow-delimiters = {
    enable = true;
    lazyLoad.settings = {
      event = [ "DeferredUIEnter" ];
    };

    # TODO: Plugin settings
    settings = {
      blacklist = [ "" ];
      highlight = [
        "RainbowDelimiterViolet"
        "RainbowDelimiterBlue"
        "RainbowDelimiterGreen"
      ];
    };
  };
}
