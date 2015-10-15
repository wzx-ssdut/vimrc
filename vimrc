" Base {{{
set nocompatible
set magic
set shortmess+=I " Do not show :intro message
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
Plugin 'Mizuchi/STL-Syntax'               " C++14 STL关键字
Plugin 'altercation/vim-colors-solarized' " Color Scheme
Plugin 'tomasr/molokai'                   " Color Scheme
call vundle#end()
filetype plugin indent on
" }}}


" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

set number
" 显示光标当前位置
set ruler
" 高亮显示当前行
set cursorline
"set cursorcolumn

" Scroll {{{
"set scroll=10 " 指定CTRL-U和CTRL-D滚动的行数，默认为屏幕一半行数
set scrolloff=3
set sidescrolloff=3
" }}}

" Theme {{{
if has("gui_running")
    set background=light
    colorscheme molokai
else
    set background=dark
end
" colorscheme solarized
" colorscheme molokai
" }}}


" GUI {{{
" 禁止光标闪烁
set guicursor=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
 " 设置字体
set guifont=Ubuntu\ Mono\ 14
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
filetype indent on  " 自适应不同语言的只能缩进
set expandtab       " 将制表符扩展为空格
set tabstop=4       " 设置编辑时制表符占用空格数
set shiftwidth=4    " 设置格式化时制表符占用空格数
set softtabstop=4   " 把连续数量的空格视为一个制表符
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

" Syntastic {{{
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
"set error or warning signs
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
"whether to show balloons
let g:syntastic_enable_balloons = 1
" }}}


inoremap jk <ESC>
inoremap <ESC> <NOP>

" Fold {{{
nnoremap <Space> za
" }}}

