_: {
  plugins.neo-tree = {
    enable = true;

    lazyLoad.settings.cmd = [ "Neotree" ];

    settings = {
      close_if_last_window = true;

      filesystem = {
        filtered_items = {
          hide_dotfiles = false;
          hide_hidden = false;

          never_show_by_pattern = [
            ".direnv"
            ".git"
          ];

          visible = true;
        };

        follow_current_file = {
          enabled = true;
          leave_dirs_open = true;
        };

        use_libuv_file_watcher.__raw = ''vim.fn.has "win32" ~= 1'';
      };

      window = {
        width = 40;
        auto_expand_width = false;
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<C-n>";
      action = "<cmd>Neotree left toggle<CR>";
      options = {
        desc = "Explorer toggle";
      };
    }
  ];

  plugins.neocord = {
    enable = true;
    lazyLoad.settings.cmd = [ "Neocord" ];
  };
}
