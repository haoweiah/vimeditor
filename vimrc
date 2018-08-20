" 设置字符编码                                                                
set fileencoding=utf-8                                             
set fileencodings=utf-8,gb2312,gb18030,latin1                      
set termencoding=utf-8                                             
set encoding=utf-8                                                 
                                                                   
" 语法高亮                                                         
syntax on                                                          
" 深色背景                                                         
color evening                                                      
" 检测文件类型                                                     
filetype on                                                        
" 根据文件类型加载对应的插件                                       
filetype plugin on                                                 
                                                                
" 显示行号                                                      
set number                                                      
" 在第64列显示竖线                                                      
"set cc=72                                                          
" 高亮显示当前行                                                   
set cursorline 
    hi CursorLine cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
    hi CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
" 设置各种缩进                                                     
set tabstop=4                                                      
set softtabstop=4                                                  
set shiftwidth=4                                                   
set autoindent                                                     
set smartindent                                                    
set cindent                                                        

" tab转换为空格                                                    
set ts=4
set expandtab
%retab!

" 将ESC键映射为两次j键 
inoremap jj <Esc> 


"
set laststatus=2
highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
set ruler

" plug 插件
if empty(glob('~/.vim/autoload/plug.vim'))
   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/godlygeek/tabular.git'
Plug 'https://github.com/yianwillis/vimcdoc.git'
Plug 'https://github.com/iamcco/markdown-preview.vim.git'
Plug 'https://github.com/Valloric/YouCompleteMe.git'
Plug 'https://github.com/tpope/vim-endwise.git'
call plug#end()


" 设置按键区域

nmap <silent> <F8> <Plug>MarkdownPreview        " for normal mode
imap <silent> <F8> <Plug>MarkdownPreview        " for insert mode
nmap <silent> <F9> <Plug>StopMarkdownPreview    " for normal mode
imap <silent> <F9> <Plug>StopMarkdownPreview    " for insert mode
