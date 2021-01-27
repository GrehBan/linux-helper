call plug#begin('~/.vim/plugged')

" https://github.com/romainl/flattened
Plug 'romainl/flattened'
" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'
" https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree'
" https://vimawesome.com/plugin/syntastic
Plug 'vim-syntastic/syntastic'

call plug#end() 

" display lightline
set laststatus=2
set noshowmode
autocmd vimenter * NERDTree

nmap <C-n> :NERDTreeToggle<CR>


" syntastic opts
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


menu Кодировка.utf-8 :e ++enc=utf8 <CR>
menu Кодировка.windows-1251 :e ++enc=cp1251<CR>
menu Кодировка.koi8-r :e ++enc=koi8-r<CR>
menu Кодировка.cp866 :e ++enc=cp866<CR>
set fileencodings=utf-8,cp1251
set iskeyword=@,a-z,A-Z,48-57,_,128-175,192-255
set nu
set autoindent
syntax on
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set foldenable
set fdm=indent
set foldopen=all
set autochdir
function! BufNewFile_PY()
0put = '#!/usr/bin/env python'
1put = '#-*- coding: utf-8 -*-'
$put =
$put =
normal G
endfunction

autocmd BufNewFile *.py call BufNewFile_PY()
autocmd BufNewFile *.pyw call BufNewFile_PY()
imap [ []<LEFT>
imap ( ()<LEFT>
imap { {}<LEFT>

