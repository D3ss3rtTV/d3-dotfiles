local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.termguicolors = true
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Indent
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = false

-- Better splits
opt.splitright = true
opt.splitbelow = true

-- Clipboard (works great on Windows/mac; on Linux needs xclip/wl-clipboard depending)
opt.clipboard = "unnamedplus"

-- Faster updates
opt.updatetime = 250
opt.timeoutlen = 400

-- Undo
opt.undofile = true
