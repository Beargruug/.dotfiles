if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'Yggdroot/indentLine'

if has("nvim")
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  " Plug 'nvim-telescope/telescope-file-browser.nvim'
  " Session
  Plug 'mhinz/vim-startify'
  Plug 'easymotion/vim-easymotion'
  " Plug 'kyazdani42/nvim-tree.lua'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-surround'
  " Plug 'pappasam/vim-filetype-formatter'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
  " Treesitter {{{2
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'p00f/nvim-ts-rainbow', { 'branch': 'update_parser' }
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

  " Package Update
  Plug 'Nguyen-Hoang-Nam/vim-version'

 " Plug 'glepnir/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
 " Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  " Plug 'lewis6991/gitsigns.nvim'
  Plug 'airblade/vim-gitgutter'
  Plug 'APZelos/blamer.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'
  " Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

  " Themes
  Plug 'gruvbox-community/gruvbox'

endif

Plug 'groenewege/vim-less', { 'for': 'less' }

call plug#end()
