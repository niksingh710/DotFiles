require "niksingh710.plugins"
require "niksingh710.whichkey"
require "niksingh710.dashboard"
require "niksingh710.keymaps"
require "niksingh710.options"
require "niksingh710.autocommands"

lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
lvim.transparent_window = true

lvim.leader = "space"

lvim.builtin.alpha.active = true
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.lsp.automatic_servers_installation = true

-- To load specific servers on single file format
local server_opts = {
    single_file_support = true,
}
local servers ={
  "gopls",
  "tsserver",
  "pyright",
  "jdtls",
}
for _, v in ipairs(servers) do
    require("lvim.lsp.manager").setup(v,server_opts)
end

