return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      integrations = {
        gitsigns = true,
        nvimtree = true,
      },
    },
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = { theme = "catppuccin" },
      sections = {
        lualine_c = {
          {
            "filename",
            path = 1,
          },
        },
      },
    },
  },
  { "nvim-tree/nvim-web-devicons", lazy = true },
}
