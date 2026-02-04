_: {
  plugins.nerdy = {
    enable = true;
    lazyLoad.settings = {
      cmd = [
        "Nerdy"
      ];
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>in";
      action = "<cmd>Nerdy list<CR>";
      options = {
        desc = "Nerd Font Telescope";
      };
    }
  ];
}
