" Vundle setting --------------------------{{{ 
set nocompatible              " required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'chriskempson/vim-tomorrow-theme'
call vundle#end()            " required
filetype plugin indent on    " required
" }}}
 
" Mapping setting ------------------{{{
let mapleader=','
let maplocalleader=','
inoremap jk <Esc>
inoremap jd $
inoremap j; <Esc>$a;<Esc>
inoremap je <space>=<space>
inoremap ja <space>+<space>
inoremap jo ->
inoremap jj j
inoremap ' ''<Left>
"inoremap " ""<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
"inoremap { {}<Left>
"mapn"
nnoremap H ^
nnoremap L $
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
noremap <space> viw
noremap ; :
noremap <leader>t :NERDTreeToggle<Enter>
noremap <leader>f :NERDTreeFind<Enter>
cnoremap jk <Esc>
" }}}

" augroup setting -----------------{{{
augroup mygroup
	autocmd!
	"autocmd BufRead * :echom '>^.^<' 
    autocmd BufWritePost .vimrc source $MYVIMRC 
	autocmd BufEnter *.gz	%!gunzip
	"autocmd BufNewFile *.txt :write "使用:e创建文件时立即写入磁盘
	"autocmd BufWritePre,BufRead *.html :normal gg=G
	autocmd FileType vim nnoremap <buffer> <localleader>m I"<Esc>
	autocmd FileType javascript nnoremap <buffer> <localleader>m I//<esc>
	autocmd FileType php nnoremap <buffer> <localleader>m I//<esc>
	autocmd FileType python     :iabbrev <buffer> iff if:<left>
    "autocmd FileType javascript :iabbrev <buffer> iff if ()<left> 
augroup END

augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" NERDTree plugin settings -------------{{{

map <F3> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeShowBookmarks=1
"autocmd vimenter * NERDTree 
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let g:NERDTreeHidden=1
" }}}

" iabbrev setting ------------------------------{{{

iabbrev -- ------------------------------
" }}}

" Basic setting ------------------------------{{{ 
set helplang=cn 
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif
colorscheme Tomorrow-Night-Eighties
" 设置外观 -------------------------------------
set number                      "显示行号 
set numberwidth=2               "设置行号宽度 
set showtabline=0               "隐藏顶部标签栏"
set guioptions-=r               "隐藏右侧滚动条" 
set guioptions-=L               "隐藏左侧滚动条"
set guioptions-=b               "隐藏底部滚动条"
set cursorline                  "突出显示当前行"
set cursorcolumn                "突出显示当前列"
set langmenu=zh_CN.UTF-8        "显示中文菜单
" 变成辅助 -------------------------------------
syntax on                        "开启语法高亮
set wrap                        "设置代码折行"
set fileformat=unix             "设置以unix的格式保存文件"
set cindent                     "设置C样式的缩进格式"
set tabstop=4                   "一个 tab 显示出来是多少个空格，默认 8
set shiftwidth=4                "每一级缩进是多少个空格
set backspace+=indent,eol,start "set backspace&可以对其重置
set showmatch                   "显示匹配的括号"
set scrolloff=5                 "距离顶部和底部5行"
set laststatus=2                "命令行为两行"
" 其他杂项 -------------------------------------
set mouse=a                     "启用鼠标"
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase                  "忽略大小写"
set incsearch
set hlsearch                    "高亮搜索项"
set noexpandtab                 "不允许扩展table"
set whichwrap+=<,>,h,l
set autoread
" }}}

" powerline-status setting ------------------------------{{{
set rtp+=/Users/xf/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh
set nocompatible
set t_Co=256
let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2 
set guifont=Source\ Code\ Pro\ for\ Powerline:h17
set noshowmode
" }}}
