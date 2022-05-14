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
        css = {
          RGB      = true; -- #RGB hex codes
          RRGGBB   = true; -- #RRGGBB hex codes
          names    = true; -- "Name" codes like Blue,BLUE,blue
          RRGGBBAA = true; -- #RRGGBBAA hex codes
          rgb_fn   = true; -- CSS rgb() and rgba() functions
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
  { 'mattn/emmet-vim' },
}
