return {
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          diagnostics = "nvim_lsp",
        },
        highlights = require("catppuccin.groups.integrations.bufferline").get(),
      })
    end,
  },
}
