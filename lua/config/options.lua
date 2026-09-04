-- Core Neovim options and settings

local opt = vim.opt
local g = vim.g

-- Leader key
g.mapleader = " "
g.maplocalleader = "\\"

-- General
opt.number = true                    -- Line numbers
opt.relativenumber = true            -- Relative line numbers
opt.mouse = "a"                      -- Enable mouse
opt.clipboard = "unnamedplus"        -- Use system clipboard
opt.undofile = true                 -- Persistent undo
opt.ignorecase = true               -- Case insensitive search
opt.smartcase = true                -- Smart case search

-- Indentation
opt.expandtab = true                -- Use spaces instead of tabs
opt.shiftwidth = 2                  -- Shift width
opt.tabstop = 2                     -- Tab size
opt.softtabstop = 2                 -- Soft tab stop
opt.autoindent = true               -- Auto indent
opt.smartindent = true              -- Smart indent

-- UI
opt.termguicolors = true            -- True color support
opt.cursorline = true               -- Highlight current line
opt.signcolumn = "yes"              -- Always show sign column
opt.wrap = false                    -- Don't wrap long lines
opt.scrolloff = 8                   -- Scroll offset
opt.sidescrolloff = 8               -- Side scroll offset

-- Performance
opt.updatetime = 250                -- Update time for plugins
opt.timeoutlen = 300                -- Timeout for key sequences
opt.completeopt = "menu,menuone,noselect"  -- Completion options

-- Split behavior
opt.splitbelow = true               -- Split below
opt.splitright = true               -- Split right
