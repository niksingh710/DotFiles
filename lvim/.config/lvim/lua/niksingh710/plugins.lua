lvim.plugins = {
  { "mg979/vim-visual-multi" },
  { 'neoclide/coc.nvim', branch = 'release' },
  { "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp", event = "InsertEnter" },
  { "wakatime/vim-wakatime" },
  {
    'wfxr/minimap.vim',
    run = "cargo install --locked code-minimap",
    cmd = { "Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight" },
    config = function()
      vim.cmd("let g:minimap_width = 10")
      vim.cmd("let g:minimap_auto_start = 1")
      vim.cmd("let g:minimap_auto_start_win_enter = 1")
    end,
  },
  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("numb").setup {
        show_numbers = true,
        show_cursorline = true,
      }
    end,
  },
  {
    "npxbr/glow.nvim",
    ft = { "markdown" },
    config = function()
      vim.cmd("let g:glow_border = 'rounded'")
      vim.cmd("let g:glow_use_pager = v:true")
    end,
  },
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
      }
    end
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require "lsp_signature".setup()
    end
  },
  {
    'folke/tokyonight.nvim',
    config = function()
      vim.cmd("let g:tokyonight_style = 'night'")
    end
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require("colorizer").setup {
        '*';
        DEFAULT_OPTIONS = {
          RGB      = true; -- #RGB hex codes #123
          RRGGBB   = true; -- #RRGGBB hex codes #223344
          names    = true; -- "Name" codes like Blue,BLUE,blue
          RRGGBBAA = true; -- #RRGGBBAA hex codes #44556611
          rgb_fn   = true; -- CSS rgb() and rgba() functions rgb(22,33,44)
          hsl_fn   = true; -- CSS hsl() and hsla() functions
          css      = true; -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
          css_fn   = true; -- Enable all CSS *functions*: rgb_fn, hsl_fn
          -- Available modes: foreground, background
          mode     = 'background'; -- Set the display mode.
        }
      }
    end
  },
  { "p00f/nvim-ts-rainbow" },
  { "windwp/nvim-ts-autotag" },
  {
    "aca/emmet-ls",
    config = function()
      local lspconfig = require("lspconfig")
      local configs = require("lspconfig/configs")

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true
      capabilities.textDocument.completion.completionItem.resolveSupport = {
        properties = {
          "documentation",
          "detail",
          "additionalTextEdits",
        },
      }

      if not lspconfig.emmet_ls then
        configs.emmet_ls = {
          default_config = {
            cmd = { "emmet-ls", "--stdio" },
            filetypes = {
              "html",
              "css",
              "javascript",
              "typescript",
              "eruby",
              "typescriptreact",
              "javascriptreact",
              "svelte",
              "vue",
              "md",
            },
            settings = {},
          },
        }
      end
      lspconfig.emmet_ls.setup({ capabilities = capabilities })
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
