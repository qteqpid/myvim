execute pathogen#infect()


" basic setting
set nocompatible			" 关闭兼容模式
color desert
filetype off
"filetype indent on
set autoindent				" 自动缩进
set number				" 显示行号
syntax on

" 设置检测的文件编码
set fileencodings=utf-8,ucs-bom,gbk,gb18030,big5

" 将tab显示为4个空格宽度
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

" search
set incsearch                           " 搜索即显示
set hlsearch                            " 搜索结果高亮
"set ignorecase smartcase		" 搜索字符串只包含小字字母时不区分大小写，否则区分

" 状态栏
set laststatus=2      " 总是显示状态栏
set statusline=[%n]\ %f%m%r%h\ \|%=\|\ %l,%c\ %p%%\ %{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ 
highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue

" mouse
"set mouse=v
set ttymouse=xterm2  " 可拖动切屏大小

" ctags
set tags=./tags,./../tags,./../../tags,./../../../tags,tags " which tags files CTRL-] will search
set cscopetag

" doxygen
let g:DoxygenToolkit_authorName="zhanggongliang@meituan.com"
let g:DoxygenToolkit_licenseTag="\<enter>Copyright (c) 2013 meituan.com, Inc. All Rights Reserved" 
let g:DoxygenToolkit_compactDoc="yes"

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
