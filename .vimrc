"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" nmap wm :WMToggle<cr>
" nmap <F2> :TagbarToggle<CR>
" map <F3> :NERDTreeToggle<CR>
" imap <F3> <ESC>:NERDTreeToggle<CR>
"
" map <F4> <ESC>:call Do_Cscope()<cr>
" imap <F4> <ESC>:call Do_Cscope()<cr>
" map <F5> :call Do_CsTag()<cr>
" imap <F5> <ESC>:call Do_CsTag()<cr>
"
" nmap <F6> :cn<cr>  " 切换到下一个结果
" nmap <F7> :cp<cr>  " 切换到上一个结果
" imap <F6> <ESC>:cn<cr>  " 切换到下一个结果
" imap <F7> <ESC>:cp<cr>  " 切换到上一个结果
" map <F8> <ESC>:!doxygen
"
" map <F10> <ESC>:ZoomWin<cr>
"
" nnoremap <leader>fb :CtrlPBuffer<CR>
" nnoremap <leader>fd :CtrlP<CR>
" nnoremap <Leader>fu :CtrlPFunky<Cr>
"
" let g:lt_location_list_toggle_map = '<leader>l'
" let g:lt_quickfix_list_toggle_map = '<leader>q'
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ";"    " 比较习惯用;作为命令前缀，右手小拇指直接能按到
set nocompatible    " 关闭兼容模式
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
"Bundle 'fholgado/minibufexpl.vim'
"Bundle 'vim-scripts/winmanager'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'vim-scripts/The-NERD-Commenter'
Bundle 'majutsushi/tagbar'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Raimondi/delimitMate'
Bundle 'Valloric/ListToggle'
Bundle 'tacahiroy/ctrlp-funky'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'scrooloose/syntastic'
Bundle 'DoxygenToolkit.vim'
"Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'vim-scripts/TaskList.vim'
"Bundle 'genutils'
"Bundle 'lookupfile'
Bundle 'OmniCppComplete'
Bundle 'snipmate'
Bundle 'ZoomWin'
Bundle 'sjl/gundo.vim'
"Bundle 'nathanaelkane/vim-indent-guides'
filetype plugin indent on

syntax enable       " 语法高亮
"filetype plugin on  " 文件类型插件
"filetype indent on
set shortmess=atI   " 去掉欢迎界面
set autoindent
autocmd BufEnter * :syntax sync fromstart
set nu              " 显示行号
set showcmd         " 显示命令
set lz              " 当运行宏时，在命令执行完成之前，不重绘屏幕
set hid             " 可以在没有保存的情况下切换buffer
set backspace=eol,start,indent
"set whichwrap+=<,>,h,l " 退格键和方向键可以换行
set incsearch       " 增量式搜索 即在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
"set nohlsearch
set hlsearch        " 高亮搜索
set ignorecase      " 搜索时忽略大小写
"set magic           " 额，自己:h magic吧，一行很难解释
set showmatch       " 显示匹配的括号
"set nobackup        " 关闭备份
"set nowb
"set noswapfile      " 不使用swp文件，注意，错误退出后无法恢复
"set lbr             " 在breakat字符处而不是最后一个字符处断行
"set ai              " 自动缩进
"set si              " 智能缩进
set cindent         " C/C++风格缩进
set wildmenu       " 增强模式中的命令行自动完成操作
"set nofen
"set fdl=10
set smartindent "为C程序提供自动缩进
set expandtab " 用空格代替制表符
set smarttab  " 在行和段开始处使用制表符
set shiftwidth=4
set tabstop=4   " 制表符为4

set history=400  " vim记住的历史操作的数量，默认的是20
set autoread     " 当文件在外部被修改时，自动重新读取
set mouse=a     " 在所有模式下都允许使用鼠标，还可以是n,v,i,c等

set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

set laststatus=2      " 总是显示状态栏
"highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
"highlight StatusLine cterm=bold ctermfg=darkgray ctermbg=lightred gui=none guibg=#3f4d77 guifg=#729eb0
hi StatusLine cterm=none ctermbg=darkgray ctermfg=lightred gui=none guibg=#3f4d77 guifg=#729eb0
set statusline=[%n]\ %<%f\ %{EchoFuncGetStatusLine()}\ %h%m%r%=%-10.(%l,%c%V%)\ %P(%L)

"用 */# 向 前/后 搜索光标下的单词
"vnoremap <silent> * :call VisualSearch('f')<CR>
"vnoremap <silent> # :call VisualSearch('b')<CR>

"恢复上次文件打开位置
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" 显示当前横竖线
set cursorline
"set cursorcolumn

"set path+=/usr/local/include/**, inc
set path=.,/usr/include/**,,inc,/usr/local/include/**,

" 常规模式下输入 cs 清除行尾空格
"nmap cs :%s/\s\+$//g<CR>:noh<CR>
nmap <leader>ds :%s/\s\+$//g<CR>

" " 常规模式下输入 cm 清除行尾 ^M 符号
nmap <leader>dm :%s/\r$//g<CR>:noh<CR>

"共享剪贴板  
set clipboard+=unnamed 

"主题 molokai
Bundle 'tomasr/molokai'
colorscheme molokai
"let g:molokai_original = 1
"colorscheme elflord
set background=dark
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F1> <Esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" minibufexpl插件的一般设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1 "按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapWindowNavArrows = 0 "按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

"解决FileExplorer窗口变小问题
let g:miniBufExplForceSyntaxEnable = 1
let g:miniBufExplorerMoreThanOne=2
let g:miniBufExplCycleArround=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" WinManager setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:persistentBehaviour=1             " 只剩一个窗口时, 退出vim
"let g:winManagerWindowLayout='FileExplorer|TagList'
"nmap wm :WMToggle<cr>

"-----------------------------------------------------------------
"" plugin - NERD_tree.vim 以树状方式浏览系统中的文件和目录
" :ERDtree 打开NERD_tree         :NERDtreeClose    关闭NERD_tree
" o 打开关闭文件或者目录         t 在标签页中打开
" T 在后台标签页中打开           ! 执行此文件
" p 到上层目录                   P 到根目录
" K 到第一个节点                 J 到最后一个节点
" u 打开上层目录                 m 显示文件系统菜单（添加、删除、移动操作）
" r 递归刷新当前目录             R 递归刷新当前根目录
" "-----------------------------------------------------------------
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeBookmarksFile=$VIM.'\Data\NerdBookmarks.txt'
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=25
let NERDTreeQuitOnOpen=1 "打开文件时关闭树
"let NERDTreeShowBookmarks=1 "显示书签
let NERDTreeMinimalUI=1 "不显示帮助面板
let NERDTreeIgnore=['\.vim$', '\~$', '*.swp']

" F3 NERDTree 切换
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>

"-----------------------------------------------------------------
" plugin - NERD_commenter.vim   注释代码用的，
" [count],cc 光标以下count行逐行添加注释(7,cc)
" [count],cu 光标以下count行逐行取消注释(7,cu)
" [count],cm 光标以下count行尝试添加块注释(7,cm)
" ,cA 在行尾插入 /* */,并且进入插入模式。 这个命令方便写注释。
" 注：count参数可选，无则默认为选中行或当前行
" "-----------------------------------------------------------------
let NERDSpaceDelims=1       " 让注释符与语句之间留一个空格
let NERDCompactSexyComs=1   " 多行注释时样子更好看

"-----------------------------------------------------------------
" QuitcFix Setting
"-----------------------------------------------------------------
nmap <F6> :cn<cr>  " 切换到下一个结果
nmap <F7> :cp<cr>  " 切换到上一个结果
imap <F6> <ESC>:cn<cr>  " 切换到下一个结果
imap <F7> <ESC>:cp<cr>  " 切换到上一个结果

"-----------------------------------------------------------------
" echofunc.vim 提示函数原形
" 按键"Alt+-"和"Alt+="向前和向后翻页
" "-----------------------------------------------------------------
"let g:EchoFuncAutoStartBalloonDeclaration = 0  " Automatically start balloon
"declaration if not 0
"let g:EchoFuncShowOnStatus=1
"""let g:EchoFuncKeyNext='<C+b>'
"""let g:EchoFuncKeyPrev='<C+f>'
"let g:EchoFuncKeyNext='<S-n>'
"let g:EchoFuncKeyPrev='<S-p>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"hi EasyMotionTarget ctermbg=none ctermfg=green
"hi EasyMotionShade  ctermbg=none ctermfg=blue
"hi EasyMotionTarget2First ctermbg=none ctermfg=red
"hi EasyMotionTarget2Second ctermbg=none ctermfg=lightred
"hi EasyMotionMoveHL ctermbg=green ctermfg=black

hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment
hi link EasyMotionTarget2First MatchParen
hi link EasyMotionTarget2Second MatchParen
hi link EasyMotionMoveHL Search

" Gif config
"nmap s <Plug>(easymotion-s2)
"nmap t <Plug>(easymotion-t2)

"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to
" EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" 在每次进行切换分支或者重新设定custome_ignore选项的时候,必须手动清除CtrlP的缓存,
" 也可以使用下句不让它进行缓存处理，但扫描时间会比较耗时
"let g:ctrlp_use_caching = 0
"let g:ctrlp_working_path_mode=0
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=50
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_regexp = 0 "修改该选项为1，设置默认为使用正则表达式匹配
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:50,results:50'
nnoremap <leader>b :CtrlPBuffer<CR>
"nnoremap <leader>fd :CtrlPDir<CR>
nnoremap <leader>d :CtrlP<CR>
nnoremap <leader>t :CtrlPTag<CR>

"==============================================================
" ctrlp-funky settings  ctrlp插件 - 不用ctag进行函数快速跳转
"==============================================================
"nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>f :CtrlPFunky<Cr>
"narrow the list down with a word under cursor
"nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_multi_buffers = 0 "Funky searches function defs from all buffers
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_funky_nolim = 1
let g:ctrlp_extensions = ['funky']

"-----------------------------------------------------------------
" showmarks.vim
" <Leader>mt : Toggles ShowMarks on and off.
" <Leader>mh : Hides an individual mark.
" <Leader>ma : Hides all marks in the current buffer.
" <Leader>mm : Places the next available mark.
"-----------------------------------------------------------------
" Enable ShowMarks
let showmarks_enable = 1
" Show which marks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Ignore help, quickfix, non-modifiable buffers
let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1

" For showmarks plugin
"hi ShowMarksHLl ctermbg=lightCyan ctermfg=Black  guibg=#FFDB72    guifg=Black
hi ShowMarksHLl ctermbg=lightblue ctermfg=Black  guibg=#FFDB72    guifg=Black
hi ShowMarksHLu ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" listToggle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F2> :TagbarToggle<CR>
imap <F2> <ESC>:TagbarToggle<CR>
let g:tagbar_autofocus = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Doxygen toolkit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
":Dox  :DoxLic :DoxAuthor   命令
let g:DoxygenToolkit_commentType = "C"
let g:DoxygenToolkit_briefTag_pre="@brief  "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@retval"
let g:DoxygenToolkit_authorTag="@author  "
let g:DoxygenToolkit_dateTag="@date "
let g:DoxygenToolkit_versionTag="@version "
let g:DoxygenToolkit_briefTag_funcName="no"
let g:doxygen_enhanced_color=0
let g:load_doxygen_syntax=0
let g:DoxygenToolkit_authorName="liaoqizhen"
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="--------------------------------------------------------------------------"
map <leader>ua :DoxAuthor<ESC>
map <leader>uf :Dox
map <leader>ub :DoxBlock<ESC>
map <leader>uc o/** -   */<ESC>2ba

map <F8> <ESC>:!doxygen<ESC>
imap <F8> <ESC>:!doxygen<ESC>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set foldmethod=syntax
set foldmethod=indent
set foldlevel=100   " 启动vim时不要自动折叠代码
set foldenable
""set foldmethod=manual
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SrcExpl : SourceExplorer plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-indent-guides: 可视化的方式能将相同缩进的代码关联起来。
" 显示可视化缩进,对齐线
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TaskList.vim: 查看并快速跳转到代码中的TODO列表
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <leader>td <Plug>TaskList

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! DeleteFile(dir, filename)
    if filereadable(a:filename)
        let ret = delete("./".a:filename)

        if (ret != 0)
            echohl WarningMsg | echo "Failed to delete ".a:filename | echohl None
            return 1
        else
            return 0
        endif
    endif
    return 0
endfunction

map <F5> <ESC>:call Do_Tag()<cr>
imap <F5> <ESC>:call Do_Tag()<cr>
function! Do_Tag()
    let dir = getcwd()

    "先删除已有的tags, 如果存在且无法删除，则报错。
    if ( DeleteFile(dir, "tags") )
        return
    endif

    if(executable('ctags'))
        silent! execute "!ctags -R --c++-kinds=+p --fields=+ialS --extra=+q ."
    endif
    " 刷新屏幕
    execute "redr!"
endfunction

""""""""""""""""""""""""""""""""""""""""""
" cscope setting
""""""""""""""""""""""""""""""""""""""""""""
set cscopequickfix=s-,c-,d-,i-,t-,e- "这个是设定是否使用 quickfix    窗口来显示 cscope 结果"

if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0 "假如’csto’被设置为0，那么cscope数据将会被优先查找
    set cst "通过设置’cst’，你将始终同时查找cscope数据库和tags文件
    set nocsverb
    "set cspc=3 "决定了一个文件的路径的多少部分被显示。默认值是0，所以整个路径都会被显示。
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif

 " s: C语言符号  g: 定义     d: 这个函数调用的函数 c: 调用这个函数的函数
 " t: 文本       e: egrep模式    f: 文件     i: include本文件的文件
nmap <leader>ss :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <leader>sg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sc :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <leader>st :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <leader>se :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
"nmap <leader>si :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:copen<CR>
nmap <leader>si :cs find i <C-R>=expand("<cfile>")<CR>$<CR>:copen<CR>
nmap <leader>sd :cs find d <C-R>=expand("<cword>")<CR><CR>:copen<CR>

map <F4> <ESC>:call Do_Cscope()<cr>
imap <F4> <ESC>:call Do_Cscope()<cr>

function! Do_Cscope()
  let dir = getcwd()

  "先删除已有的cscope文件，如果存在且无法删除，则报错。
  if ( DeleteFile(dir, "cscope.files") )
    return
  endif

  if ( DeleteFile(dir, "cscope.out") )
    return
  endif

  "-R: 在生成索引文件时，搜索子目录树中的代码
  "-b: 只生成索引文件，不进入cscope的界面
  "-k: 在生成索引文件时，不搜索/usr/include目录
  "-q: 生成cscope.in.out和cscope.po.out文件，加快cscope的索引速度
  if( has("cscope") && executable('cscope') )
    "silent! execute "!find . -name '*.h' -o -name '*.c'  > cscope.files"
    silent! execute "!find . -iname '*.[ch]' -o -name '*.cpp' > cscope.files"
    silent! execute "!cscope -Rbq -i cscope.files"
    execute "normal :"

    if filereadable("cscope.out")
      "execute "cs add cscope.out"
      silent! execute "cs reset"
    endif
  endif
  " 刷新屏幕
  execute "redr!"
endfunction

""""""""""""""""""""""""""""""""""""""""""
" OmniCppComplete
""""""""""""""""""""""""""""""""""""""""""""
let OmniCpp_NamespaceSearch = 1 "命名空间查找控制: 0 : 禁止查找命名空间; : 查找当前文件缓冲区内的命名空间(缺省);2 : 查找当前文件缓冲区和包含文件中的命名空间
let OmniCpp_GlobalScopeSearch = 1 "全局查找控制。0:禁止；1:允许(缺省)
let OmniCpp_ShowAccess = 1  "是否显示访问控制信息('+', '-', '#')。0/1, 缺省为1(显示)
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" 自动关闭补全窗口
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" supertab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
" 设置按下<Tab>后默认的补全方式, 默认是<C-P>,
" 现在改为<C-X><C-O>. 关于<C-P>的补全方式,
" 还有其他的补全方式, 你可以看看下面的一些帮助:
" :help ins-completion
" :help compl-omni
"
let g:SuperTabRetainCompletionType=2
" 0 - 不记录上次的补全方式
" 1 - 记住上次的补全方式,直到用其他的补全命令改变它
" 2 - 记住上次的补全方式,直到按ESC退出插入模式为止

let g:snips_trigger_key='<leader>y'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ZoomWin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F10> <ESC>:ZoomWin<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gundo 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>u :GundoToggle<CR>
