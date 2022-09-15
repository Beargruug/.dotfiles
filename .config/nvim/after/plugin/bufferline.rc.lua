local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = true,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#3c3836',
    },
    separator_selected = {
      fg = '#b8bb26',
    },
    buffer_selected = {
      fg = '#fdf6e3',
      underline = false,
      undercurl = false,
      italic = false
    },
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
