return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    opts = {
      ensure_installed = {
        -- Mason PACKAGE names (important!)
        "lua_ls",
      },
    },
    config = function(_, opts)
      require("mason-lspconfig").setup(opts)
    end,
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Lua LS (LSPConfig server name is lua_ls)
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false },
          },
        },
      })

      -- Add more servers here when you want them, e.g.
      -- lspconfig.ts_ls.setup({ capabilities = capabilities })
      -- lspconfig.bashls.setup({ capabilities = capabilities })
    end,
  },
  {
    -- Mason Tool Installer for formatters/linters (optional but nice)
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "mason.nvim" },
    opts = {
      ensure_installed = {
        -- Mason TOOL names (not LSPConfig names)
        "lua-language-server",
        "stylua",
        -- add later if you want:
        -- "prettier",
        -- "eslint_d",
      },
      auto_update = false,
    },
  },
}
