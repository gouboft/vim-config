"Do not check compatible
set nocompatible

"Set the mouse selet to system buffer
set mouse=v

"Line number
set number

"Detect the file type
filetype on

" Syntax Highlighting
syntax on

"Auto line tab width
set autoindent
set smartindent

"Forbidden alarm
set vb t_vb=

"GBK decode suport
let &termencoding=&encoding
set fileencodings=utf-8,gbk,big5,ucs-bom,cp936

"Display line number in the right down corner
set ruler

"Hightlight the search result
set hls

"Increase search
set incsearch

"Do not backup the modified file
set nobackup

"Copy and paste key map
vmap z "*y
nmap z "*p

"Press F4 to save & exit vim
map <F4> :wq<CR>

"Set leader key
let mapleader = ","
let g:mapleader = ","

""""""""""""""""""""""""""""""
"Taglist
""""""""""""""""""""""""""""""
map <silent> t :TlistToggle<CR>

""""""""""""""""""""""""""""""
" Netrw
""""""""""""""""""""""""""""""
let g:netrw_winsize = 30
nmap <silent> <leader>fe :Hexplore!<CR> 

""""""""""""""""""""""""""""""
" mark setting
""""""""""""""""""""""""""""""
nmap <silent> <leader>hl <Plug>MarkSet
vmap <silent> <leader>hl <Plug>MarkSet
nmap <silent> <leader>hh <Plug>MarkClear
vmap <silent> <leader>hh <Plug>MarkClear
nmap <silent> <leader>hr <Plug>MarkRegex
vmap <silent> <leader>hr <Plug>MarkRegex

""""""""""""""""""""""""""""""
" lookupfile setting
""""""""""""""""""""""""""""""
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
if filereadable("./filenametags")                "设置tag文件的名字
let g:LookupFile_TagExpr = '"./filenametags"'
endif
"Map LookupFile to ,lk
nmap <silent> <leader>lk :LUTags<cr>
"Map LUBufs to ,ll
nmap <silent> <leader>ll :LUBufs<cr>
"Map LUWalk to ,lw
nmap <silent> <leader>lw :LUWalk<cr>
"The path of the filenametags
let g:LookupFile_TagExpr = '"./filenametags"'

"Auto save the last edit position
if has("autocmd")
   autocmd BufRead *.txt set tw=78
   autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal g'\"" |
      \ endif
endif
