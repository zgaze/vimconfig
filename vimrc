colorscheme desert1

"plugs
call plug#begin('~/.vim/plugged')
"taglist
Plug 'vim-scripts/taglist.vim'
"" 漂亮的状态栏
Plug 'vim-airline/vim-airline'
" airline主题
Plug 'vim-airline/vim-airline-themes'
" coc 自动补全
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
" 自动生成tag
Plug 'ludovicchabant/vim-gutentags'
"低配版的自动补全,如果没有coc就用这个
Plug 'skywind3000/vim-auto-popmenu'
Plug 'vim-scripts/a.vim'
call plug#end()

" https://github.com/junegunn/vim-plug
" help
" :PlugStatus       - lists configured plugins
" :PlugInstall      - installs plugins; append `!` to update or just
" :PlugUpgrade      - Upgrade vim-plug itself
" :PlugUpdate [name ...] [#threads]     - Install or update plugins
" :PlugSearch foo   - searches for foo; append `!` to refresh local cache
" :PlugClean        - confirms removal of unused plugins; append `!` to


" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'
" trace
let g:gutentags_trace = 1 

" 配置 ctags 的参数
" 设置 ctags 对哪些代码标识符生成标签
set tags=./.tags;,.tags
let g:gutentags_ctags_extra_args = ['--fields=+niazS'] 
"let g:gutentags_ctags_extra_args += ['--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags', '--extras=+q']

"nnoremap <Leader>ilt :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=32

"-- airline setting --
let g:airline_theme='bubblegum'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#whitespace#enabled = 0
nnoremap <Leader>sp :CtrlSF<CR>

" 设定需要生效的文件类型，如果是 "*" 的话，代表所有类型
let g:apc_enable_ft = {'text':1, 'markdown':1, 'cpp':1}
" 设定从字典文件以及当前打开的文件里收集补全单词，详情看 ':help cpt'
set cpt=.,k,w,b
" 不要自动选中第一个选项。
"set completeopt=menu,menuone,noselect
" 禁止在下方显示一些啰嗦的提示
set shortmess+=c


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
