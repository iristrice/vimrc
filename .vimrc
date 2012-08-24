set nocompatible               " 非兼容模式
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle "garbas/vim-snipmate"
Bundle "vim-ruby/vim-ruby"
Bundle "fholgado/minibufexpl.vim"
Bundle "vim-scripts/taglist.vim"
Bundle "vim-scripts/winmanager--Fox"
Bundle "scrooloose/nerdtree"
Bundle "hukl/Smyck-Color-Scheme"
" Bundle "plasticboy/vim-markdown"
Bundle "hallison/vim-markdown"
Bundle "majutsushi/tagbar"

color blackboard               " 颜色
set nu                         " 行号
set guifont=Monaco\ 10         " 字体
" set guifont=Consolas:h11
set autoindent                 " 自动对齐，使用 noautoindent 取消设置：
set smartindent                " 依据上面的格式，智能对齐
set tabstop=4                  " 设置tab键的宽度
set backspace=indent,eol,start " 退格键有效
" set backspace=2
set cindent shiftwidth=4       " 自换行时行间交错使用4个空格
set expandtab                  " To enter a real tab character use Ctrl-V<Tab> key sequence.
set smartindent                " 智能自动缩进
set ruler                      " 右下角显示光标位置的状态行
set incsearch                  " 查找book时，当输入/b时会自动找到
set hlsearch                   " 开启高亮显示结果
set incsearch                  " 开启实时搜索功能
set nowrapscan                 " 搜索到文件两端时不重新搜索
set nocompatible               " 关闭兼容模式
set vb t_vb=                   " 关闭提示音
" set ruler                  " 在编辑过程中，在右下角显示光标位置的状态行
set hidden                     " 允许在有未保存的修改时切换缓冲区
set list                       " 显示Tab符，使用一高亮竖线代替
set listchars=tab:\|\ ,
syntax enable                                                 " 打开语法高亮
syntax on                                                     " 开启文件类型侦测
" set ofu=syntaxcomplete#Complete " Omni-complete
" filetype on
filetype indent on                                            " 针对不同的文件类型采用不同的缩进格式
filetype plugin on                                            " 针对不同的文件类型加载对应的插件
filetype plugin indent on                                     " 启用自动补全
set nobackup                                                  " 不生成备份文件
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby " 识别ruby文件
set lines=33 columns=87 " 启动gvim时窗口的大小

"设置GVIM默认目录
"lcd C:\Sites\demo
"设定文件浏览器目录为当前目录
set bsdir=buffer
"自动切换目录
set autochdir

" gvim e303 无法打开 “***“的交换文件，恢复将不可能
" set directory=.,$TEMP

"解决编码
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese
"set langmenu=zh_CN.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"language messages zh_cn.utf-8
"language messages zh_cn.utf-8

"Toggle Menu and Toolbar gvim 菜单栏与工具栏隐藏与显示动态切换
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

" Taglist
let Tlist_Enable_Fold_Column = 0
let Tlist_Compact_Format = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
" map <F4> :TlistToggle<cr>
" vmap <F4> <esc>:TlistToggle<cr>
" imap <F4> <esc>:TlistToggle<cr>

map <F4> :TagbarToggle<cr>
vmap <F4> <esc>:TagbarToggle<cr>
imap <F4> <esc>:TagbarToggle<cr>
" Nerdtree
let Tlist_Use_Right_Window = 1
map <F3> :NERDTreeToggle<cr>
vmap <F3> <esc>:NERDTreeToggle<cr>
imap <F3> <esc>:NERDTreeToggle<cr>

" "winManager setting
" let g:NERDTree_title="[NERD Tree]"
" let g:winManagerWindowLayout='NERDTree|TagList'
" let g:winManagerWidth = 30
" let g:defaultExplorer = 0
" 
" function! NERDTree_Start()
"     exec 'NERDTree'
" endfunction
" function! NERDTree_IsValid()
"     return 1
" endfunction
" 
" nmap <C-W><C-F> :FirstExplorerWindow<cr>
" nmap <C-W><C-B> :BottomExplorerWindow<cr>
" nmap <silent> <F3> :WMToggle<cr>:q<cr>


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
"improve autocomplete menu color
highlight Pmenu    ctermfg=2 ctermbg=0 gui=bold
highlight PmenuSel ctermfg=0 ctermbg=7

"omnicomplete settings
let OmniCpp_GlobalScopeSearch   = 1
let OmniCpp_DisplayMode         = 1
let OmniCpp_ShowScopeInAbbr     = 0 " do not show namespace in pop-up
let OmniCpp_ShowPrototypeInAbbr = 1 " show prototype in pop-up
let OmniCpp_ShowAccess          = 1 " show access in pop-up
let OmniCpp_SelectFirstItem     = 1 " select first item in pop-up
set completeopt=menuone,menu,longest


"markdown
"au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd

nmap <silent><F7> :w<CR>:!ruby %<CR>
imap <F4> <Esc><F4>  
imap <F5> <Esc><F5>  
imap <F6> <Esc><F6>

nmap <silent><C-S> :w<CR>
imap <C-S> <Esc><C-S>
