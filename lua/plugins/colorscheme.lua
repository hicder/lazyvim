return {
  -- Auto Dark Mode plugin
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      update_interval = 2000, -- Check every 2 seconds (adjust as needed)
      set_dark_mode = function()
        vim.o.background = "dark"
        vim.cmd.colorscheme("github_dark") -- Replace with your preferred dark theme
      end,
      set_light_mode = function()
        vim.o.background = "light"
        vim.cmd.colorscheme("github_light") -- Replace with your preferred light theme
      end,
    },
  },

  -- Your colorscheme plugins
  { "folke/tokyonight.nvim" }, -- Example dark theme
  { "catppuccin/nvim" },      -- Example light theme (Catppuccin has flavors like 'latte' for light)
}
