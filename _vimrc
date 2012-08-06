" Set the pathogen plungin
call pathogen#infect()

"my custom settings

"窗口大小
"set lines=35 columns=150
"Windows 下启动VIM最大化
autocmd GUIEnter * simalt ~x

" 关闭 vi 兼容模式
set nocompatible

" 自动语法高亮
syntax on

" 检测文件类型
filetype on

" 检测文件类型插件
filetype plugin indent on

" 显示行号
set number

" 设定 tab 长度为 4
set expandtab
set tabstop=4
set shiftwidth=2
set softtabstop=4

" 搜索逐字符高亮，查询时非常方便，如要查找book单词，当输入到/b时，会自动找到第一
" 个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的单词，依
" 次类推，进行查找时，使用此设置会快速找到答案，当你找要匹配的单词
" 时，别忘记回车
" 搜索时高亮显示被找到的文本
set hlsearch
set incsearch

" 搜索时忽略大小写,但有一个或以上大写字母时仍保持对大小写敏感
set ignorecase 

"自动缩进，即为新行自动添加与当前行同等的缩进
set autoindent 

" 智能自动缩进,自动选择对齐方式
set smartindent

" 显示状态栏 (默认值为 1, 无法显示状态栏)
set laststatus=2

"显示括号配对情况
set showmatch

" 设定配色方案，即主题
colorscheme desert

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,cp950,latin1
set ambiwidth=double
set guifont=YaHei\ Consolas\ Hybrid:h12

" 禁止生成临时文件
set nobackup
" 禁用swf交换文件  
set noswapfile

" NERDTree setting
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2

" NERDTree插件	
map <F8> :NERDTreeToggle<CR>

" Close you vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary" ) | q | endif
" End NERDTree setting

" 设定GVIM默认目录
lcd D:\Work

" 自动切换工作目录，以当前打开的文件所在目录为准
set autochdir
