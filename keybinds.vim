" Mapping setting 
set timeout timeoutlen=3000
let mapleader=','
let maplocalleader=','
" doller sign 
inoremap jd $
" equal sign 
inoremap je =
" plus sign 
inoremap jp +
" minus sign 
inoremap jm -
" star sign
inoremap jx *
inoremap jk <esc>
cnoremap jk <Esc>
" todo not work
vnoremap kl <Esc>

inoremap jh _

inoremap jl ()<left>

inoremap <C-l> <right>
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>

map f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)

augroup _innormap
	autocmd!
	autocmd FileType php inoremap jjp $_POST['']<left><left>
	autocmd FileType php inoremap jjg $_GET['']<left><left>
	autocmd FileType php inoremap <buffer> jji  if<space>(<Esc>mqa){<Enter>}<Esc>`qa
	autocmd FileType php inoremap <buffer> jjt  try<space>{<CR>}catch()<esc>mqa{<CR>}<esc>`q
augroup end


noremap ; :
"nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>vd :tabe $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeFind<cr>
nnoremap <leader>l ^v$
" todo toggle window not work
nnoremap <leader>w <C-w-w>   


" augroup setting
augroup mygroup
	autocmd!
"   autocmd BufWritePost vimrc source $MYVIMRC 
	autocmd BufEnter *.gz	%!gunzip
	"autocmd BufNewFile *.txt :write "使用:e创建文件时立即写入磁盘
	"autocmd BufWritePre,BufRead *.html :normal gg=G
	autocmd FileType vim		 nnoremap <buffer> <localleader>m I"<Esc>
	autocmd FileType javascript  nnoremap <buffer> <localleader>m I//<esc>
	autocmd FileType php 		 nnoremap <buffer> <localleader>m I//<esc>
	"autocmd FileType python     iabbrev <buffer> iff if:<left>
    "autocmd FileType javascript :iabbrev <buffer> iff if ()<left> 
augroup END

