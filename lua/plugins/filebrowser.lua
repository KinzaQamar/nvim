-- return {
-- 	'stevearc/oil.nvim',
-- 	---@module 'oil'
-- 	---@type oil.SetupOpts
-- 	opts = {},
-- 	-- Optional dependencies
-- 	dependencies = { { "echasnovski/mini.icons", opts = {} } },
-- 	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
-- 	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
-- 	lazy = false,
-- }

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
	  "nvim-lua/plenary.nvim",
		{'echasnovski/mini.nvim', version = false},
	  -- "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	  "MunifTanjim/nui.nvim",
	  -- Optional image support for file preview: See `# Preview Mode` for more information.
	  -- {"3rd/image.nvim", opts = {}},
	  -- OR use snacks.nvim's image module:
	  -- "folke/snacks.nvim",
	},
	lazy = false, -- neo-tree will lazily load itself
	---@module "neo-tree"
	---@type neotree.Config?
	opts = {},
	config = function()
		vim.keymap.set('n', '<C-d>', ':Neotree filesystem reveal left<CR>', {})
	end
}
