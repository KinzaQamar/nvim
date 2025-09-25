vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set tw=100")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Define local variables (lua tuples)
local plugins = {
  -- Adding colour scheme
  { 
    "EdenEast/nightfox.nvim"
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
                     'nvim-lua/plenary.nvim'
                   }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate"
  }
}

local opts = {}

-- loads lazy
require("lazy").setup(plugins, opts) -- plugins and opts are lua tuples here

-- setup function to import all the functionality of nightfox colorscheme
require("nightfox").setup()

-- loads all of the stuff inside the module telescope.builtin into init.lua
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-f>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-g>', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<C-b>', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<C-t>', builtin.help_tags, { desc = 'Telescope help tags' })

local config = require('nvim-treesitter.configs')
config.setup({
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = {"lua", "vim", "verilog", "python"},

  --install extra parsers by :TSInstall command or update them by :TSUpdate

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
})

--set colour scheme to carbonfox
vim.cmd.colorscheme "carbonfox"
