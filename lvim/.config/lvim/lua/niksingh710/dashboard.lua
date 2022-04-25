local header = {
  type = "text",
  val = require("header").dashboard(),
  opts = {
    position = "center",
    hl = "Comment",
  },
}
lvim.builtin.alpha.dashboard.section.header = header;
