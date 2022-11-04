" 显示行号
set number

set nocompatible
set noshowmode

" 搜索
set hlsearch
set ignorecase
set smartcase
set incsearch

" 设置缩进
set softtabstop=4
set shiftwidth=4
set autoindent

" 空格替代tab
set expandtab

" 不要临时文件
set noswapfile

" 当光标一段时间保持不动了，就禁用高亮
autocmd cursorhold * set nohlsearch
" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>
noremap # #:set hlsearch<cr>

" 取消上下左右键
noremap <up> <nop>
inoremap <up> <nop>
noremap <down> <nop>
inoremap <down> <nop>
noremap <left> <nop>
inoremap <left> <nop>
noremap <right> <nop>
inoremap <right> <nop>
