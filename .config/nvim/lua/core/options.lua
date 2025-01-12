-- Basic settings
vim.o.number = true -- Enable line numbers
vim.o.relativenumber = true -- Enable relative line numbers
vim.o.mouse = "a" -- Enable mouse support
vim.o.clipboard = "unnamedplus" -- Sync clipboard with the system
vim.o.undofile = true -- Save undo history
vim.o.ignorecase = true -- Case-insensitive search
vim.o.smartcase = true -- Smart case sensitivity (if the search contains uppercase letters, it becomes case-sensitive)
vim.o.termguicolors = true -- Enable 24-bit colors
vim.o.scrolloff = 8 -- Number of lines to keep above and below the cursor when scrolling
vim.o.sidescrolloff = 8 -- Number of columns to keep to the left and right of the cursor when horizontally scrolling

-- Tab and indentation settings
vim.o.tabstop = 4 -- Number of spaces a tab counts for
vim.o.shiftwidth = 4 -- Number of spaces for auto-indentation
vim.o.expandtab = true -- Convert tabs to spaces
vim.o.autoindent = true -- Automatically indent new lines
vim.o.smartindent = true -- Smart auto-indentation

-- Interface settings
vim.o.splitbelow = true -- New horizontal splits open below the current window
vim.o.splitright = true -- New vertical splits open to the right of the current window
vim.o.cursorline = true -- Highlight the current line
vim.o.showmode = false -- Hide the mode line (e.g., -- INSERT --)
vim.wo.signcolumn = "yes" -- Always show the sign column (for diagnostics and git)

-- Performance settings
vim.o.updatetime = 250 -- Decrease update time (for faster plugin response)
vim.o.timeoutlen = 300 -- Time to wait for a mapped sequence to complete (in milliseconds)

-- Search settings
vim.o.hlsearch = true -- Highlight search results
vim.o.incsearch = true -- Incremental search (search as you type)

-- File settings
vim.o.swapfile = false -- Do not create swap files
vim.o.backup = false -- Do not create backup files
vim.o.writebackup = false -- Do not create backup files while writing

-- Autocompletion settings
vim.o.completeopt = "menuone,noselect" -- Improved autocompletion experience
