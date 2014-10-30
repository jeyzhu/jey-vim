set nocompatible " 关闭 vi 兼容模式
filetype off
"---------Vundle Start---------------------
set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
"let Vundle manage Vundle
"required! 
Plugin 'gmarik/Vundle.vim'
"My bundles here:
"original repos on GitHub (来自 github  只要写 作者名/项目名)
Plugin 'kien/ctrlp.vim'
"代码补全插件
"Plugin 'Shougo/neocomplcache'
"Plugin 'Shougo/neosnippet'
"代码注释插件
Plugin 'scrooloose/nerdcommenter'
"目录文件导航
Plugin 'scrooloose/nerdtree'
"Vim 中文Help Doc
Plugin 'asins/vimcdoc'
"Markdown
Plugin 'plasticboy/vim-markdown'
"VIM 显示增强
"Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
"缩进标识/标尺 
Plugin 'Yggdroot/indentLine'
" 颜色
Plugin 'tomasr/molokai'
"tabline 很赞的插件
Plugin 'mkitt/tabline.vim'
"session 管理插件
Plugin 'vim-scripts/sessionman.vim'
"标签插件 快速定位插件
Plugin 'vim-scripts/Vim-bookmark'
"taglist 查看代码结构
Plugin 'vim-scripts/taglist.vim'
"窗口控制器
Plugin 'vim-scripts/winmanager'
"bufexplorer 管理 打开的文件列表快速切换
Plugin 'vim-scripts/bufexplorer.zip'
"c
Plugin 'vim-scripts/c.vim'
"Plugin 'fholgado/minibufexpl.vim'
"snipmate
Plugin 'msanders/snipmate.vim'
" vim-scripts repos (来自vim-scripts 直接写 插件名)
"添加注释信息插件
Plugin 'AuthorInfo'
"php debuger
"Plugin 'vim-scripts/DBGp-client'
"Plugin 'vim-scripts/debugger.py'
Plugin 'joonty/vdebug.git'
"Plugin 'brookhong/DBGPavim'
Plugin 'scrooloose/syntastic' "语法错误自动检测
"
" non-GitHub repos (自己的git库插件)
"Plugin 'git://git.wincent.com/command-t.git'
"
" Git repos on your local machine (i.e. when working on your own plugin) 
"
" Bundle help
"Deprecated Names  | New Names
":Bundle            | Plugin
":BundleInstall(!)  | PluginInstall(!), VundleInstall(!)
":BundleUpdate      | PluginUpdate, VundleUpdate
":BundleSearch(!)   | PluginSearch(!), VundleSearch(!)
":BundleClean       | PluginClean(!), VundleClean(!)
":BundleList        | PluginList
call vundle#end()
"---------Vundle  END---------------------

