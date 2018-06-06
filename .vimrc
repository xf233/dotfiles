" Vundle setting 
set nocompatible              " required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'valloric/youcompleteme'
Plugin 'kien/ctrlp.vim'
Plugin 'hotoo/pangu.vim'
call vundle#end()            " required
filetype plugin indent on    " required
 


" Mapping setting 
set timeout timeoutlen=300
let mapleader=','
let maplocalleader=','
" inoremap 
" doller sign 
inoremap jd $
" equal sign 等号
inoremap je =
" plus sign 加号
inoremap jp +
" minus sign 减号
inoremap jm -
" 星号
inoremap jx *
inoremap jk <esc>

inoremap jh _

inoremap jl ()<left>
inoremap jL (

inoremap j; <Esc>$a;<Esc>
inoremap j<space> <right>
inoremap jq	->
inoremap jW	=>
inoremap jw <space>=><space>
inoremap ' ''<left>
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
augroup _innormap
	autocmd!
	autocmd FileType php inoremap jjp $_POST['']<left><left>
	autocmd FileType php inoremap jjg $_GET['']<left><left>
	autocmd FileType php inoremap <buffer> jji  if<space>(<Esc>mqa){<Enter>}<Esc>`qa
	autocmd FileType php inoremap <buffer> jjt  try<space>{<CR>}catch()<esc>mqa{<CR>}<esc>`q
augroup end

" todo J K 改为原H 原L 该窗口顶部和底部
nnoremap J gT
nnoremap K gt
" 默认J是合并两行，重写一个合并两行的代码
nnoremap <leader>j mq$a<Del><Esc>`q
" 行首行尾
nnoremap H ^
nnoremap L $
" todo 重写原H 原L 到当前窗口的顶部和底部  T B 或者 <leader>t <leader>b
"nnoremap <leader>m gt 
"nnoremap <leader>n gT


noremap ; :
"nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>v :tabe $MYVIMRC<cr>
nnoremap <leader>, ,
"nnoremap <leader>sv :source $MYVIMRC<cr>
noremap <leader>w viw
noremap <leader>s viws
noremap <leader>t :NERDTreeToggle<Enter>
noremap <leader>f :NERDTreeFind<Enter>
noremap <leader>c yyp
noremap <leader>d mqO<Esc>`q
noremap <leader>u mqkdd`q
noremap <leader>l ^v$



cnoremap jk <Esc>
cnoremap jn !

vnoremap H ^
vnoremap L $


" augroup setting
augroup mygroup
	autocmd!
    autocmd BufWritePost vimrc source $MYVIMRC 
	autocmd BufEnter *.gz	%!gunzip
	"autocmd BufNewFile *.txt :write "使用:e创建文件时立即写入磁盘
	"autocmd BufWritePre,BufRead *.html :normal gg=G
	autocmd FileType vim		 nnoremap <buffer> <localleader>m I"<Esc>
	autocmd FileType javascript  nnoremap <buffer> <localleader>m I//<esc>
	autocmd FileType php 		 nnoremap <buffer> <localleader>m I//<esc>
	"autocmd FileType python     iabbrev <buffer> iff if:<left>
    "autocmd FileType javascript :iabbrev <buffer> iff if ()<left> 
augroup END

augroup filetype_vim
	autocmd!
	"autocmd FileType vim setlocal foldmethod=marker
augroup END

" NERDTree plugin settings 

map <F3> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeShowBookmarks=1
" 打开vim时，自动打开NERDTree
"autocmd vimenter * NERDTree 
" 不管用！如果没有其他文件，自动关闭NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"autocmd BufRead * NERDTree
"wincmd w
"autocmd VimEnter * wincmd w
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let g:NERDTreeHidden=1


" iabbrev setting 
iabbrev -- ------------------------------


" Basic setting  
set helplang=cn 
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif
colorscheme Tomorrow-Night-Eighties
set number                      "显示行号 
set numberwidth=2               "设置行号宽度 
set showtabline=1               "隐藏顶部标签栏"
set guioptions+=r               "隐藏右侧滚动条" 
set guioptions-=L               "隐藏左侧滚动条"
set guioptions-=b               "隐藏底部滚动条"
set cursorline                  "突出显示当前行"
"set cursorcolumn               "突出显示当前列"
set langmenu=zh_CN.UTF-8        "显示中文菜单
syntax on                       "开启语法高亮
set wrap                        "设置代码折行"
set fileformat=unix             "设置以unix的格式保存文件"
set cindent                     "设置C样式的缩进格式"
set tabstop=4                   "一个 tab 显示出来是多少个空格，默认 8
set shiftwidth=4                "每一级缩进是多少个空格
set noexpandtab                 "是否使用空格代替tab
set backspace+=indent,eol,start "set backspace&可以对其重置
set showmatch                   "显示匹配的括号"
set scrolloff=5                 "距离顶部和底部5行"
set laststatus=2                "命令行为两行"
set mouse=a                     "启用鼠标"
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase                  "忽略大小写"
set incsearch
set nohlsearch                    "高亮搜索项"
set whichwrap+=<,>,h,l
set autoread

" powerline-status setting 
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

