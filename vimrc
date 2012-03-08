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
set fileencodings=utf-8,gbk,ucs-bom,cp936

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
