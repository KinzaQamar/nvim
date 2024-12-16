return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require'nvim-treesitter.configs'.setup({
      ensured_install = {"lua", "vim", "verilog", "vhdl"},
      --auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
