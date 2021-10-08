#########################################################################
# File Name: install.sh
# Author: zzy
# mail: 942744575@qq.com
# Created Time: Sat 21 Apr 2018 04:07:01 PM CST
#########################################################################
#!/bin/bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.vim/colors
cp desert1.vim ~/.vim/colors
work_path=$(dirname $(readlink -f $0))
cp vimrc  ~/.vim/
echo "source ${work_path}/vimrc_base" >>~/.vim/vimrc

