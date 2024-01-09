vim.opt.termguicolors = true

require("bufferline").setup {
    options = {
        hover = {
            enabled = true,
            delay = 150,
            reveal = { 'close' }
        }
    }
}
