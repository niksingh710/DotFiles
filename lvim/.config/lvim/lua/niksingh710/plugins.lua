lvim.plugins = {
    {"wakatime/vim-wakatime"},
    {"folke/tokyonight.nvim"},
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    },{'neoclide/coc.nvim', branch = 'release'},
    {"mg979/vim-visual-multi"},{'tzachar/cmp-tabnine', after = "nvim-cmp", run='powershell ./install.ps1', requires = 'hrsh7th/nvim-cmp'},
 -- {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'},
   {'nvim-telescope/telescope-media-files.nvim',
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = {"png", "webp", "jpg", "jpeg"},
      find_cmd = "rg" -- find command (defaults to `fd`)
    }
  },
}


-- Additional Plugins
-- lvim.plugins = {
--     {"folke/tokyonight.nvim"},
--     {
--       "folke/trouble.nvim",
--       cmd = "TroubleToggle",
--     },
--     -- {"mg979/vim-visual-multi"},
--    {'nvim-telescope/telescope-media-files.nvim',media_files = {
--       -- filetypes whitelist
--       -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
--       filetypes = {"png", "webp", "jpg", "jpeg"},
--       find_cmd = "rg" -- find command (defaults to `fd`)
--     }
-- },
-- }


