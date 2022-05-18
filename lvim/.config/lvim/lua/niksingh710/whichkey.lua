lvim.builtin.which_key.mappings["C"] = {
  name = "+Coc",
  d = { "<cmd>CocDiagnostics<cr>", "Diagnostics Coc" },
  f = { "<cmd>CocFix<cr>", "Fix" },
  h = { "<cmd>call CocAction('doHover')<cr>", "hover" },
}
lvim.builtin.which_key.mappings["S"] = {
  name = "+Split",
  v = { "<cmd>vs<cr>", "Vertical Split" },
  h = { "<cmd>hs<cr>", "Horizontal Split" },
}

lvim.builtin.which_key.mappings["m"] = { "<cmd>MinimapToggle<cr>", "MiniMap Toggle" }
lvim.builtin.which_key.mappings["M"] = {
  name = "+MarkDown Preview",
  p = { "<cmd>Glow<cr>", "MarkDown Preview (Glow)" },
  b = { "<cmd>MarkdownPreviewToggle<cr>", "MarkDown Preview (Glow)" }
}
lvim.builtin.which_key.mappings["t"] = {
  name = '+Trouble Check',
  q = { "<cmd>TroubleToggle quickfix<cr>", "Quick Fix" },
  l = { "<cmd>TroubleToggle lsp_references<cr>", "Lsp Reference" },
  t = { "<cmd>TroubleToggle <cr>", "Toggle" }
}
