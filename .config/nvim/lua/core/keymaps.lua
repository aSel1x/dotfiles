-- Setting the leader key
vim.g.mapleader = " " -- Space as the leader key

-- Key options
local opts = { noremap = true, silent = true }

-- Disable the default action of the space key
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Save file
vim.keymap.set("n", "<leader>w", ":w<CR>", opts) -- Leader + w for saving

-- Close file
vim.keymap.set("n", "<leader>q", ":q<CR>", opts) -- Leader + q for quitting

-- Buffers
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", opts) -- Next buffer
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", opts) -- Previous buffer
vim.keymap.set("n", "<leader>bc", ":Bdelete!<CR>", opts) -- Close buffer

-- Windows (splits)
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Vertical split
vim.keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Horizontal split
vim.keymap.set("n", "<leader>sc", ":close<CR>", opts) -- Close current window

-- Navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", opts) -- Move to split above
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts) -- Move to split below
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts) -- Move to split left
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", opts) -- Move to split right

-- Search
vim.keymap.set("n", "/", "/\\v", { noremap = true }) -- Simplified search using regular expressions

-- Switching between tabs
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", opts) -- New tab
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", opts) -- Close current tab
vim.keymap.set("n", "<leader>to", ":tabonly<CR>", opts) -- Close all tabs except the current one
