"fradeb's vim config
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
"echo -ne '\033c' clears the screen
"when you are in insert mode...
autocmd FileType python imap <buffer> <F8> <esc>:w<CR>:!echo -ne '\033c';python %<CR>
"other wise...
autocmd FileType python map <buffer> <F8> <esc>:w<CR>:!echo -ne '\033c';python %<CR>

"c++
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++11 % -o %:r<CR>
autocmd filetype cpp nnoremap <F8> :!./%:r<CR>
autocmd filetype cpp nnoremap <F7> :!./%:r < in.txt<CR>
"quando c'è il grader usa
autocmd filetype cpp nnoremap <F10> :w <bar> !g++ -std=c++11 grader.cpp % -o %:r<CR>

"markdown
autocmd filetype markdown nnoremap <F9> :w <bar> !firefox %<CR>

"caps lock
autocmd VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
autocmd VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

"fly between buffers
nnoremap gb :tabs<CR>:tabn<Space>
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

"productivity
Plug 'tpope/vim-surround'
Plug 'qpkorr/vim-renamer'
Plug 'sirver/ultisnips'
Plug 'preservim/nerdtree'

"latex
Plug 'lervag/vimtex'

call plug#end()

"vimtex options
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
"let g:vimtex_quickfix_mode=0
set conceallevel=0
let g:tex_conceal='abdmg'

"ultisnips options
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

"nerdtree
set mouse=a
let g:NERDTreeMouseMode=3
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

"change matching parenthesis highlighting
colorscheme ron
hi MatchParen ctermbg=56
