{
  config,
  ...
}:
{
  plugins.undotree = {
    enable = true;

    lazyLoad.enable = config.plugins.lz-n.enable;
    lazyLoad.settings = {
      event = [ "DeferredUIEnter" ];
    };

    settings = {
      WindowLayout = 4;
      ShortIndicators = false;
      DiffpanelHeight = 10;
      DiffAutoOpen = true;
      SetFocusWhenToggle = true;
      SplitWidth = 40;
      TreeNodeShape = "*";
      TreeVertShape = "|";
      TreeSplitShape = "/";
      TreeReturnShape = "\\";
      DiffCommand = "diff";
      RelativeTimestamp = true;
      HighlightChangedText = true;
      HighlightChangedWithSign = true;
      HighlightSyntaxAdd = "DiffAdd";
      HighlightSyntaxChange = "DiffChange";
      HighlightSyntaxDel = "DiffDelete";
      HelpLine = true;
      CursorLine = true;
    };
  };
}
