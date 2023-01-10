local function ts_disable(_, bufnr)
  return vim.api.nvim_buf_line_count(bufnr) > 5000
end

require('nvim-treesitter.configs').setup({
  highlight = {
    enable = true,
    disable = function(lang, bufnr)
      return lang == "cmake" or ts_disable(lang, bufnr)
    end,
    additional_vim_regex_highlighting = { "latex" },
  },
  context = {
    enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
    throttle = true, -- Throttles plugin updates (may improve performance)
    patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
      -- For all filetypes
      -- Note that setting an entry here replaces all other patterns for this entry.
      -- By setting the 'default' entry below, you can control which nodes you want to
      -- appear in the context window.
      default = {
        "function",
        "method",
        "for",
        "while",
        "if",
        "switch",
        "case",
      },
      typescript = {
        "class_declaration",
        "abstract_class_declaration",
        "else_clause",
      },
    }
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
  },
  indent = {
    enable = false,
    disable = {},
  },
  autotag = {
    enable = true,
  },
  ensure_installed = {
    "tsx",
    "fish",
    "json",
    "yaml",
    "go",
    "html",
    "scss"
  },
})

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_pasername = { "javascript", "typescript.tsx" }
