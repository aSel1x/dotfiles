local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("core.options")
require("core.keymaps")

require("lazy").setup({
  require("plugins.lsp"),
  require("plugins.completion"),
  require("plugins.ui"),
  require("plugins.tree"),
  -- require("plugins.dap"),
  require("plugins.formatter"),
  require("plugins.autopairs"),
  require("plugins.telescope"),
  require("plugins.whichkey"),
  require("plugins.gitsigns"),
  require("plugins.bufferline"),
})
