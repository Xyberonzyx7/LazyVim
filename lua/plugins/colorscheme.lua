return {
  { "shaunsingh/nord.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nord",
    },
  },

  -- Configure transparency for Nord
  {
    "shaunsingh/nord.nvim",
    config = function()
      -- Set the options
      vim.g.nord_disable_background = true

      -- Apply the colorscheme
      vim.cmd([[colorscheme nord]])

      -- Ensure transparency is set
      vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
      vim.cmd([[highlight NonText guibg=NONE ctermbg=NONE]])
    end,
  },
}

-- -- tokyonight colorscheme
-- return {
--   {
--     -- Add other plugins here
--     "folke/tokyonight.nvim",
--     config = function()
--       require("tokyonight").setup({
--         transparent = true,
--         styles = {
--           sidebars = "transparent",
--           floats = "transparent",
--         },
--       })
--       vim.cmd([[colorscheme tokyonight]])
--     end,
--   },
-- }
