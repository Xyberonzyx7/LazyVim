return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'echasnovski/mini.nvim' -- use this if you are using the mini.nvim suite
      -- 'echasnovski/mini.icons' -- uncomment this if you use standalone mini plugins
      -- 'nvim-tree/nvim-web-devicons' -- uncomment this if you prefer nvim-web-devicons
    },
    config = function()
      require("render-markdown").setup({
        file_types = {"markdown", "quarto"},
        render_modes = {"n", "c", "t"},
        anti_conceal = {
          enabled = true,
          ignore = {code_background = true, sign = true},
        },
      })
    end
  },
}
