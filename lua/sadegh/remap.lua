vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- In visual mode, move the selected block of text down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- In visual mode, move the selected block of text up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- In normal mode, join lines and retain the cursor position
vim.keymap.set("n", "J", "mzJ`z")

-- Scroll down half a page and center the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move to the next search result and center the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- In visual mode, replace the selected text with the default register without yanking it
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to the system clipboard in normal and visual mode
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- Copy the line to the system clipboard in normal mode
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete without yanking in normal and visual mode
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")

-- Open a new Tmux window with tmux-sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Format the current buffer using LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Navigate to the next item in the quickfix list and center the screen
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Start a search and replace for the word under the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Reload the current Neovim configuration
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- format the file 
vim.keymap.set("n", "<leader>cc", "=G")
