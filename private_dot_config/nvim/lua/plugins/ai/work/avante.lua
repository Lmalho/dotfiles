return {
	"yetone/avante.nvim",
	event = "VeryLazy",
	version = false, -- Never set this value to "*"! Never!
	---@module 'avante'
	---@type avante.Config
	enabled = false,
	opts = {
		-- add any opts here
		-- this file can contain specific instructions for your project
		instructions_file = "GEMINI.md",
		-- for example
		provider = "gemini",
		providers = {
			gemini = {
				endpoint = "https://generativelanguage.googleapis.com/v1beta/models",
				model = "gemini-2.5-flash",
				timeout = 30000, -- Timeout in milliseconds
				context_window = 1048576,
				use_ReAct_prompt = true,
				extra_request_body = {
					generationConfig = {
						temperature = 0.75,
					},
				},
			},
		},
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		--- The below dependencies are optional,
		"hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
		"folke/snacks.nvim", -- for input provider snacks
		"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
		"zbirenbaum/copilot.lua", -- for providers='copilot'
	},
}
