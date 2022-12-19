if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

  Plug 'Yggdroot/indentLine'

if has("nvim")
  " training
  Plug 'ThePrimeagen/vim-be-good'

  " Debugger
  Plug 'mfussenegger/nvim-dap'
  Plug 'rcarriga/nvim-dap-ui'
  Plug 'leoluz/nvim-dap-go'
  Plug 'theHamsta/nvim-dap-virtual-text'

  " Go
  Plug 'fatih/vim-go'
  " Plug 'crispgm/nvim-go'

  "Worktree
  Plug 'ThePrimeagen/git-worktree.nvim'

  " Session
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'

  " Prettier
  Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

  " Treesitter {{{2
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'nvim-treesitter/nvim-treesitter-context'
  Plug 'eckon/treesitter-current-functions'
  Plug 'JoosepAlviste/nvim-ts-context-commentstring'

  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'rafamadriz/friendly-snippets'
  Plug 'jose-elias-alvarez/null-ls.nvim'
  Plug 'akinsho/nvim-bufferline.lua'
  Plug 'folke/lsp-colors.nvim'

  " Package Update
  Plug 'Nguyen-Hoang-Nam/vim-version'

  " Git
  Plug 'sindrets/diffview.nvim'
  Plug 'airblade/vim-gitgutter'
  Plug 'APZelos/blamer.nvim'


  " Telescope
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-file-browser.nvim'
  Plug 'nvim-telescope/telescope-dap.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'

  " Statusline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  
  " Style
  Plug 'p00f/nvim-ts-rainbow'
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'

  " Icons
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'mortepau/codicons.nvim'

  " Themes
  Plug 'gruvbox-community/gruvbox'
  Plug 'Mofiqul/vscode.nvim'

  " Not sure if needed
  
endif

  Plug 'groenewege/vim-less', { 'for': 'less' }

call plug#end()
