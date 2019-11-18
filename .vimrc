syntax on          "语法高亮
set nu             "显示行号
set shortmess=atI  "不显示开头提示
set go=
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set ignorecase
set mouse=a
set ts=4 sw=4 et
if version >=603
    set helplang=cn
    set encoding=utf-8
endif
"------MAP-----
let mapleader=","
map <C-c> "+y
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
set clipboard=unnamed
set nocompatible              " be iMproved, required
filetype off                  " required

"----------------------vundle package manager---------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-airline/vim-airline'
Bundle 'SuperTab'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'Chiel92/vim-autoformat'
Plugin 'jiangmiao/auto-pairs'
Plugin 'sickill/vim-monokai'
Bundle 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()            " required

filetype plugin indent on    " required
filetype plugin on
" ------------------------------------------------

" ----vim-airline----
set laststatus=2
set t_Co=256
" ----SuperTab----
let g:SuperTabRetainCompletionType=2
" ----vim-indent-guides----
let g:indent_guides_enable_on_vim_startup=1
autocmd VimEnter,ColorScheme * :hi IndentGuidesOdd guibg=red ctermbg=3
autocmd VimEnter,ColorScheme * :hi IndentGuidesEven guibg=green ctermbg=4
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
" ----vim-autoformat----
noremap <c-f> :Autoformat<CR>
let g:autoformat_verbosemode = 1
let g:formatdef_my_cpp = '"astyle --style=google"'
let g:formatters_cpp = ['my_cpp']
let g:formatdef_my_html = '"html-beautify -s 2"'
let g:formatters_html = ['my_html']
let g:formatdef_my_js = '"js-beautify -s 2"'
let g:formatdef_js = ['my_js']
" ----vim-monokai----
syntax enable
colorscheme monokai
" ----nerdcommenter----
let g:NERDSpaceDelims = 1
map <leader>, <leader>c<space>
" ----NerdTree----
autocmd vimenter * NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if(winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" ----ctrl-p----
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
            \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
            \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

" ------------------------------------------------



inoremap jk <esc>
vnoremap jk <esc>
" -----AutoCmd-----
"autocmd BufRead * :normal gg=G

