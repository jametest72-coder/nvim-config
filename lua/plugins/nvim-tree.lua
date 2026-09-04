return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 30,
          side = "left",
        },
        renderer = {
          indent_markers = {
            enable = true,
          },
          icons = {
            glyphs = {
              default = "📄",
              folder = "📁",
              folder_open = "📂",
              git = {
                untracked = "✗",
                ignored = "◌",
                unstaged = "M",
                staged = "S",
                unmerged = "U",
                renamed = "R",
                deleted = "D",
              },
            },
          },
        },
        filters = {
          dotfiles = false,
          custom = { "node_modules", ".git" },
        },
        actions = {
          open_file = {
            quit_on_open = false,
            window_picker = {
              enable = true,
            },
          },
        },
      })

      -- Keybindings
      local opts = { noremap = true, silent = true }
      vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
      vim.keymap.set("n", "<leader>E", ":NvimTreeFocus<CR>", opts)
    end,
  },
}
