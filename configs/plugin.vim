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
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion'
Plugin 'mattn/emmet-vim'
call vundle#end()            " required
filetype plugin indent on    " required



" NERDTree plugin settings 

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

" easymotion setting
" Leader>f{char} to move to {char}
map f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
"nnoremap <leader>s <Plug>(easymotion-overwin-f2)

" easymotion setting end


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
