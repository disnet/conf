" ****** Global Settings *******
let mapleader = ","
let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf = ''
let g:Tex_DefaultTargetFormat='pdf'
"let g:Tex_MultipleCompileFormats='pdf'

" using dark terms
set background=dark

" break lines after the whole word
set linebreak

" turn off bell
set vb t_vb=

" line numbers on
set nu

syntax on

" highlight matching braces parens etc.
set showmatch

" don't care about vi
set nocompatible

" backspace should do what it's supposed to
set backspace=indent,eol,start

" show command as it's being typed
set showcmd

" default tabbing is 2
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set softtabstop=2
set autoindent

" set grep to always generate file-names...needed for latex-suite
set grepprg=grep\ -nH\ $*

set backup
set backupdir=~/vimfiles/backup
set directory=~/vimfiles/temp
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

" ********** Keymaps ************

noremap <Space> <PageDown>
noremap - <PageUp>
noremap <C-N> <C-W>w
noremap <C-P> <C-W>W

" was alway hitting F1 by accident
noremap <F1> <Esc>

" jump here quickly
nmap <Leader>V :source $HOME/.vimrc<CR>
nmap <Leader>v :e $HOME/.vimrc<CR>

" automatically append closing braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

nmap <F2> :NERDTreeToggle<CR>

" close the preview window quickly
nmap <leader>pc :pclose<cr>

" move to files directory
nmap <silent> <leader>cd :cd %:p:h<cr>

" ****** Filetype specific ******
filetype plugin on
filetype indent on

" Python stuff
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python set omnifunc=pythoncomplete#Complete

autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m


autocmd FileType html set tabstop=2
autocmd FileType html set shiftwidth=2
autocmd FileType html set softtabstop=2


" Haskell stuff
au Bufenter *.hs compiler ghc
au BufRead *.hs let maplocalleader="," " want my leader for haskell commands


" config browser for haddock
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"

" Markdown stuff
augroup mkd
autocmd BufRead,BufNewFile *.markdown  setfiletype mkd
autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt;
augroup END

" Texshope stuff
"au BufRead,BufNewFile *.texshop setfiletype tex

" LaTeX stuff
au BufRead *.tex set spell

" VimWiki stuff
" turn off line numbers
au BufRead *.wiki set nonu
au BufRead *.wiki set spell

" ***** Experimental *****
nmap CTRL-W e :res +10<CR>
nmap CTRL-W E :res -10<CR>

if has("python")
    :pyfile ~/dev/vim/plugin/vgit.py
endif
nmap <Leader>gn :python GitPreviousRevision()<CR>
nmap <Leader>gm :python GitNextRevision()<CR>
"set tags+=$HOME/.vim/tags/python.ctags
