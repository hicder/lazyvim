-- return {}

return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false, -- Never set this value to "*"! Never!
    opts = {
      provider = "gemini_flash",
      providers = {
        gemini = {
          model = "gemini-2.5-pro",
          timeout = 30000,
          use_ReAct_prompt = true,
          extra_request_body = {
            generation_config = {
              temperature = 0,
            },
          },
        },
        gemini_flash = {
          __inherited_from = "gemini",
          model = "gemini-2.5-flash",
          timeout = 30000,
          use_ReAct_prompt = true,
          extra_request_body = {
            generationConfig = {
              temperature = 0,
            },
          },
        },
        moonshot = {
          endpoint = "https://api.moonshot.ai/v1",
          model = "kimi-k2-0711-preview",
          timeout = 30000,
          api_key_name = "MOONSHOT_API_KEY",
          extra_request_body = {
            temperature = 0.6,
            max_tokens = 32768,
          },
        },
        kimi_k2_groq = {
          __inherited_from = "openai",
          endpoint = "https://api.groq.com/openai/v1",
          model = "moonshotai/kimi-k2-instruct",
          timeout = 30000,
          api_key_name = "GROQ_API_KEY",
          extra_request_body = {
            temperature = 0.6,
            max_tokens = 16384,
          },
        },
        qwen3_cerebras = {
          __inherited_from = "openai",
          endpoint = "https://api.cerebras.ai/v1",
          api_key_name = "CEREBRAS_API_KEY",
          model = "qwen-3-coder-480b",
          timeout = 30000,
          extra_request_body = {
            temperature = 0.7,
          },
        }
      },
      behaviour = {
        auto_suggestions = false,
        auto_set_highlight_group = true,
        auto_set_keymaps = true,
        auto_apply_diff_after_generation = true,
        support_paste_from_clipboard = true,
      },
    },
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "echasnovski/mini.pick", -- for file_selector provider mini.pick
      "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
      "ibhagwan/fzf-lua", -- for file_selector provider fzf
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
