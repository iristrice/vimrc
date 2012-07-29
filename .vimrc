set nocompatible               " �Ǽ���ģʽ
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'gmarik/snipmate.vim'
Bundle 'honza/snipmate-snippets'

color blackboard               " ��ɫ
set nu                         " �к�
set guifont=Monaco\ 10         " ����
" set guifont=Consolas:h11
set autoindent                 " �Զ����룬ʹ�� noautoindent ȡ�����ã�
set smartindent                " ��������ĸ�ʽ�����ܶ���
set tabstop=4                  " ����tab���Ŀ��
set backspace=indent,eol,start " �˸����Ч
" set backspace=2
set cindent shiftwidth=4       " �Ի���ʱ�м佻��ʹ��4���ո�
set expandtab                  " To enter a real tab character use Ctrl-V<Tab> key sequence.
set smartindent                " �����Զ�����
set ruler                      " ���½���ʾ���λ�õ�״̬��
set incsearch                  " ����bookʱ��������/bʱ���Զ��ҵ�
set hlsearch                   " ����������ʾ���
set incsearch                  " ����ʵʱ��������
set nowrapscan                 " �������ļ�����ʱ����������
set nocompatible               " �رռ���ģʽ
set vb t_vb=                   " �ر���ʾ��
" set ruler                  " �ڱ༭�����У������½���ʾ���λ�õ�״̬��
set hidden                     " ��������δ������޸�ʱ�л�������
set list                       " ��ʾTab����ʹ��һ�������ߴ���
set listchars=tab:\|\ ,
syntax enable                                                 " ���﷨����
syntax on                                                     " �����ļ��������
filetype indent on                                            " ��Բ�ͬ���ļ����Ͳ��ò�ͬ��������ʽ
filetype plugin on                                            " ��Բ�ͬ���ļ����ͼ��ض�Ӧ�Ĳ��
filetype plugin indent on                                     " �����Զ���ȫ
set nobackup                                                  " �����ɱ����ļ�
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby " ʶ��ruby�ļ�
set lines=37 columns=97 " ����gvimʱ���ڵĴ�С

"����GVIMĬ��Ŀ¼
"lcd C:\Sites\demo
"�趨�ļ������Ŀ¼Ϊ��ǰĿ¼
set bsdir=buffer
"�Զ��л�Ŀ¼
set autochdir

" gvim e303 �޷��� ��***���Ľ����ļ����ָ���������
" set directory=.,$TEMP

"�������
set encoding=utf-8
set termencoding=utf-8
set fileencoding=chinese
set fileencodings=ucs-bom,utf-8,chinese
"set langmenu=zh_CN.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"language messages zh_cn.utf-8
"language messages zh_cn.utf-8

"Toggle Menu and Toolbar gvim �˵����빤������������ʾ��̬�л�
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>

"minibufexpl
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

"winManager setting
let g:NERDTree_title="[NERD Tree]"
let g:winManagerWindowLayout='NERDTree|TagList'
let g:winManagerWidth = 30
let g:defaultExplorer = 0

function! NERDTree_Start()
    exec 'NERDTree'
endfunction
function! NERDTree_IsValid()
    return 1
endfunction

nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap <silent> <F3> :WMToggle<cr>
nmap <silent> <C-k> <C-W><C-k>
nmap <silent> <C-j> <C-W><C-j>
nmap <silent> <C-h> <C-W><C-h>
nmap <silent> <C-l> <C-W><C-l>

if has("autocmd")
    autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
    autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading=1  
    autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
    autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global=1
endif

nmap <silent><F7> :w<CR>:!ruby.exe %<CR><CR>
