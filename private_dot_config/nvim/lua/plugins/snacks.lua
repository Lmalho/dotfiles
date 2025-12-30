return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		bigfile = { enabled = true },
		dashboard = { enabled = true },
		explorer = { enabled = false },
		indent = { enabled = true },
		input = { enabled = true },
		picker = { enabled = true },
		notifier = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = false },
		statuscolumn = { enabled = false },
		words = { enabled = true },
	},
    keys = {
        -- Top Pickers & Explorer
        { "<leader><leader>", function() Snacks.picker.buffers() end, desc = "Buffers" },
        { "<leader>/", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
        { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
        { "<leader>n", function() Snacks.picker.notifications() end, desc = "Notification History" },
        -- find
        { "<leader>sf", function() Snacks.picker.files() end, desc = "Find Files" },
        { "<leader>si", function() Snacks.picker.files({ hidden = true }) end, desc = "Find Hidden Files" },
        { "<leader>s.", function() Snacks.picker.recent() end, desc = "Recent" },
        -- git
        { "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git Log" },
        { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },
        -- Grep
        { "<leader>sg", function() Snacks.picker.grep({ hidden = true }) end, desc = "Grep" },
        { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Visual selection or word" },
        { "<leader>s/", function() Snacks.picker.grep_buffers() end, desc = "Grep Open Buffers" },
        -- search
        { "<leader>ss", function() Snacks.picker.pickers() end, desc = "Search Pickers" },
        { "<leader>sh", function() Snacks.picker.help() end, desc = "Help Pages" },
        { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
        { "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
        { "<leader>sr", function() Snacks.picker.resume() end, desc = "Resume" },
        -- Custom
        { "<leader>sn", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
        { "<leader>so", function() Snacks.picker.files({ cwd = vim.fn.expand("~/obsidian/fnz") }) end, desc = "Find Obsidian File" },
        { "<leader>sv", function() Snacks.picker.files() end, desc = "Split Vertical (Use Ctrl-v)" },
    },
}
