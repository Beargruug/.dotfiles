if !exists('g:loaded_telescope') | finish | endif

nnoremap <silent> ;f <cmd>Telescope find_files<cr>
nnoremap <silent> ;r <cmd>Telescope live_grep<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;h <cmd>Telescope oldfiles<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>
nnoremap <silent> ;gw <cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>
nnoremap <silent> ;gm <cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>


lua << EOF
local actions = require('telescope.actions')

-- Global remapping
------------------------------

require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules" },
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
}
EOF
