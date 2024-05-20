" Set line numbers relative
set number
set relativenumber

" Cursor settings
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Adjust tab spacing
set shiftwidth=4
set tabstop=4

" Key remaps
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv
