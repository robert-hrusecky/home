if filereadable("/etc/vimrc")
    source /etc/vimrc
endif

set nocompatible
filetype off

set rtp+=/usr/share/vim/vimfiles/autoload/vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tomasiser/vim-code-dark'
Bundle "Valloric/YouCompleteMe"
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

colorscheme codedark
