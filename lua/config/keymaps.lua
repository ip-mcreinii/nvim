vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = function (mode, keybind, actions, opts)
    local final_opts = vim.tbl_extend('force', opts or {}, {silent = true, noremap = true})
    vim.keymap.set(mode, keybind, actions, final_opts)
end

-- Dev
map('n', '<leader>e', '<cmd>Ex<cr>')
map('n', '<leader>s', function ()
    vim.cmd[[so %]]
    vim.notify('Sourced')
end)

-- General
map('n', '<leader>q', '<cmd>q<cr>')

-- File
map('n', '<leader>w', '<cmd>update<cr>')

-- Buffer
map('n', '<leader>bp', '<cmd>bp<cr>')
map('n', '<leader>bn', '<cmd>bn<cr>')
map('n', '<leader>bd', '<cmd>bd<cr>')

-- Splits
map("n", "<leader>sv", "<cmd>vsplit<cr>")
map("n", "<leader>sh", "<cmd>split<cr>")
map("n", "<leader>sx", "<cmd>close<cr>")

-- Editing
map("v", "J", ":m '>+1<cr>gv=gv")
map("v", "K", ":m '<-2<cr>gv=gv")

-- Search
map("n", "<Esc>", "<cmd>nohlsearch<cr>")

-- Scrolling
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
