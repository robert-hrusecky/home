if filereadable("/etc/vimrc")
    source /etc/vimrc
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=/usr/share/vim/vimfiles/autoload/vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tomasiser/vim-code-dark'
Plugin 'vim-syntastic/syntastic'
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'vim-airline/vim-airline'

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
" set laststatus=2

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
" let g:syntastic_auto_loc_list = 1 " Auto-show error window
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_cpp_include_dirs = [ 'include', '../include' ]
let g:syntastic_cuda_config_file = '.syntastic_cuda_config'

let g:syntastic_python_pylint_args='--disable=C0114,C0115,C0116,W0622 --ignored-classes=SQLObject,Registrant,scoped_session --variable-rgx=[_a-z][_a-zA-Z0-9]* --argument-rgx=[_a-z][_a-zA-Z0-9]* --const-naming-style=any'

" limit height of syntastic window
function! SyntasticCheckHook(errors)
    if !empty(a:errors)
        let g:syntastic_loc_list_height = min([len(a:errors), 5])
    endif
endfunction

" Vim Racer
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

" vim-airline settings
let g:airline_powerline_fonts = 1
let g:airline_detect_spell = 0
let airline#extensions#syntastic#enabled = 1
set noshowmode

colorscheme codedark
