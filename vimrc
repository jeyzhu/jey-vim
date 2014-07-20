source ~/.vim/plugins.vim
"=================用户自定义变量=====================
let g:u_name = 'jeyzhu' "user name
let g:u_email = 'jeyzhu@anjuke.com' "email
let u_path = '~/.tmp' "vim tmp 目录
source ~/.vim/user.config "使用用户自己的配置 覆盖如上的变量
let u_swap_path=u_path.'/vim/swap' "vim swap 交换文件存放目录
let g:u_undo_path=u_path.'/vim/undo' "vim undo (撤销操作 文件保存路径) 
"================用户自定义变量结束===================
filetype plugin indent on " 开启插件
syntax on " 自动语法高亮
let mapleader = ","
colorscheme molokai "设定配色方案
"set cuc " 设置标尺来显示代码对齐
set number " 显示行号
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set autoindent "自动缩进
set autoread " 设置当文件被改动时自动载入
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set expandtab "空格代替 Tab
set tabstop=4 " 设定 tab 长度为 4
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set nobackup " 覆盖文件时不备份
set tags=tags; " tags 插件
set autochdir " 改变vim tgas 的当前目录
set backupcopy=yes " 设置备份时的行为为覆盖
set ignorecase smartcase " 搜索时忽略大小写，但在采用的模式有一个或以上大写字母时仍保持对大小写敏感
"set nowrapscan " 禁止在搜索到文件两端时重新搜索
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码
" set showmatch " 插入括号时，短暂地跳转到匹配的对应括号
" set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set guioptions-=T " 隐藏工具栏
set guioptions-=m " 隐藏菜单栏
set guioptions-=l
set guioptions-=r
set smartindent " 开启新行时使用智能自动缩进
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 总是显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\  " 设置在状态行显示的信息
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
set foldlevel=3 " 设置折叠层数为
set history=1000
"
"WMToggle 设置开始
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
"WMToggle 设置结束
"
"编码设置
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set langmenu=zh_CN.utf-8
language messages zh_CN.UTF-8
" 文件格式，默认 ffs=dos,unix
set fileformat=unix
set fileformats=unix,dos,mac
set ambiwidth=double
"
"交换文件(swap file)存放路径
exe "set directory=".u_swap_path
"
" 持久化撤销设置
if has("persistent_undo")
    set undofile
    set undolevels=1000
    exe "set undodir=".g:u_undo_path
    set undofile
endif
"
" 中文帮助
set helplang=cn
"
" 高亮显示当前行配置开始
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" 高亮显示当前行配置结束
" 关闭VIM的时候保存会话
set sessionoptions=buffers,sesdir,help,tabpages,winsize
"---------------------------------------------------------------------------
"bufexplorer插件	缓冲区文件打开
" \be 全屏方式查看全部打开的文件列表
" \bv 左右方式查看 \bs 上下方式查看
"---------------------------------------------------------------------------

"--------------------------------------------------------------------------
"NERD_commente (代码注释)插件
let NERDSpaceDelims=1 " 让注释符与语句之间留一个空格
let NERDCompactSexyComs=1 " 多行注释时样子更好看
",ca在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
",cc注释当前行
",c<space> 切换注释/非注释状态
",cs 以”性感”的方式注释
",cA 在当前行尾添加注释符，并进入Insert模式
",cu 取消注释
",c$ 从光标开始到行尾注释
",cc:光标以下count行添加注释(2,cc) 
",cu:光标以下count行取消注释(2,cu)
",cm:光标以下count行添加块注释(2,cm)
"Normal模式下，几乎所有命令前面都可以指定行数
"Visual模式下执行命令，会对选中的特定区块进行注释/反注释
"---------------------------------------------------------------------------

nnoremap <S-F1> :set filetype=xhtml<return>
nnoremap <S-F2> :set filetype=css<return>
nnoremap <S-F3> :set filetype=javascript<return>
nnoremap <S-F4> :set filetype=php<return>
nnoremap <S-F5> :set filetype=python<return>
"去除文件中^M这个符号
nnoremap <S-F6> :e ++ff=dos<return>
"去除搜索高亮显示
nmap <Leader>1 :noh<return>
"快速打开新窗口
nmap <Leader>tn :tabnew<return>

" Python 文件的一般设置，比如不要 tab 等
autocmd FileType python set autoindent smartindent tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType python map <F5> :!python %<CR>

" 打开javascript折叠
let b:javascript_fold=1
" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1

noremap <leader>sm :call SetComment()<return>
"/* 加入注释 */
 func SetComment()
     normal o
     call setline(line("."),"    /*") 
     call append(line("."), "     * @Func:")
     call append(line(".")+1, "     * @Author:".g:u_name)
     call append(line(".")+2, "     * @Crate Time:".strftime("%Y-%m-%d %H:%M")) 
     call append(line(".")+3, "     * @Last modified:".strftime("%Y-%m-%d %H:%M")) 
     call append(line(".")+4, "     * @Description:") 
     call append(line(".")+5, "     * @Return:")
     call append(line(".")+6, "     */") 
 endfunc

"echo php print_r debug
noremap <leader>pr :call EchoPrintR()<return>
"print_r function
 func EchoPrintR()
     normal o
     call setline('.', "echo '<pre>';")
     let firstLn = line('.')
     normal o
     call setline('.', 'print_r();')
     let gotoLn = line('.')
     normal o
     call setline('.', "echo '</pre>';")
     normal o
     call setline('.', 'exit();')
     exe 'normal '.firstLn.'G'
     exe 'normal 4V='
     exe 'normal '.gotoLn.'G'
     exe "normal /)\<CR>"
     startinsert
 endfunc
"insert status echo print_r
imap <C-T> <pre><CR>print_r()<C-O>mz;<CR></pre><C-O>`z 
"
"CtrlP插件	查找并打开文件
nnoremap <leader>tp :CtrlP<return> "文件搜索模式打开
nnoremap <leader>tb :CtrlPBuffer<return> "用缓冲区搜索模式打开CtrlP
nnoremap <Leader>tm :CtrlPMRU<return> "用最近最多使用模式打开CtrlP
nnoremap <Leader>td :CtrlPBookmarkDir<return> "书签标记的工作目录
nnoremap <Leader>ta :CtrlPBookmarkDirAdd<return> "添加标记书签工作目录 <F5>刷新 <F7>清除
"使用方式	ctrl+t	新窗口打开查找的文件
"Nerdtree 目录导航插件配置开始
noremap <leader>nt :NERDTreeToggle<CR>:NERDTreeMirror<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
"Nerdtree 目录导航插件配置结束
"
"sessionman 配置开始
"set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
nmap <leader>sl :SessionList<CR>
nmap <leader>ss :SessionSave<CR>
nmap <leader>sc :SessionClose<CR>
"sessionman 配置结束
"
"indentline 缩进标识 配置开始 
let g:indentLine_enabled = 0
let g:indentLine_color_term = 239
"let g:indentLine_color_gui = '#A4E57E'
nnoremap <leader>ig :IndentLinesToggle<CR>:set list! lcs=tab:\\|\<Space><CR>
"indentline 缩进标识 配置结束 
"
"vim-powerline 配置开始
set t_Co=256
"let g:Powerline_symbols = 'fancy'
"vim-powerline 配置结束
"
"添加注释信息插件 配置开始
let g:vimrc_author= g:u_name 
let g:vimrc_email= g:u_email 
let g:vimrc_homepage='' 
nmap <leader>ai :AuthorInfoDetect<cr>
"添加注释信息插件 配置结束
"
"bufexplorer 配置开始
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.
autocmd BufWinEnter \[Buf\ List\] setl nonumber
"bufexplorer 配置结束
"
"Markdown 配置开始
"禁用折叠
"let g:vim_markdown_folding_disabled = 1
"Markdown 配置结束
"
"手工折叠代码
nmap <leader>fd :set fdm=manual<return>

