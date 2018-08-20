" 简单的vim配置
" 简单的terminator配置
安装plugn时可以在前面加上这个配置
if empty(glob('~/.vim/autoload/plug.vim'))                                  
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif 

call plug#begin('~/.vim/plugged')
 # 在这中间添加插件
    eg: 
    Plug 'https://github.com/yianwillis/vimcdoc.git'

call plug#end()

安装命令在命令模式:PlugInstall



