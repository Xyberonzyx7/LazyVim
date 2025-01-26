return {
  "MeanderingProgrammer/render-markdown.nvim",
  config = function()
    -- Set custom highlights
    vim.cmd([[
            highlight RenderMarkdownInfo guifg=#81a1c1     " Light Blue for 'Note'
            highlight RenderMarkdownSuccess guifg=#b3f6c0   " Light Green For 'Tip'
            highlight RenderMarkdownImportant guifg=#f2bc70" Orange for 'Important'
        ]])

    -- Setup the render-markdown plugin with custom callout configuration
    require("render-markdown").setup({
      callout = {
        note = { raw = "[!NOTE]", rendered = "󰋽 Note", highlight = "RenderMarkdownInfo" },
        tip = { raw = "[!TIP]", rendered = "󰌶 Tip", highlight = "RenderMarkdownSuccess" },
        important = { raw = "[!IMPORTANT]", rendered = "󰅾 Important", highlight = "RenderMarkdownImportant" },
        warning = { raw = "[!WARNING]", rendered = "󰀪 Warning", highlight = "RenderMarkdownWarn" },
        caution = { raw = "[!CAUTION]", rendered = "󰳦 Caution", highlight = "RenderMarkdownError" },
        -- Additional callouts as needed...
      },
    })
  end,
}
