# Neovim Config ⚡

A modern, feature-rich Neovim configuration for web development and systems programming.

## Features ✨

- **LSP Support** — Built-in Language Server Protocol for TypeScript, Python, Rust, Go, C/C++, and more
- **Completion** — Smart completion with `nvim-cmp` and LuaSnip snippets
- **Fuzzy Finding** — Telescope for file search, grep, and command palette
- **Syntax Highlighting** — Tree-sitter for beautiful, context-aware syntax highlighting
- **File Explorer** — nvim-tree for easy file navigation
- **Git Integration** — Gitsigns for inline git diff and status
- **Auto-pairs** — Automatic bracket and quote pairing
- **Status Line** — Modern lualine status bar
- **Dark Theme** — Tokyo Night colorscheme (premium dark theme)

## Installation 🚀

### Prerequisites
- Neovim 0.9+ (check with `nvim --version`)
- Git
- A C compiler (for Treesitter) — most systems have this
- Node.js (optional, for TypeScript/JavaScript LSP)

### Setup

1. **Clone this config:**
   ```bash
   git clone https://github.com/jametest72-coder/nvim-config ~/.config/nvim
   ```

2. **Launch Neovim:**
   ```bash
   nvim
   ```

   On first launch, `lazy.nvim` will automatically download and install all plugins. This may take a minute.

3. **Install LSP Servers** (optional but recommended):
   ```
   :Mason
   ```
   Then press `i` on any server to install it. Pre-configured for:
   - `lua_ls` — Lua
   - `tsserver` — TypeScript/JavaScript
   - `pyright` — Python
   - `rust_analyzer` — Rust
   - `gopls` — Go
   - `clangd` — C/C++

## Keybindings 🎮

### Navigation
| Keybind | Action |
|---------|--------|
| `<C-h/j/k/l>` | Move between splits |
| `<C-Up/Down/Left/Right>` | Resize splits |

### Files & Buffers
| Keybind | Action |
|---------|--------|
| `<leader>e` | Toggle file explorer |
| `<leader>E` | Focus file explorer |
| `<leader>w` | Save file |
| `<leader>q` | Quit |
| `<leader>bn` | Next buffer |
| `<leader>bp` | Previous buffer |
| `<leader>bd` | Delete buffer |

### Telescope (Fuzzy Finder)
| Keybind | Action |
|---------|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Buffers |
| `<leader>fc` | Commands |
| `<leader>fd` | Diagnostics |
| `<leader>fs` | Document symbols |

### LSP
| Keybind | Action |
|---------|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Go to references |
| `gi` | Go to implementation |
| `K` | Hover documentation |
| `<leader>ca` | Code actions |
| `<leader>rn` | Rename |
| `<leader>f` | Format |
| `<leader>e` | Show diagnostics |
| `[d` / `]d` | Previous/Next diagnostic |

### Editing
| Keybind | Action |
|---------|--------|
| `<A-j/k>` | Move line up/down |
| `gcc` | Toggle comment |
| `<Tab>` | Complete/Next snippet |
| `<S-Tab>` | Previous snippet |

**Leader key:** `<Space>`

## Project Structure 📂

```
~/.config/nvim/
├── init.lua              # Main entry point
└── lua/
    ├── config/
    │   ├── options.lua   # Core settings
    │   ├── keymaps.lua   # Keybindings
    │   └── lazy.lua      # Plugin manager setup
    └── plugins/          # Plugin configurations
        ├── colorscheme.lua
        ├── lsp.lua
        ├── completion.lua
        ├── telescope.lua
        ├── treesitter.lua
        ├── nvim-tree.lua
        ├── statusline.lua
        └── extras.lua
```

## Customization 🎨

### Change colorscheme
Edit `lua/plugins/colorscheme.lua` and replace `tokyonight` with another theme (e.g., `gruvbox`, `nord`, `dracula`).

### Add more LSP servers
In `lua/plugins/lsp.lua`, add servers to the `ensure_installed` table and configure them in the `servers` table.

### Modify keybindings
Edit `lua/config/keymaps.lua` to change or add new keybindings.

### Adjust editor settings
Edit `lua/config/options.lua` for indentation, line numbers, and other settings.

## Troubleshooting 🔧

### Plugins not installing
- Delete `~/.local/share/nvim/` and try again
- Make sure you have an internet connection and git is installed

### LSP not working
- Run `:Mason` and install the required LSP server
- Check `:LspInfo` to verify the server is attached to your buffer

### Treesitter not highlighting
- Run `:TSInstall <language>` to install the parser for your language
- Check `:TSModuleInfo` for installed parsers

### Slow performance
- Run `:checkhealth` to diagnose issues
- Consider disabling some plugins in `lua/plugins/` if your system is older

## Updates 🔄

Keep your config updated:
```bash
cd ~/.config/nvim
git pull
```

Lazy.nvim will auto-update plugins on startup.

## Resources 📚

- [Neovim Documentation](https://neovim.io/doc/)
- [Lazy.nvim](https://github.com/folke/lazy.nvim)
- [LSP Config](https://github.com/neovim/nvim-lspconfig)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)

---

Made with ❤️ for developers who love terminal editors. Happy coding! 🚀
