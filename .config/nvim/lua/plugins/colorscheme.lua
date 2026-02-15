return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = true, -- set false if you don’t want terminal transparency
      integrations = {
        treesitter = true,
        telescope = true,
        cmp = true,
        gitsigns = true,
        which_key = true,
        native_lsp = { enabled = true },
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")

      -- Extra safety: make sure backgrounds don't override terminal transparency
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
  },
}
