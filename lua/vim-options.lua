-------------------------------------------------
-- Key Settings
-------------------------------------------------

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- not sure yet what these do but can be usefull with undo trees
-- vim.opt.swapfile = false
-- vim.opt.backup = false
-- vim.opt.undodir = os.getenf("HOME") .. "/.vim.undodir"
-- vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true --I think it enables more colour support of the terminal

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-------------------------------------------------
-- Key Bindings
-------------------------------------------------

vim.g.mapleader = " "
vim.keymap.set("i","jj","<Esc>", {noremap = true})

-- J joins the current and next line, and below key map keeps your cursor in place
vim.keymap.set("n", "J", "mzJ`z")

-- Buggy for somereasone; intention: move multiple lines up and down
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<>gv=gv")

-- To be updated and customised to my needs
