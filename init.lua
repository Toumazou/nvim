-------------------------------------------------
-- Bootstrap lazy.nvim
-------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

-- Put lazy into the runtime path for neavim
vim.opt.rtp:prepend(lazypath)


-------------------------------------------------
-- Set up settings before loading lazy.nvim so that mappings are correct
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

vim.opt.hlsearch = false
vim.opt.incsearch = true

--I think it enables more colour support of the terminal
vim.opt.termguicolors = true 

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.clipboard = "unnamedplus"


-------------------------------------------------
-- Set up bindings before loading lazy.nvim so that mappings are correct
-------------------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("i","jj","<Esc>", {noremap = true})

-- J joins the current and next line, and below key map keeps your cursor in place
vim.keymap.set("n", "J", "mzJ`z")

-- Execution bindings TJ is using 
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-------------------------------------------------
-- Setup lazy.nvim by giving plugins
-------------------------------------------------

require("lazy").setup({
	spec = {
		{ import = "plugins" },
		{ import = "plugins.lsp" }
	},
})
--------------------------------------------
-- Work in progress
-------------------------------------------------

--[[ 
Not sure yet what these options do but could be usefull with undo trees (from primeagens file)
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenf("HOME") .. "/.vim.undodir"
vim.opt.undofile = true
]]

--[[ 
Purpose is to move multiple lines up and down but is buggy for some reason
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<>gv=gv")
]]
