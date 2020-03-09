if filereadable("/etc/vimrc")
    source /etc/vimrc
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tomasiser/vim-code-dark'
Plugin 'vim-syntastic/syntastic'
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'

"Bundle "Valloric/YouCompleteMe"
call vundle#end()

filetype plugin indent on

syntax on
set ignorecase
set nu
set nowrap
set sidescroll=1
set spell

set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set mouse=a
set ttymouse=xterm2
set splitbelow
set splitright
set completeopt-=preview
set wildmenu
set whichwrap+=<,>,[,]
set backspace=indent,eol,start
set showcmd
set hlsearch
set incsearch

if has('mouse_sgr')
    set ttymouse=sgr
endif

vnoremap // y/<C-R>"<CR>

" YCM settings
let g:ycm_min_num_of_chars_for_completion = 99

" NerdTree settings
map <C-n> :NERDTreeToggle<CR>

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Vim Racer
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

colorscheme codedark
