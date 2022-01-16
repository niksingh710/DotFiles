lvim.plugins = {
    {"wakatime/vim-wakatime"},
    {"folke/tokyonight.nvim"},
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    },
    {"mg979/vim-visual-multi"},
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


