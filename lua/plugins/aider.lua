return {
  "joshuavial/aider.nvim",
  config = function()
    require("aider").setup({
      auto_manage_context = true,
      default_bindings = false,
      debug = false,
      vim = true,
      ignore_buffers = {},
      -- only necessary if you want to change the default keybindings. <Leader>C is not a particularly good choice. It's just shown as an example.
      vim.api.nvim_set_keymap(
        "n",
        "<leader>aief",
        ":AiderOpen --model gemini/gemini-2.5-flash --no-auto-commits --edit-format diff-fenced --chat-mode diff-fenced --code-theme github-dark --user-input-color '#ffffff'<CR>",
        { noremap = true, silent = true }
      ),
      vim.api.nvim_set_keymap(
        "n",
        "<leader>aiep",
        ":AiderOpen --model gemini/gemini-2.5-pro --no-auto-commits --edit-format diff-fenced --chat-mode diff-fenced --code-theme github-dark --user-input-color '#ffffff'<CR>",
        { noremap = true, silent = true }
      ),
      vim.api.nvim_set_keymap(
        "n",
        "<leader>aia",
        ":AiderOpen --model gemini/gemini-2.5-flash --no-auto-commits --chat-mode ask --code-theme github-dark --user-input-color '#ffffff'<CR>",
        { noremap = true, silent = true }
      ),
    })
  end,
}
