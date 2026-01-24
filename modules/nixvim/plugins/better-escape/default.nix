{ config, ... }:
{
  plugins.better-escape = {
    enable = true;

    lazyLoad.enable = config.plugins.lz-n.enable;
    lazyLoad.settings = {
      event = [
        "DeferredUIEnter"
      ];
    };
    settings = {
      timeout = "vim.o.timeoutlen";
      mapping = {
        i." "."<tab>".__raw = ''
          function()
            -- Defer execution to avoid side-effects
            vim.defer_fn(function()
                -- set undo point
                vim.o.ul = vim.o.ul
                require("luasnip").expand_or_jump()
            end, 1)
          end
        '';
      };
    };
  };

}
