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
			interactions = {
				chat = {
					adapter = {
						name = "gemini",
						model = "gemini-2.5-flash",
					},
				},
				inline = {
					adapter = {
						name = "gemini",
						model = "gemini-2.5-flash",
					},
				},
				cmd = {
					adapter = {
						name = "gemini",
						model = "gemini-2.5-flash",
					},
				},
			},
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			-- "nvim-telescope/telescope.nvim", -- Use telescope for help actions
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
			{
				"<leader>ac",
				":CodeCompanion /commit<cr>",
				desc = "Open CodeCompanion Commit Message",
			},
			{
				"<leader>ai",
				function()
					require("codecompanion").inline()
				end,
				desc = "CodeCompanion Inline Suggestions",
				mode = { "n", "v" },
			},
		},
	},
}
