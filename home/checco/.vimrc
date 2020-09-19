"enter the current millenium
set nocompatible

set number
set relativenumber

filetype plugin indent on
syntax on

"FINDING FILES
"search down into subfolders 
set path+=**

"display matching files when we tab complete
set wildmenu

"tab width
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"python keyboard shortcuts
"when you are in insert mode...
autocmd FileType python imap <buffer> <F8> <esc>:w<CR>:!clear;python %<CR>
"other wise...
autocmd FileType python map <buffer> <F8> <esc>:w<CR>:!clear;python %<CR>

"c++
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++11 % -o %:r<CR>
autocmd filetype cpp nnoremap <F8> :!./%:r<CR>
autocmd filetype cpp nnoremap <F7> :!./%:r < in.txt<CR>
"quando c'è il grader usa
autocmd filetype cpp nnoremap <F10> :w <bar> !g++ -std=c++11 grader.cpp % -o %:r<CR>

"fly between buffers
nnoremap gb :ls<CR>:b<Space>
nnoremap bn :bn<CR>

"fly between tabs
nnoremap tn :tabNext<CR>

"per cancellare i tab senza problemi
set softtabstop=4 expandtab
let g:Imap_UsePlaceHolders = 0

"autocomplete brackets"
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O"

"VimPlug
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'qpkorr/vim-renamer'

call plug#end()

