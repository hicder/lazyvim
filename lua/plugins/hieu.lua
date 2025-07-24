-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
return {
  {
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    dependencies = {
      "mason.nvim",
      { "williamboman/mason-lspconfig.nvim", config = function() end },
    },
    opts = {
      servers = {
        rust_analyzer = {
          -- Prevent nvim-lspconfig from setting up rust_analyzer.
          -- LazyVim uses rustacean vim instead
          mason = false,
          enabled = false,
        },
        clangd = {
          filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "hpp" }, -- Exclude "proto" here
        }
      },
      diagnostics = {
        underline = false,
        virtual_text = {
          severity = { min = vim.diagnostic.severity.ERROR }
        }
      },
      document_highlight = false,
      inlay_hints = { enabled = true, exclude = { "go" } },
    },
  },
  {"catppuccin/nvim", name = "catppuccin", priority = 1000},
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      on_highlights = function(hl, c)
        hl.LspReferenceText = { bg = none}
        hl.LspReferenceRead = { bg = none}
        hl.LspReferenceWrite = { bg = none}
        hl.CursorLine = { bg = none, fg = none }
      end,
    }
  },
  { 'projekt0n/github-nvim-theme', name = 'github-theme' },
  {
    'LazyVim/LazyVim',
    opts = {
      colorscheme = "github_dark",
    },
  }
}
