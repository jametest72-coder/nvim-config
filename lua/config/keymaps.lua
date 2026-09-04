-- Keybindings
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key is space
-- This is set in options.lua

-- Navigation
map("n", "<C-h>", "<C-w>h", opts)            -- Navigate left
map("n", "<C-j>", "<C-w>j", opts)            -- Navigate down
map("n", "<C-k>", "<C-w>k", opts)            -- Navigate up
map("n", "<C-l>", "<C-w>l", opts)            -- Navigate right

-- Resize windows
map("n", "<C-Up>", ":resize +2<CR>", opts)
map("n", "<C-Down>", ":resize -2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Buffers
map("n", "<leader>bn", ":bnext<CR>", opts)              -- Next buffer
map("n", "<leader>bp", ":bprevious<CR>", opts)          -- Previous buffer
map("n", "<leader>bd", ":bdelete<CR>", opts)            -- Delete buffer
map("n", "<leader>ba", ":%bd<CR>", opts)                -- Delete all buffers

-- File operations
map("n", "<leader>w", ":w<CR>", opts)                   -- Save
map("n", "<leader>q", ":q<CR>", opts)                   -- Quit
map("n", "<leader>x", ":wq<CR>", opts)                  -- Save and quit

-- Search and replace
map("n", "<leader>sr", ":%s/", opts)                    -- Search and replace

-- Clear highlights
map("n", "<Esc>", ":noh<CR>", opts)

-- Indent
map("v", "<", "<gv", opts)                  -- Indent left
map("v", ">", ">gv", opts)                  -- Indent right

-- Move lines
map("n", "<A-j>", ":m .+1<CR>==", opts)     -- Move line down
map("n", "<A-k>", ":m .-2<CR>==", opts)     -- Move line up
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts) -- Move selection down
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts) -- Move selection up

-- Terminal
map("n", "<leader>th", ":split | terminal<CR>", opts)  -- Horizontal terminal
map("n", "<leader>tv", ":vsplit | terminal<CR>", opts) -- Vertical terminal
map("t", "<Esc>", "<C-\\><C-n>", opts)                  -- Exit terminal mode
