if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has('termguicolors'))
  set termguicolors
endif
" 斜体
let g:material_terminal_italics = 1
let g:material_terminal_italics = 1

let g:material_theme_style ='ocean'
colorscheme material
" Fix italics in Vim
if !has('nvim')
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif
