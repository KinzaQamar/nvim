-- return {
--   'nvim-lualine/lualine.nvim',
--   config = function()
--     require("lualine").setup({
--       options = {
--         theme = 'tokyonight-storm'
--       },
--       sections = {
--       lualine_a = { 'mode' },
--       lualine_b = { 'branch', 'diff', 'diagnostics' },
--       lualine_c = {
--         {
--           function()
--             return '󰉋 ' .. vim.fn.expand('%:p') -- Add an icon
--           end,
--           cond = function()
--             return vim.fn.expand('%') ~= ''
--           end,
--         },
--       },
--       lualine_x = { 'encoding', 'fileformat', 'filetype' },
--       lualine_y = { 'progress' },
--       lualine_z = { 'location' }
--       },
--     })
--   end
-- }
return {
	'echasnovski/mini.statusline',
	version = false,
	opts = {}
	-- config = function()
	-- 	require("mini.statusline").setup({
	-- 		use_icons = true,
	-- 	})
	-- end
}

-- return {
-- 	'nvim-lualine/lualine.nvim',
-- 	dependencies = { 'nvim-tree/nvim-web-devicons' },
-- 	opts = {}
-- }
