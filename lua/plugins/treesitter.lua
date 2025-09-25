return {
	"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require('nvim-treesitter.configs').setup({
			-- A list of parser names, or "all" (the listed parsers MUST always be installed)
			ensure_installed = {"lua", "vim", "verilog", "python"},

			--install extra parsers by :TSInstall command or update them by :TSUpdate

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			auto_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
