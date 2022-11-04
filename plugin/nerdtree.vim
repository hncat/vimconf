" 打开目录树并打开对应目录
nnoremap <C-n> :NERDTreeFocus<CR>
" 打开/关闭目录树
nnoremap <C-t> :NERDTreeToggle<CR>
" nerdtree为最后一个窗口或者选项卡时自动关闭vim
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" 防止其他缓冲区在其窗口中替换 NERDTree
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" 每个选项卡上自动拥有相同的 NERDTree
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" 取消帮助文档显示
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSizeMax = 31
" 取消箭头
let g:NERDTreeDirArrowExpandable=""
let g:NERDTreeDirArrowCollapsible=""
