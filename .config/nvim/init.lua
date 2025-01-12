require("core.options") -- Load general options
require("core.keymaps") -- Load general keymaps

-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    error("Error cloning lazy.nvim:\n" .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

-- [[ Install plugins ]]
require("lazy").setup({
  require("plugins.neo-tree"),
  require("plugins.bufferline"),
  require("plugins.themes.catppuccin"),
  require("plugins.lualine"),
  require("plugins.telescope"),
  require("plugins.autocomplition"),
  require("plugins.lsp"),
  -- require("plugins.none-ls"),
  require("plugins.conform"),
  require("plugins.gitsigns"),
  require("plugins.indent-blankline"),
  require("plugins.misc"),
})
