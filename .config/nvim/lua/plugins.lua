
return {
    "vimwiki/vimwiki",
  "terrortylor/nvim-comment",
    {'nvim-lualine/lualine.nvim', dependencies = 'nvim-tree/nvim-web-devicons' },
    "folke/zen-mode.nvim",
  {"ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ...},
  {'nvim-treesitter/nvim-treesitter', build = ":TSUpdate"},
  {'nvim-telescope/telescope.nvim', tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' }},
      --- Uncomment the two plugins below if you want to manage the language servers from neovim
-- {'williamboman/mason.nvim'},
-- {'williamboman/mason-lspconfig.nvim'},
{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
{'neovim/nvim-lspconfig'},
{'hrsh7th/cmp-nvim-lsp'},
{'hrsh7th/nvim-cmp'},
{'L3MON4D3/LuaSnip'},
}
