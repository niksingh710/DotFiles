lvim.transparent_window = true
local vo = vim.opt
vo.signcolumn = "yes"

lvim.autocommands.custom_groups = {
  { "BufWritePost", "*", ":NvimTreeRefresh" },
}
require('telescope').load_extension('media_files')


local server_opts = {
    single_file_support = true,
}

local servers ={
  "gopls",
  "tsserver",
}

for _, v in ipairs(servers) do
  require("lvim.lsp.manager").setup(v,server_opts)
end

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1
-- lvim.builtin.cmp.confirm_opts.select = true
