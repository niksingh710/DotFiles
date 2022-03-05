-- Normal Mode Bindings
local normal = {
  ['<C-s>'] = ':w<cr>',
  ['<C-a>'] = 'gg0vG$',
  ['dd'] = '"_dd',
  ['d'] = '"_d',
  ['c'] = '"_c',
}

-- Insert Mode Bindings
local insert = {
  ['<C-s>'] = '<Esc>:w<cr>',
  ['<C-a>'] = '<Esc>gg0vG$',
  ['jk'] = '<Esc>',
}

-- Visual Mode Bindings
local visual = {
  ['<C-s>'] = '<Esc>:w<cr>',
  ['<C-a>'] = '<Esc>gg0vG$',
  ['jk'] = '<Esc>',
}

lvim.keys.normal_mode = normal
lvim.keys.insert_mode = insert
lvim.keys.visual_mode = visual

-- plugins keymaps
local status_ok, actions = pcall(require, "telescope.actions")
if status_ok then
  lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}
end
