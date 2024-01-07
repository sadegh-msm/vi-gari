local ok, toggleterm = pcall(require, 'toggleterm')
if not ok then
    print("can't require toggleterm")
    return
end

toggleterm.setup({
 size = 20,
 open_mapping = [[<c-\>]],
 hide_numbers = true,
 shade_filetypes = {},
 shade_terminals = true,
 shading_factor = 2,
 start_in_insert = true,
 insert_mappings = true,
 persist_size = true,
 direction = "float",
 close_on_exit = true,
 shell = vim.o.shell,
 float_opts = {
  border = "curved",
  width = 80,  -- 80 columns wide
  height = 20, -- 20 rows tall
  winblend = 0,
  zindex = 50,
  highlights = {
   border = "Normal",
   background = "Normal",
  },
 },
})


vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm direction=float<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>")
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=60 direction=vertical<cr>")

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
  vim.keymap.set('t', '<C-a>', [[<C-\><C-n>:q!<CR>]], { noremap = true, silent = true })
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- go back to a already open terminal
function _G.switch_to_terminal()
  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    if vim.bo[bufnr].buftype == 'terminal' then
      for _, win in ipairs(vim.api.nvim_list_wins()) do
        if vim.api.nvim_win_get_buf(win) == bufnr then
          vim.api.nvim_set_current_win(win)
          return
        end
      end
    end
  end
  print("No terminal buffer found")
end

vim.keymap.set('n', '<leader>tt', ':lua switch_to_terminal()<CR>', { noremap = true, silent = true })

