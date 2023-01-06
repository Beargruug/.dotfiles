-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use('folke/lsp-colors.nvim')
  use({
    'gruvbox-community/gruvbox',
    as = 'gruvbox',
    config = function()
      vim.cmd('colorscheme gruvbox')
    end
  })

  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" }
    }
  }

  -- Treesitter
  use('nvim-treesitter/nvim-treesitter')
  use('nvim-treesitter/nvim-treesitter-context')
  use('eckon/treesitter-current-functions')

  use('JoosepAlviste/nvim-ts-context-commentstring')

  -- Style
  use('p00f/nvim-ts-rainbow')
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use('windwp/nvim-ts-autotag')

  -- Statusline
  use('vim-airline/vim-airline')
  use('vim-airline/vim-airline-themes')

  use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines

  -- Icons
  use('kyazdani42/nvim-web-devicons')

  -- UndoTree
  use('mbbill/undotree')

  -- Vertical indent
  use('Yggdroot/indentLine')

  -- Training
  use('ThePrimeagen/vim-be-good')

  --  Debugger
  use('mfussenegger/nvim-dap')
  use('rcarriga/nvim-dap-ui')
  use('leoluz/nvim-dap-go')
  use('theHamsta/nvim-dap-virtual-text')

  -- Go
  use('fatih/vim-go')
  -- Plug 'crispgm/nvim-go'

  -- Worktree
  use('ThePrimeagen/git-worktree.nvim')

  -- Session
  use('tpope/vim-fugitive')
  use('tpope/vim-commentary')
  use('tpope/vim-repeat')
  use('tpope/vim-surround')

  -- Package Update
  use('Nguyen-Hoang-Nam/vim-version')

  -- Git
  use('sindrets/diffview.nvim')
  use('airblade/vim-gitgutter')
  use('APZelos/blamer.nvim')

  -- Telescope
  use('nvim-telescope/telescope.nvim')
  use('nvim-telescope/telescope-file-browser.nvim')
  use('nvim-telescope/telescope-dap.nvim')
  use('nvim-lua/popup.nvim')
  use('nvim-lua/plenary.nvim')

  -- Prettier
  use('prettier/vim-prettier')

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'jose-elias-alvarez/null-ls.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
      { 'hrsh7th/vim-vsnip' },
      { 'hrsh7th/cmp-vsnip' },
    }
  }

  use("folke/zen-mode.nvim")

end)
