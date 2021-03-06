"设置帮助文档为中文
set helplang=cn

"设置文本编码为 utf-8
set encoding=utf-8

" 设置 tab 为 2 个空格
set ts=2
set expandtab

" 设置两个空格宽度
set shiftwidth=2
set softtabstop=2

" 设置为自动缩进
set autoindent

" 显示行号
set number

" 让光标所在的行高亮
set cursorline

" 显示不可见字符
set list

" 用特定的符号替换看不见的字符，比如tab， 空格
set listchars=tab:▸\ ,trail:▫

" 设置默认正则引擎，有时在打开 .ts 文件滑动会卡死，设置这个就好了
set regexpengine=2

"============== 快捷键映射 ==============

" tab 打开 NERDTree
nnoremap <silent> <tab> :NERDTree<CR>

"============== 快捷键映射 ==============


"============== coc 配置 ==============

" 加载插件
let g:coc_global_extensions = ['coc-json','coc-css','coc-eslint','coc-git','coc-html','coc-flow', 'coc-tsserver']

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"============== coc 配置 ==============


"============== 加载 vim-plug ==============
if empty(glob("~/.vim/autoload/plug.vim"))
execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')
"============== 加载 vim-plug ==============

" Nerd Tree 树状文件
Plug 'scrooloose/nerdtree'

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 底部状态栏
Plug 'vim-airline/vim-airline'

" jsdoc 插件
Plug 'heavenshell/vim-jsdoc', { 
  \ 'for': ['javascript', 'javascript.jsx','typescript'], 
  \ 'do': 'make install'
\}

"============== 结束 vim-plug ==============
call plug#end()
"============== 结束 vim-plug ==============
