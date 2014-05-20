#!/bin/bash
echo 'Begin installation......'
echo 'Please set your backup Note:will be move vimrc and .vim into this dir(default:~/vimbackup)'
read -s vimbackup #old vimrc backup dir
if [ ! $vimbackup ]; then
    vimbackup=~/vimbackup #default
fi
echo 'backing up ......'
mkdir -p ${vimbackup}
mv  ~/.vimrc ${vimbackup}/vimrc #backup vimrc
mv  ~/.vim ${vimbackup}/vim #backup .vim
echo 'Install vundle,please wait a moment......'
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim #install vundle
echo 'set your use config'
echo 'Please set your username'
read -s uname
echo 'Please set your email'
read -s email
echo 'Please set your tmp path (default:~/.tmp)'
read -s tmp
if [ ! $tmp ]; then
    tmp=~/.tmp #default
fi
echo 'make swap dir......'
mkdir -p $tmp'/vim/swap' #swap file path
echo 'make undo dir......'
mkdir -p $tmp'/vim/undo' #undo file path
echo 'touch plugins.vim'
echo 'source '$PWD'/plugins.vim' > ~/.vim/plugins.vim #touch plugins.vim
echo 'touch user.config......'
echo "let g:u_name = '${uname}'" >> ~/.vim/user.config #set user var
echo "let g:u_email = '${email}'" >> ~/.vim/user.config #set user var
echo "let g:u_path = '${tmp}'" >> ~/.vim/user.config #set user var
echo 'touch .vimrc......'
echo 'source '$PWD'/vimrc' > ~/.vimrc #touch .vimrc
echo 'Install plugins,please wait a moment,when it ok will closed the vim'
vim +PluginInstall +qall
cp -r ~/.vim/bundle/AuthorInfo/ftplugin/ ~/.vim/bundle/AuthorInfo/plugin/ #Fix plugin error
echo 'Installation is complete'
