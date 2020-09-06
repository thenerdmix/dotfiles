set relativenumber

filetype plugin indent on
syntax on

"python keyboard shortcuts"
"when you are in insert mode..."
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:!clear;python %<CR>
"other wise..."
autocmd FileType python map <buffer> <F9> <esc>:w<CR>:!clear;python %<CR>
