return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")
    local map = vim.keymap.set

    map("n", "<F5>", dap.continue, { desc = "DAP: Continue" })
    map("n", "<F10>", dap.step_over, { desc = "DAP: Step Over" })
    map("n", "<F11>", dap.step_into, { desc = "DAP: Step Into" })
    map("n", "<F12>", dap.step_out, { desc = "DAP: Step Out" })
  end,
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      require("dap-python").setup()
    end,
    dependencies = { "mfussenegger/nvim-dap" },
  },
  {
    "leoluz/nvim-dap-go",
    config = function()
      require("dap-go").setup()
    end,
    dependencies = { "mfussenegger/nvim-dap" },
  },
  {
    "simrat39/rust-tools.nvim",
    dependencies = { "mfussenegger/nvim-dap", "nvim-lua/plenary.nvim" },
    config = function()
      require("rust-tools").setup({
        dap = { adapter = require("rust-tools.dap").get_codelldb_adapter() },
      })
    end,
  },
}
