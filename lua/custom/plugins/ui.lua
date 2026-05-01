return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    opts = {
      file_types = { "markdown", "vimwiki", "codecompanion" },
      -- This ensures it also renders inside the LSP hover window!
      win_options = {
        conceallevel = { default = 2 },
        concealcursor = { default = 'nvic' },
      },
    },
  },
}