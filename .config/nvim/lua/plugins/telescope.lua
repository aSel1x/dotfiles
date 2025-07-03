return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      local map = vim.keymap.set

      map("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
      map("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
      map("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
      map("n", "<leader>fh", builtin.help_tags, { desc = "Help Tags" })

      require("telescope").setup({
        defaults = {
          file_ignore_patterns = { "node_modules" },
        },
      })
    end,
  },
}
