return {
  {
    "nvim-telescope/telescope.nvim",
    event = "VimEnter",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-fzf-native.nvim",
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup({
        defaults = {
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              prompt_position = "bottom",
              preview_width = 0.55,
            },
          },
          file_ignore_patterns = {
            "node_modules",
            ".git",
            "dist",
            "build",
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
          },
        },
      })

      telescope.load_extension("fzf")

      -- Keybindings
      local opts = { noremap = true, silent = true }
      vim.keymap.set("n", "<leader>ff", builtin.find_files, opts)
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, opts)
      vim.keymap.set("n", "<leader>fb", builtin.buffers, opts)
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, opts)
      vim.keymap.set("n", "<leader>fc", builtin.commands, opts)
      vim.keymap.set("n", "<leader>fd", builtin.diagnostics, opts)
      vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, opts)
    end,
  },
}
