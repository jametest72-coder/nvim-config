return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      mason.setup()
      mason_lspconfig.setup({
        ensure_installed = {
          "lua_ls",
          "tsserver",
          "pyright",
          "rust_analyzer",
          "gopls",
          "clangd",
        },
        automatic_installation = true,
      })

      -- LSP keybindings
      local opts = { noremap = true, silent = true }
      local on_attach = function(client, bufnr)
        opts.buffer = bufnr
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts)
        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
      end

      -- Setup language servers
      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              runtime = { version = "LuaJIT" },
              diagnostics = { globals = { "vim" } },
              workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
              },
            },
          },
        },
        tsserver = {},
        pyright = {},
        rust_analyzer = {},
        gopls = {},
        clangd = {},
      }

      for server, config in pairs(servers) do
        lspconfig[server].setup(vim.tbl_extend("force", {
          capabilities = capabilities,
          on_attach = on_attach,
        }, config))
      end

      -- Diagnostics
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
      })
    end,
  },
}
