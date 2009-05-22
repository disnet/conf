let mapleader = ","
set background=dark
colorscheme evening

set nu
syntax on
set showmatch
set nocompatible
set backspace=indent,eol,start
set showcmd


set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent

set tags+=$HOME/.vim/tags/python.ctags

filetype plugin on

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python set omnifunc=pythoncomplete#Complete

autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

autocmd BufRead *.py set tabstop=2
autocmd BufRead *.py set softtabstop=2
set mouse=a

set backspace=indent,eol,start
set backup
set backupdir=~/vimfiles/backup
set directory=~/vimfiles/temp
set diffexpr=MyDiff()
set helplang=En
set history=50
set hlsearch
set incsearch
set keymodel=startsel,stopsel
set ruler
set selection=exclusive
set selectmode=mouse,key
set whichwrap=b,s,<,>,[,]
set window=55
set wildmenu

noremap <Space> <PageDown>
noremap - <PageUp>
noremap <F6> <C-W>w
noremap <S-F6> <C-W>W
noremap <C-N> :next<CR>
noremap <C-P> :prev<CR>

nmap <Leader>s :source $HOME/.vimrc<CR>
nmap <Leader>v :e $HOME/.vimrc<CR>

let next_action = $HOME . "/.todo/" . matchstr(getcwd(),'[^/]*$')
nmap <Leader>d :edit next_action<CR>

