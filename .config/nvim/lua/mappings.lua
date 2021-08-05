vim.cmd([[
let mapleader = ","
" Reload vimrc
nnoremap <silent> <Leader>r :source $MYVIMRC<CR>
nnoremap <silent> <Leader>vrc :tabe $MYVIMRC<CR>
nnoremap <silent> <Leader>/ :noh<CR>
" Enter insert mode for omni-completion
nnoremap <C-x> i<C-x>
" Paste on new line
nnoremap <Leader>p o<ESC>p
nnoremap <Leader>P O<ESC>p
" Window movement
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
" ESC to exit terminal mode
tnoremap <Esc> <C-\><C-n>
" For nested vim sessions
tnoremap <A-e> <Esc>
augroup myterm
    au!
    " Disable spell checking in terminals
    au TermOpen * setlocal nospell
augroup end

" Time to inflict some self-harm
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
]])
