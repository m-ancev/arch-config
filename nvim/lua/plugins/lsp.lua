return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        auto_install = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      lspconfig.lua_ls.setup({capabilities = capabilities})
      lspconfig.clangd.setup({capabilities = capabilities})
      lspconfig.pyright.setup({capabilities = capabilities})
      lspconfig.cssls.setup({capabilities = capabilities})
      lspconfig.html.setup({capabilities = capabilities})
      lspconfig.jsonls.setup({capabilities = capabilities})
      lspconfig.rust_analyzer.setup({capabilities = capabilities})
      lspconfig.sqlls.setup({capabilities = capabilities})
      lspconfig.taplo.setup({capabilities = capabilities})
      lspconfig.vimls.setup({capabilities = capabilities})
      lspconfig.hydra_lsp.setup({capabilities = capabilities})
      lspconfig.lemminx.setup({capabilities = capabilities})
      lspconfig.dockerls.setup({capabilities = capabilities})
      -- keymaps
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
