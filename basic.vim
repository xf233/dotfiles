set helplang=cn 
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif
colorscheme Tomorrow-Night-Eighties
set number                      "显示行号 
set nobackup
set noswapfile
set numberwidth=2               "设置行号宽度 
set showtabline=1               "隐藏顶部标签栏
set guioptions+=r               "隐藏右侧滚动条 
set guioptions-=L               "隐藏左侧滚动条
set guioptions-=b               "隐藏底部滚动条
set cursorline                  "突出显示当前行
"set cursorcolumn               "突出显示当前列
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
