return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "alfaix/neotest-gtest",
    },
    opts = {
      quickfix = {
        open = function()
          if require("lazyvim.util").has("trouble.nvim") then
            require("trouble").open({ mode = "quickfix", focus = false })
          else
            vim.cmd("copen")
          end
        end,
      },
      output = { open_on_run = true },
      status = { virtual_text = true },
    },
    config = function(_, opts)
      require("neotest").setup({
        adapters = {
          require("neotest-gtest").setup({}),
          require("rustaceanvim.neotest"),
          require("neotest-golang"),
        },
      })
    end,
  },
}
