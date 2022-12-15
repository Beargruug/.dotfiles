if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

  Plug 'Yggdroot/indentLine'

if has("nvim")
  " Debugger
  Plug 'mfussenegger/nvim-dap'
  Plug 'rcarriga/nvim-dap-ui'
  Plug 'leoluz/nvim-dap-go'
  Plug 'theHamsta/nvim-dap-virtual-text'
  Plug 'nvim-telescope/telescope-dap.nvim'
  " Go
  Plug 'fatih/vim-go'
  "Worktree
  Plug 'ThePrimeagen/git-worktree.nvim'
  Plug 'nvim-telescope/telescope-file-browser.nvim'
  " Session
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-surround'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
  " Treesitter {{{2
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'nvim-treesitter/nvim-treesitter-context'
  " Plug 'p00f/nvim-ts-rainbow', { 'branch': 'update_parser' }
  Plug 'p00f/nvim-ts-rainbow'
  Plug 'JoosepAlviste/nvim-ts-context-commentstring'
  Plug 'eckon/treesitter-current-functions'
  " LSP - base
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  " LSP - completion
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  " LSP - snippet
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'rafamadriz/friendly-snippets'
  " LSP - extensions
  Plug 'jose-elias-alvarez/null-ls.nvim'
  Plug 'akinsho/nvim-bufferline.lua'

  " Package Update
  Plug 'Nguyen-Hoang-Nam/vim-version'

  Plug 'folke/lsp-colors.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'sindrets/diffview.nvim'
  Plug 'airblade/vim-gitgutter'
  Plug 'APZelos/blamer.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'

  " Icons
  Plug 'mortepau/codicons.nvim'
  " Themes
  Plug 'gruvbox-community/gruvbox'
  Plug 'Mofiqul/vscode.nvim'

endif

  Plug 'groenewege/vim-less', { 'for': 'less' }

call plug#end()
