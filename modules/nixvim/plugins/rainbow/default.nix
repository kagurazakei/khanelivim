_: {
  plugins.rainbow = {
    enable = true;
    lazyLoad.settings = {
      event = [ "DeferredUIEnter" ];
    };
    settings = {
      auto_start = 1;
      auto_close = 1;
      browser = "firefox";
      echo_preview_url = 1;
      preview_options = {
        disable_sync_scroll = 1;
        sync_scroll_type = "middle";
        disable_filename = 1;
      };
      markdown_css = "/Users/username/markdown.css";
      highlight_css.__raw = "vim.fn.expand('~/highlight.css')";
      port = "8080";
      page_title = "「\${name}」";
      theme = "dark";
    };
  };
}
