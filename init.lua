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

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = { "*.pdf", "*.png", "*.jpg", "*.jpeg", "*.gif" },
  callback = function()
    local file_path = vim.fn.expand("%:p")
    -- Check if the file is the correct type before executing
    if
      file_path:match("%.pdf$")
      or file_path:match("%.png$")
      or file_path:match("%.jpg$")
      or file_path:match("%.jpeg$")
      or file_path:match("%.gif$")
    then
      -- Use vim.fn.jobstart to open the file in Edge without affecting buffers
      vim.fn.jobstart({
        "cmd.exe",
        "/c",
        "start",
        '""',
        '"C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe"',
        vim.fn.shellescape(file_path),
      }, { detach = true })
    end
  end,
})
