" 设置 tab 为 2 个空格
set ts=2 sw=2
set expandtab
set autoindent

"============== 加载 vim-plug ==============
if empty(glob("~/.vim/autoload/plug.vim"))
execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')
"============== 加载 vim-plug ==============

" Nerd Tree 树状文件
Plug 'scrooloose/nerdtree'

" 代码自动补全
" Plug 'zxqfl/tabnine-vim'

"============== 结束 vim-plug ==============
call plug#end()
"============== 结束 vim-plug ==============
