return {
  {
    -- Main LSP Configuration
    'neovim/nvim-lspconfig',
    config = function()
      local servers = {
        clangd = {},
        zls = {},
        jdtls = {},
        biome = {},
        pyright = {},
      }
      local ensure_installed = vim.tbl_keys(servers or {})
      vim.list_extend(ensure_installed, {
        -- You can add other tools here that you want Mason to install
      })
      require('mason-tool-installer').setup { ensure_installed = ensure_installed }
      for name, server in pairs(servers) do
        vim.lsp.config(name, server)
        vim.lsp.enable(name)
      end
    end,
  },
}
