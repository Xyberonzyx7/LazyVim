-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- suppress markdown warnings
require("lint").linters_by_ft = {
  markdown = {
    "markdownlint",
  },
}

require("lint.linters.markdownlint").config = {
  default = {
    MD013 = false,
  },
}
