local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.cursorlineopt = "number"
opt.showmode = false
opt.laststatus = 3
opt.cmdheight = 1
opt.ruler = false
opt.wrap = false

-- Scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.smoothscroll = true

-- Indentation
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true
opt.breakindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Editing
opt.mouse = "a"
opt.undofile = true
opt.autowrite = true
opt.confirm = true
opt.virtualedit = "block"

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Completion
opt.completeopt = { "menu", "menuone", "noselect" }
opt.pumheight = 10

-- Performance / behavior
opt.updatetime = 250
opt.timeoutlen = 400
opt.redrawtime = 1000
opt.lazyredraw = false

-- Files
opt.fileencoding = "utf-8"
opt.encoding = "utf-8"
opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- Visual characters
opt.list = true
opt.listchars = {
    tab = "  ",
    trail = "·",
    nbsp = "␣",
}

-- Folding
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true

vim.diagnostic.config({ virtual_text = { virtual_text_pos = "inline" } })
