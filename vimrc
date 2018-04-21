"load vim基础设置
source ~/vimconfig/vimrc_base
"load 配置自动插入文件头
source ~/vimconfig/vimrc_title
"配色方案
colorscheme desert1

"设置快捷键
"设置taglist打开关闭的快捷键F8
noremap <F8> :TlistToggle<CR>
"更新ctags标签文件快捷键设置
noremap <F9> :!ctags -R<CR>
"au BufRead,BufNewFile [Mm]akefile set filetype=make

" tabNext tabprev
noremap <F11> : tabn <CR>
noremap <F12> : tabp <CR>
"-- Map Setting --
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
noremap <C-w> <C-w>w
"noremap <F6> :run macros/gdb_mappings.vim <CR><CR> <F7><CR>


" bundle 
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"taglist
Plugin 'vim-scripts/taglist.vim'
" 漂亮的状态栏
Plugin 'vim-airline/vim-airline'
" airline主题
Plugin 'vim-airline/vim-airline-themes'
" acp 补全需要的
Plugin 'eparreno/vim-l9'
"低配版的自动补全,如果没有ycm就用这个
"Plugin 'othree/vim-autocomplpop'
" ycm 和上面那个启用一个就ok
Plugin 'Valloric/YouCompleteMe'
source ~/vimconfig/ycm.vim
Plugin 'a.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use: filetype plugin on

"  Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

"-- airline setting --
let g:airline_theme='bubblegum'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#whitespace#enabled = 0


" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
"nnoremap <Leader>ilt :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=32

" 设置 ctags 对哪些代码标识符生成标签
set tags+=./tags
set tags+=~/xhx_dev/serv_share/trunk/tags
set tags+=~/xhx_dev/serv_share/cache/tags
set tags+=~/xhx_dev/dbproxy/trunk/ser/tags
set tags+=~/xhx_dev/libtaomee/tags
set tags+=~/xhx_dev/libtaomee++/tags

nnoremap <Leader>sp :CtrlSF<CR>

"-----------taglist------------------
filetype plugin on
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
" 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_left=1
let Tlist_Sort_Type = "name"    " 按照名称排序  
let Tlist_Use_Right_Window = 0  " 在右侧显示窗口  
let Tlist_Compart_Format = 1    " 压缩方式  
let Tlist_Compart_Format = 1    " 压缩方式  
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer  
"let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags  
"let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树  
let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的
let g:winManagerWindowLayout='FileExplorer|TagList'
let Tlist_Auto_Open = 0 "启动vim后自动打开taglist窗口
let Tlist_Show_One_File = 2 "不同时显示多个文件的tag，仅显示一个
let Tlist_Exit_OnlyWindow = 1 "taglist为最后一个窗口时，退出vim
