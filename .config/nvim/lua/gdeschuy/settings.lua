vim.opt.backup = false -- creates a backup file
vim.opt.cmdheight = 1 -- height of the command bar
vim.opt.errorbells = false -- sets the error bell
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.swapfile = false -- creates a swapfile
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- set path to undo directory
vim.opt.undofile = true -- creates an undo file
vim.opt.writebackup = false -- if a file is written by another program

-- Mouse
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.mousefocus = true -- automatically activate window the mouse pointer is in

-- Line Numbers
vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = false -- set relative numbered lines

-- Splits
vim.opt.splitbelow = true -- prefer window splitting to the bottom
vim.opt.splitright = true -- prefer window splitting to the right

-- Clipboard
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard

-- Search Settings
vim.opt.hlsearch = false -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.incsearch = true -- makes search act like search in modern browsers
vim.opt.showmatch = true -- show matching brackets when text indicator is over them

-- Shorter Messages
vim.opt.shortmess:append("c")

-- Indent Settings
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.opt.smartindent = true -- make indenting smarter
vim.opt.softtabstop = 4 -- spaces used when using tab
vim.opt.tabstop = 4 -- spaces inserted for a tab
vim.opt.wrap = false -- display lines as one long line
