{ config, ... }:
{
  plugins = {
    bufferline.settings = {
      highlights =
        let
          commonBgColor = "#1E1E2E";
          commonFgColor = "#11121D";

          commonSelectedAttrs = {
            bg = commonBgColor;
          };

          # Define a set with common selected attributes
          selectedAttrsSet = builtins.listToAttrs (
            map
              (name: {
                inherit name;
                value = commonSelectedAttrs;
              })
              [
                # "separator_selected" # Handled uniquely
                "buffer_selected"
                "tab_selected"
                "numbers_selected"
                "close_button_selected"
                "duplicate_selected"
                "modified_selected"
                "info_selected"
                "warning_selected"
                "error_selected"
                "hint_selected"
                "diagnostic_selected"
                "info_diagnostic_selected"
                "warning_diagnostic_selected"
                "error_diagnostic_selected"
                "hint_diagnostic_selected"
              ]
          );
          # Merge the common selected attributes with the unique attributes
        in
        selectedAttrsSet
        // {
          fill = {
            bg = commonFgColor;
          };
          separator = {
            fg = commonFgColor;
          };
          separator_visible = {
            fg = commonFgColor;
          };
          separator_selected = {
            bg = commonBgColor;
            fg = commonFgColor;
          };
        };
    };

    lualine.settings.options.theme = "catppuccin";
  };
  colorschemes = {
    catppuccin = {
      lazyLoad.enable = config.plugins.lz-n.enable;

      settings = {
        default_integrations = true;
        dim_inactive = {
          enabled = false;
          percentage = 0.25;
        };

        flavour = "mocha";

        integrations = {
          aerial = true;
          cmp = true;
          dap = {
            enabled = true;
            enable_ui = true;
          };
          dap_ui = true;
          diffview = true;
          fidget = true;
          gitsigns = true;
          harpoon = true;
          headlines = true;
          hop = true;
          leap = true;
          lsp_trouble = true;
          markdown = true;
          mason = true;
          mini.enabled = true;

          native_lsp = {
            enabled = true;
            virtual_text = {
              errors = [ "italic" ];
              hints = [ "italic" ];
              warnings = [ "italic" ];
              information = [ "italic" ];
            };
            underlines = {
              errors = [ "underline" ];
              hints = [ "underline" ];
              warnings = [ "underline" ];
              information = [ "underline" ];
            };
            inlay_hints = {
              background = true;
            };
          };
          navic = {
            enabled = true;
          };
          neogit = true;
          neotree = false;
          neotest = true;
          noice = true;
          notify = true;
          overseer = true;
          rainbow_delimiters = true;
          sandwich = true;
          semantic_tokens = true;
          symbols_outline = true;
          treesitter = true;
          ufo = true;
          which_key = true;
        };

        show_end_of_buffer = true;
        term_colors = true;
        transparent_background = true;
      };
    };

    base16 = {
      lazyLoad.enable = config.plugins.lz-n.enable;
      settings = {
        telescope_borders = true;
        dapui = false;
        indentblankline = true;
        ts_rainbow = true;
      };
    };
    oxocarbon = {
      lazyLoad.enable = config.plugins.lz-n.enable;
    };
    tokyonight = {
      lazyLoad.enable = config.plugins.lz-n.enable;
      settings = {
        style = "moon";
        default_integrations = true;
        transparent = false;
        terminal_colors = true;
        styles = {
          comments.italic = true;
          keywords.italic = true;
          functions = { };
          variables = { };
          sidebars = "dark";
          floats = "dark";
        };
        hide_inactive_statusline = false;
        dim_inactive = false;
        lualine_bold = false;
        on_colors = "function(colors) end";
        on_highlights = "function(highlights, colors) end";
      };
    };
  };
}
