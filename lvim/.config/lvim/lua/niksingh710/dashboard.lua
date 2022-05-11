local header = {
  type = "text",
  val = require("niksingh710.header").dashboard(),
  opts = {
    position = "center",
    hl = "Comment",
  },
}
lvim.builtin.alpha.dashboard.section.header = header;
