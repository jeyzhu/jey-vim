set nocompatible " 关闭 vi 兼容模式

"---------Vundle Start---------------------
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype off
"let Vundle manage Vundle
"required! 
Bundle 'gmarik/vundle'
"My bundles here:
"original repos on GitHub (来自 github  只要写 作者名/项目名)
Bundle 'kien/ctrlp.vim'
"自动补全HTML插件
Bundle 'HTML-AutoCloseTag' 
"代码补全插件
"Bundle 'Valloric/YouCompleteMe'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
"代码注释插件
Bundle 'scrooloose/nerdcommenter'
"目录文件导航
Bundle 'scrooloose/nerdtree'
"session 管理插件
Bundle 'vim-scripts/sessionman.vim'
"VIM 显示增强
Bundle 'Lokaltog/vim-powerline'
"缩进标识/标尺 
Bundle 'Yggdroot/indentLine'
"跳转光标后任意位置  快捷键 ,,gE ,,fE
Bundle 'Lokaltog/vim-easymotion'
"快速给词汇加环绕符号 例如引号 括号 之类 ysiw[] 
Bundle 'tpope/vim-surround'
"javascript  插件
Bundle 'pangloss/vim-javascript'
" 颜色
Bundle 'tomasr/molokai'
"标签插件 快速定位插件
Bundle 'vim-scripts/Vim-bookmark'
"Bundle 'vim-scripts/Visual-Mark'
"taglist 查看代码结构
Bundle 'vim-scripts/taglist.vim'
"窗口控制器
Bundle 'vim-scripts/winmanager'
"bufexplorer 管理
Bundle 'vim-scripts/bufexplorer.zip'
"Bundle 'drmingdrmer/xptemplate'
Bundle 'msanders/snipmate.vim'
"Markdown
"Bundle 'plasticboy/vim-markdown'
"
" vim-scripts repos (来自vim-scripts 直接写 插件名)
Bundle 'L9'
Bundle 'FuzzyFinder'
"添加注释信息插件
Bundle 'AuthorInfo'
"
" non-GitHub repos (自己的git库插件)
"Bundle 'git://git.wincent.com/command-t.git'
"
" Git repos on your local machine (i.e. when working on your own plugin) 
"Bundle 'file:///Users/gmarik/path/to/plugin'
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
"---------Vundle  END---------------------

filetype plugin indent on " 开启插件
syntax on " 自动语法高亮
let mapleader = ","
colorscheme molokai "设定配色方案
"set cuc " 设置标尺来显示代码对齐
"set cul " 高亮光标所在行
set number " 显示行号
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set autoindent "自动缩进
set autoread " 设置当文件被改动时自动载入
"set paste "保持原格式粘贴
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set expandtab
set nobackup " 覆盖文件时不备份
set tags=tags; " tags 插件
set autochdir " 改变vim tgas 的当前目录
set backupcopy=yes " 设置备份时的行为为覆盖
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
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
setlocal foldlevel=1 " 设置折叠层数为
"set mouse=a
"set foldclose=all " 设置为自动关闭折叠 
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠
"
"WMToggle 设置开始
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
"WMToggle 设置结束
"
" 设置字体 以及中文支持
if has("win32")
set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI
set gfw=幼圆:h10.5:cGB2312
endif
"
" 配置多语言环境
if has("multi_byte")
" UTF-8 编码
set encoding=utf-8
set termencoding=utf-8
set formatoptions+=mM
set fencs=utf-8,gbk
"
if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
set ambiwidth=double
endif
"
if has("win32")
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8
endif
else
echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif
"
if has("win32")
    au GUIEnter * simalt ~x
endif
"
" 中文帮助
set helplang=cn

"一些不错的映射转换语法（如果在一个文件中混合了不同语言时有用）

" 代码折叠
set foldmethod=indent

" 高亮显示当前行配置开始
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" 高亮显示当前行配置结束
"
" 关闭VIM的时候保存会话，按F7读取会话
set sessionoptions=buffers,sesdir,help,tabpages,winsize
au VimLeave * mks! ~/Session.vim
nmap <F7> :so ~/Session.vim<CR>

"---------------------------------------------------------------------------
"---------------------------------------------------------------------------

"---------------------------------------------------------------------------
"mru插件	最近打开历史文档
"nnoremap ,2 :MRU<return>
"最近常用(MRU) 插件提供了便于在 Vim 中访问最近打开/编辑的文件列表的功能
"通过按 'o' 键，选中的文件将在 MRU 窗口之下的新窗口中打开(窗口被拆分显示)
"在 MRU 窗口中按 'v' 键可以在只读模式下打开文件
"在 MRU 窗口这按 't' 键让文件在新标签页(tab)中打开
"按 'u' 键可以更新 MRU 窗口的文件列表。这在设置 MRU 窗口始终打开时非常有用
"要控制 MRU 窗口仅显示匹配某模式的 MRU 列表，可以给 :MRU 命令指定特定的模式。例如，希望仅显示文件名包含 'vim' 的列表，可以使用命令 ':MRU vim'
"---------------------------------------------------------------------------

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

"Tagbar 函数列表插件
"nmap <S-F8> :TagbarToggle<cr>
"let g:tagbar_ctags_bin = 'ctags'
"let g:tagbar_width = 30
"let Tlist_Ctags_Cmd = '/usr/bin/ctags'

set fileformats=unix,dos
"set fileformats=dos,unix,mac
" nmap <leader>fd :se fileformat=dos<CR>
" nmap <leader>fu :se fileformat=unix<CR>

" Python 文件的一般设置，比如不要 tab 等
autocmd FileType python set autoindent smartindent tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType python map <F5> :!python %<CR>

"窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动
"光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>,切换的
"时候会变得非常方便.
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

" 打开javascript折叠
let b:javascript_fold=1
" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1

"-----------------------------------------------------------------
" plugin – checksyntax.vim JavaScript常见语法错误检查
" 默认快捷方式为 F5
"-----------------------------------------------------------------
"let g:checksyntax_auto = 0 " 不自动检查

"-----------------------------------------------------------------
" plugin - NeoComplCache.vim 自动补全插件
"-----------------------------------------------------------------
"let g:AutoComplPop_NotEnableAtStartup = 1
"let g:NeoComplCache_EnableAtStartup = 1
"let g:NeoComplCache_SmartCase = 1
"let g:NeoComplCache_TagsAutoUpdate = 1
"let g:NeoComplCache_EnableInfo = 1
"let g:NeoComplCache_EnableCamelCaseCompletion = 1
"let g:NeoComplCache_MinSyntaxLength = 3
"let g:NeoComplCache_EnableSkipCompletion = 1
"let g:NeoComplCache_SkipInputTime = '0.5'
"let g:NeoComplCache_SnippetsDir = $VIMFILES.'/snippets'
" <TAB> completion.
"inoremap <expr><TAB> pumvisible() ? '\<C-n>' : '\<TAB>'
" snippets expand key
"imap <silent> <C-e> <Plug>(neocomplcache_snippets_expand)
"smap <silent> <C-e> <Plug>(neocomplcache_snippets_expand)

nnoremap <leader>2 :call SetComment()<return>
"/* 加入注释 */
 func SetComment()
     call setline(1,"/*================================") 
     call append(line("."),   "*   Copyright (C) ".strftime("%Y")." All rights reserved.")
     call append(line(".")+1, "*   ") 
     call append(line(".")+2, "*   FileName:".expand("%:t")) 
     call append(line(".")+3, "*   Author:zhujianjun")
     call append(line(".")+4, "*   Crate Time:".strftime("%Y-%m-%d %H:%M")) 
     call append(line(".")+5, "*   Last modified:".strftime("%Y-%m-%d %H:%M")) 
     call append(line(".")+6, "*   Description:") 
     call append(line(".")+7, "*")
     call append(line(".")+8, "=================================*/") 
 endfunc
"
"CtrlP插件	查找并打开文件
nnoremap <leader>tp :CtrlP<return>
nnoremap <Leader>tm :CtrlPMRU<return>
"使用方式	ctrl+t	新窗口打开查找的文件
"
"neocomplcache  代码补全插件配置开始
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
"neocomplcache  代码补全插件配置结束
"
"Nerdtree 目录导航插件配置开始
map <leader>nt :NERDTreeToggle<CR>:NERDTreeMirror<CR>
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
let g:vimrc_author='jeyzhu' 
let g:vimrc_email='jeyzhu@anjuke.com' 
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
