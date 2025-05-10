return {
	"GeorgesAlkhouri/nvim-aider",
	cmd = "Aider",
	args = {
		"--no-auto-commits",
		"--pretty",
		"--stream",
		"--model github_copilot/gpt-4o",
	},
	-- Example key mappings for common actions:
	keys = {
		{ "<leader>aga/", "<cmd>Aider toggle<cr>", desc = "Toggle Aider" },
		{ "<leader>agas", "<cmd>Aider send<cr>", desc = "Send to Aider", mode = { "n", "v" } },
		{ "<leader>agac", "<cmd>Aider command<cr>", desc = "Aider Commands" },
		{ "<leader>agab", "<cmd>Aider buffer<cr>", desc = "Send Buffer" },
		{ "<leader>aga+", "<cmd>Aider add<cr>", desc = "Add File" },
		{ "<leader>aga-", "<cmd>Aider drop<cr>", desc = "Drop File" },
		{ "<leader>agar", "<cmd>Aider add readonly<cr>", desc = "Add Read-Only" },
		{ "<leader>agaR", "<cmd>Aider reset<cr>", desc = "Reset Session" },
		-- Example>nvim-tree.lua integration if needed
		-- { "<leader>aga+", "<cmd>AiderTreeAddFile<cr>", desc = "Add File from Tree to Aider", ft = "NvimTree" },
		-- { "<leader>aga-", "<cmd>AiderTreeDropFile<cr>", desc = "Drop File from Tree from Aider", ft = "NvimTree" },
	},
	dependencies = {
		"folke/snacks.nvim",
		--- The below dependencies are optional
		"catppuccin/nvim",
	},
	config = true,
}
