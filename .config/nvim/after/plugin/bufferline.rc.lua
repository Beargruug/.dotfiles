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
      guifg = '#3c3836',
    },
    separator_selected = {
      guifg = '#b8bb26',
    },
    buffer_selected = {
      guifg = '#fdf6e3',
      gui = "bold",
    },
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
