return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		enabled = false,
		config = function()
			vim.g.copilot_proxy_strict_ssl = false
			require("copilot").setup({
				suggestion = {
					enabled = true,
					auto_trigger = true,
					keymap = {
						accept = "<C-a>",
						dismiss = "<C-e>",
					},
				},
				panel = { enabled = true },
				filetypes = {
					yaml = true,
					markdown = true,
					help = false,
					gitcommit = false,
					gitrebase = false,
					hgcommit = false,
					svn = false,
					cvs = false,
					["."] = false,
					["*"] = true,
				},
				logger = {
					file = vim.fn.stdpath("log") .. "/copilot-lua.log",
					file_log_level = vim.log.levels.DEBUG,
					print_log_level = vim.log.levels.DEBUG,
					trace_lsp = "debug", -- "off" | "debug" | "verbose"
					trace_lsp_progress = true,
					log_lsp_messages = true,
				},
			})
		end,
	},
	-- {
	-- 	"zbirenbaum/copilot-cmp",
	-- 	config = function()
	-- 		require("copilot_cmp").setup()
	-- 	end,
	-- },
}
