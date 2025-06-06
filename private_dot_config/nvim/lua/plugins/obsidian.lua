return {
	"obsidian-nvim/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	ui = { enable = false },
	event = "VeryLazy",
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	-- event = {
	--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
	--   -- refer to `:h file-pattern` for more examples
	--   "BufReadPre path/to/my-vault/*.md",
	--   "BufNewFile path/to/my-vault/*.md",
	-- },
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("obsidian").setup({
			notes_subdir = "0 Weekly Dump",
			templates = {
				default = true,
				folder = "templates",
				date_format = "%Y-%m-%d-%a",
				time_format = "%H:%M",
			},
			workspaces = {
				{
					name = "work",
					path = "~/obsidian/fnz",
				},
			},
			-- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
			completion = {
				default = true,
				-- Set to false to disable completion.
				nvim_cmp = true,
				-- Trigger completion at 2 chars.
				min_chars = 2,
			},
			picker = {
				default = true,
				-- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
				name = "telescope.nvim",
				-- Optional, configure key mappings for the picker. These are the defaults.
				-- Not all pickers support all mappings.
				note_mappings = {
					-- Create a new note from your query.
					new = "<C-x>",
					-- Insert a link to the selected note.
					insert_link = "<C-l>",
				},
				tag_mappings = {
					-- Add tag(s) to current note.
					tag_note = "<C-x>",
					-- Insert a tag at the current location.
					insert_tag = "<C-l>",
				},
			},
			daily_notes = {
				default = true,
				folder = "1 Daily Notes",
				-- Optional, if you want to change the date format for the ID of daily notes.
				date_format = "%Y-%m-%d",
				-- Optional, if you want to change the date format of the default alias of daily notes.
				alias_format = "%B %-d, %Y",
				-- Optional, default tags to add to each new daily note created.
				default_tags = { "daily-notes" },
				-- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
				template = nil,
			},
		})
	end,
}
