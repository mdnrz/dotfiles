local set = vim.opt

-- mouse
set.mouse = 'a'
-- tab and space stuff
set.expandtab = true
set.softtabstop = 4
set.shiftwidth = 4
set.tabstop = 4

-- indentation stuff
set.smartindent = true

-- search stuff
set.hlsearch = false
set.smartcase = true
set.ignorecase = true
set.incsearch = true

-- split stuff
set.splitbelow = true
set.splitright = true
set.scrolloff = 8
set.fileencoding = 'utf=8'
set.termguicolors = true

-- line number stuff
set.number = true
set.nuw = 1
set.relativenumber = true
set.hidden = true

-- swap and backup stuff
set.swapfile = false
set.backup = false
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true

-- comandline hight
set.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
set.updatetime = 50
set.signcolumn = "yes"


-- columns to highlight
set.colorcolumn = '100'

-- vimwiki markdown syntax
vim.g.vimwiki_list = {
    {path = '~/notes/vimwiki', syntax = 'markdown', ext = '.md'},
    {path = '~/notes/vimwiki/tech', syntax = 'markdown', ext = '.md'},
    {path = '~/notes/vimwiki/tech/linux', syntax = 'markdown', ext = '.md'},
    {path = '~/notes/vimwiki/tech/rust', syntax = 'markdown', ext = '.md'},
    {path = '~/notes/vimwiki/tech/python', syntax = 'markdown', ext = '.md'},
    {path = '~/notes/vimwiki/tech/embedded', syntax = 'markdown', ext = '.md'},
    {path = '~/notes/vimwiki/ideas', syntax = 'markdown', ext = '.md'},
    {path = '~/notes/vimwiki/science', syntax = 'markdown', ext = '.md'},
    {path = '~/notes/vimwiki/ati', syntax = 'markdown', ext = '.md'},
}

set.guicursor='n-v-c-:block-blinkwait100-blinkon100-blinkoff80,i-ci-ve:ver25-blinkwait150-blinkon150-blinkoff100,r-ci:hor20'
