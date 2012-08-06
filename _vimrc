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
" ͼ�ν����µ�����
    set nowrap
    set guioptions+=b
    " colo torte
else
" �ַ������µ�����
    set wrap
    " colo ron
endif

"���ڴ�С
"set lines=35 columns=150
"Windows ������VIM���
autocmd GUIEnter * simalt ~x

" ��ʾ�к�
set number

" �趨 tab ����Ϊ 4
set shiftwidth=4
set expandtab
set tabstop=8
set softtabstop=4

set smarttab 

set lbr 

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set whichwrap=b,s,<,>,[,] 

" �������ַ���������ѯʱ�ǳ����㣬��Ҫ����book���ʣ������뵽/bʱ�����Զ��ҵ���һ
" ��b��ͷ�ĵ��ʣ������뵽/boʱ�����Զ��ҵ���һ��bo��ͷ�ĵ��ʣ���
" �����ƣ����в���ʱ��ʹ�ô����û�����ҵ��𰸣�������Ҫƥ��ĵ���
" ʱ�������ǻس�
" ����ʱ������ʾ���ҵ����ı�
set incsearch

" ����ʱ���Դ�Сд,����һ�������ϴ�д��ĸʱ�Ա��ֶԴ�Сд����
set ignorecase 

" �����Զ�����,�Զ�ѡ����뷽ʽ
set smartindent

" ��ʾ״̬�� (Ĭ��ֵΪ 1, �޷���ʾ״̬��)
set laststatus=2

"��ʾ����������
set showmatch

" �趨��ɫ������������
colorscheme desert

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,cp950,latin1
set ambiwidth=double
set guifont=YaHei\ Consolas\ Hybrid:h12

" ����swf�����ļ�  
set noswapfile

" NERDTree setting
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2

" NERDTree���	
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

" �趨GVIMĬ��Ŀ¼
lcd D:\Work

" �Զ��л�����Ŀ¼���Ե�ǰ�򿪵��ļ�����Ŀ¼Ϊ׼
set autochdir
