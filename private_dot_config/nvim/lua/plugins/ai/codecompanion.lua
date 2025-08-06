return {
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      spec = {
        { "<leader>a", group = "ai" },
      },
    },
  },
  {
    "olimorris/codecompanion.nvim",
    opts = {
 strategies = {
    chat = {
      adapter = "copilot",
    },
    inline = {
      adapter = "copilot",
    },
  },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", -- Use telescope for help actions
    },
    config = function(_, opts)
      local codecompanion = require("codecompanion")
      codecompanion.setup(opts)
    end,
      keys = {
        {
          "<leader>av",
          ":CodeCompanionChat Toggle<cr>",
          desc = "Open CodeCompanion Chat",
        },
        {
          "<leader>ap",
          ":CodeCompanionActions<cr>",
          desc = "Open CodeCompanion Actions",
        },
      }
  },
}
