vim.opt.nu = true
vim.opt.nuw = 1
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.guicursor='n-v-c-:block-blinkwait100-blinkon100-blinkoff80,i-ci-ve:ver25-blinkwait150-blinkon150-blinkoff100,r-ci:hor20'
