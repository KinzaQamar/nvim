return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = {
		               -- "nvim-tree/nvim-web-devicons"
	               },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "echasnovski/mini.icons" },
	opts = {},
	
	-- lazy-nvim Lazy-load the plugin if we hit the key
	keys = {
		{
			"<C-f>",
			function() require('fzf-lua').files() end,
			desc="Find files in the current working directory"
		},
		{
			"<C-g>",
			function() require('fzf-lua').live_grep() end,
			desc="live grep current project"
		}
	}
}
