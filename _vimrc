" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Set the pathogen plungin
call pathogen#infect()

" my custom settings

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif

set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

if has('mouse')
  set mouse=a
endif

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

if (has("gui_running"))
" 图形界面下的设置
    set nowrap
    set guioptions+=b
    " colo torte
else
" 字符界面下的设置
    set wrap
    " colo ron
endif

"窗口大小
"set lines=35 columns=150
"Windows 下启动VIM最大化
autocmd GUIEnter * simalt ~x

" 显示行号
set number

" 设定 tab 长度为 4
set shiftwidth=4
set expandtab
set tabstop=8
set softtabstop=4

set smarttab 

set lbr 

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set whichwrap=b,s,<,>,[,] 

" 搜索逐字符高亮，查询时非常方便，如要查找book单词，当输入到/b时，会自动找到第一
" 个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的单词，依
" 次类推，进行查找时，使用此设置会快速找到答案，当你找要匹配的单词
" 时，别忘记回车
" 搜索时高亮显示被找到的文本
set incsearch

" 搜索时忽略大小写,但有一个或以上大写字母时仍保持对大小写敏感
set ignorecase 

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

"=============================================================================
" Platform dependent settings
"=============================================================================

if (has("win32"))

    "-------------------------------------------------------------------------
    " Win32
    "-------------------------------------------------------------------------

    if (has("gui_running"))
        set guifont=Bitstream_Vera_Sans_Mono:h9:cANSI
        set guifontwide=NSimSun:h9:cGB2312
    endif

else

    if (has("gui_running"))
        set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
    endif

endif

" 设定GVIM默认目录
lcd D:\Work

" 自动切换工作目录，以当前打开的文件所在目录为准
set autochdir
