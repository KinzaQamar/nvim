return {
  {
    "williamboman/mason.nvim",
     config = function()
       require("mason").setup()
     end
  },
  {
    "williamboman/mason-lspconfig.nvim",
     config = function()
        require("mason-lspconfig").setup({
          ensure_installed = { "lua_ls" }
        })
     end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<space>ca', vim.lsp.buf.code_action, {})
      --lspconfig.hdl_checker.setup({})
      --lspconfig.svlangserver.setup({})
      --lspconfig.svls.setup({})
      --lspconfig.verible.setup({})
      --lspconfig.vhdl_ls.setup({})
      opts = {
        servers = {
          svls = {
            root_dir = function(fname)
              return require("lspconfig.util").find_git_ancestor(fname)
            end,
            cmd = { "svls" },
            filetypes = { "verilog", "systemverilog" },
          },
        },
      }
    end
  }
}
