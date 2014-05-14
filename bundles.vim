set nocompatible " 关闭 vi 兼容模式
filetype off
"---------Vundle Start---------------------
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
"let Vundle manage Vundle
"required! 
Bundle 'gmarik/vundle'
"My bundles here:
"original repos on GitHub (来自 github  只要写 作者名/项目名)
Bundle 'kien/ctrlp.vim'
"代码补全插件
"Bundle 'Shougo/neocomplcache'
"Bundle 'Shougo/neosnippet'
"代码注释插件
Bundle 'scrooloose/nerdcommenter'
"目录文件导航
Bundle 'scrooloose/nerdtree'
"Vim 中文Help Doc
Bundle 'asins/vimcdoc'
"Markdown
"Bundle 'plasticboy/vim-markdown'
"VIM 显示增强
Bundle 'Lokaltog/vim-powerline'
"缩进标识/标尺 
Bundle 'Yggdroot/indentLine'
" 颜色
Bundle 'tomasr/molokai'
"session 管理插件
Bundle 'vim-scripts/sessionman.vim'
"标签插件 快速定位插件
Bundle 'vim-scripts/Vim-bookmark'
"taglist 查看代码结构
Bundle 'vim-scripts/taglist.vim'
"窗口控制器
Bundle 'vim-scripts/winmanager'
"bufexplorer 管理 打开的文件列表快速切换
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'msanders/snipmate.vim'
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

