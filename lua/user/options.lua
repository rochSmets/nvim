vim.opt.wrap  = true
vim.opt.ruler = true
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.showmode = true
vim.opt.laststatus = 2
vim.opt.matchtime = 4        -- show matching brackets for 0.2sec
vim.opt.incsearch = true   -- incremental search
vim.opt.errorbells = false        -- no annoying sound on errors
vim.opt.path = vim.opt.path + "/usr/include/**" + "/usr/include/openmpi-x86_64/**"+"."+"**"  --  add current dir to path and subdirs recursively
vim.opt.scrolloff = 10
vim.opt.viewoptions = vim.opt.viewoptions - "options"       --  do not take options into acount when saving
vim.opt.colorcolumn = "80"
vim.opt.hlsearch = true
vim.opt.background = "dark"
vim.opt.history = 100
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.wildmenu = true
vim.opt.wildmode = "longest,list"
vim.opt.wildignore = vim.opt.wildignore+"*.a,*.o,*.pyc,**/coverage,**/.git/"
-- vim.opt.guicursor = "n-v-c:block,i-ci-v:ver100-Cursor"
vim.opt.guicursor = "n-v-c:block,o:hor50,i-ci:block,r-cr:hor30,sm:block,a:blinkon0"

vim.opt.tabstop = 8
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = false
vim.opt.softtabstop = 4
vim.opt.splitbelow = true

-- vim.opt.textwidth = 80

-- invisible characters
vim.opt.list = true
vim.opt.listchars = {
  -- eol = '⤶',
  space = ' ',
  trail = '✚',
  extends = '◀',
  precedes = '▶',
}

vim.opt.encoding = "utf-8"
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.cmdheight = 2
vim.opt.updatetime = 300

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.cmd[[colorscheme tokyonight-moon]]
-- vim.cmd[[colorscheme tokyonight-night]]
-- vim.cmd[[colorscheme tokyonight-storm]]

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

