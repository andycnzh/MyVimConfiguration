" Set the pathogen plungin
call pathogen#infect()

"my custom settings

"���ڴ�С
"set lines=35 columns=150
"Windows ������VIM���
autocmd GUIEnter * simalt ~x

" �ر� vi ����ģʽ
set nocompatible

" �Զ��﷨����
syntax on

" ����ļ�����
filetype on

" ����ļ����Ͳ��
filetype plugin indent on

" ��ʾ�к�
set number

" �趨 tab ����Ϊ 4
set expandtab
set tabstop=4
set shiftwidth=2
set softtabstop=4

" �������ַ���������ѯʱ�ǳ����㣬��Ҫ����book���ʣ������뵽/bʱ�����Զ��ҵ���һ
" ��b��ͷ�ĵ��ʣ������뵽/boʱ�����Զ��ҵ���һ��bo��ͷ�ĵ��ʣ���
" �����ƣ����в���ʱ��ʹ�ô����û�����ҵ��𰸣�������Ҫƥ��ĵ���
" ʱ�������ǻس�
" ����ʱ������ʾ���ҵ����ı�
set hlsearch
set incsearch

" ����ʱ���Դ�Сд,����һ�������ϴ�д��ĸʱ�Ա��ֶԴ�Сд����
set ignorecase 

"�Զ���������Ϊ�����Զ�����뵱ǰ��ͬ�ȵ�����
set autoindent 

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

" ��ֹ������ʱ�ļ�
set nobackup
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

" �趨GVIMĬ��Ŀ¼
lcd D:\Work

" �Զ��л�����Ŀ¼���Ե�ǰ�򿪵��ļ�����Ŀ¼Ϊ׼
set autochdir
