return {
  "akinsho/bufferline.nvim",
  dependencies = {
    "moll/vim-bbye",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("bufferline").setup({
      options = {
        close_command = "Bdelete! %d",
        right_mouse_command = "Bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
      },
    })
    local opts = { noremap = true, silent = true, desc = "Go to Buffer" }
  end,
}
