" Base {{{
set nocompatible
set magic
set shortmess+=I " Do not show :intro message
set scrolloff=3
" }}}


" Vundle {{{
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'corntrace/bufexplorer'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
call vundle#end()
filetype plugin indent on
" }}}


set number

" Theme {{{
set background=dark
" }}}

" Match {{{
set showmatch
set matchtime=1
set matchpairs+=<:>
" }}}

" Search {{{
set hlsearch
set incsearch
set ignorecase
" }}}

" Coding and Language {{{
set helplang=cn
set langmenu=zh_CN.UTF-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
" }}}


" Indent {{{
set cindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" }}}


" {{{
set list
set listchars=tab:\|\ ,nbsp:%,trail:~
" }}}


" NERDTree {{{
" Open NERDTree with <F3>
noremap <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.so', '\.a', '\.lib', '\.dll', '\.exe']
" Open a NERDTree automatically when vim starts up if no files were specified.
autocmd StdinReadPre * let s:StdIn=1
autocmd VimEnter * if argc() == 0 && !exists("s:StdIn") | NERDTree | endif
" Close vim if the only window left open is a NERDTree.
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" }}}


" CtrlP {{{
let g:ctrlp_map = '<C-P>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" }}}


" PowerLine {{{
set laststatus=2
set fillchars=vert:\ ,stl:\ ,stlnc:\  
set t_Co=256
let g:Powerline_symbols = 'fancy'
" }}}


inoremap jk <ESC>
inoremap <ESC> <NOP>

" Fold {{{
nnoremap <Space> za
" }}}

