if !exists('g:loaded_devicons') | finish | endif

lua << EOF
require'nvim-web-devicons'.get_icons()
EOF
