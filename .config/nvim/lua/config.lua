-------------------- General --------------------
vim.o.hidden = true
vim.o.ignorecase = true
vim.o.nu = true
vim.o.wrap = false
vim.o.sidescroll = 5
-- vim.opt.listchars:append { precedes = "<", extends = ">" } -- currently broken due to .trim() bug
vim.o.listchars = vim.o.listchars .. ",precedes:<,extends:>" -- workaround
vim.o.spell = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.mouse = "a"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.incsearch = true
vim.o.ttimeoutlen = 2
vim.o.joinspaces = false
vim.o.cursorline = true
vim.o.showmode = false
vim.o.guifont = "SauceCodePro Nerd Font Mono:11,Noto Color Emoji:11"

-------------------- Terminal --------------------
vim.cmd([[
augroup myterm
    au!
    " Disable spell checking in terminals
    au TermOpen * setlocal nospell
augroup end
]])

-------------------- Color Scheme --------------------
vim.cmd([[
colorscheme codedark
" Use undercurl
hi CocUnderline cterm=undercurl gui=undercurl
]])
