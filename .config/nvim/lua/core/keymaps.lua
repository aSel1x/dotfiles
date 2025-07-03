vim.g.mapleader = " "
local map = vim.keymap.set

-- Лидер и базовые действия
map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
map("n", "<leader>w", ":w<CR>", { desc = "Save file" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })

-- Открыть/закрыть файловое дерево
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })

-- Буферы: переключение (требует bufferline)
map("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next Buffer" })
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Previous Buffer" })
