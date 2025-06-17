" Set line numbers relative
set number
set relativenumber

" Cursor settings
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Adjust tab spacing
set shiftwidth=4
set tabstop=4

" Set search options
set ignorecase
set smartcase 

" Key remaps
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv
" Center when jumping to marker
nnoremap ` :execute "normal! `".nr2char(getchar())."zz"<CR>
nnoremap ' :execute "normal! '".nr2char(getchar())."zz"<CR>

" Enable syntaxhighlighting
syntax on
