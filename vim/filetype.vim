"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype generic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set space before and after = + - *
"set space after ,
"au FileType python,c,cpp inoremap <buffer>= <c-r>=EqualSign('=')<CR>
"au FileType python,c,cpp inoremap <buffer>+ <c-r>=EqualSign('+')<CR>
"au FileType python inoremap <buffer>- <c-r>=EqualSign('-')<CR>
"au FileType python inoremap <buffer>* <c-r>=EqualSign('*')<CR>
"au FileType python inoremap <buffer>/ <c-r>=EqualSign('/')<CR>
"au FileType python inoremap <buffer>> <c-r>=EqualSign('>')<CR>
"au FileType python inoremap <buffer>< <c-r>=EqualSign('<')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Todo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"au BufNewFile,BufRead *.todo so ~/vim_local/syntax/amido.vim

""""""""""""""""""""""""""""""
" HTML related
""""""""""""""""""""""""""""""
" HTML entities - used by xml edit plugin
let xml_use_xhtml = 1
"let xml_no_auto_nesting = 1

"To HTML
let html_use_css = 1
let html_number_lines = 0
let use_xhtml = 1

"""""""""""""""""""""""""""""""
" Vim section
"""""""""""""""""""""""""""""""
autocmd FileType vim set nofen
autocmd FileType vim map <buffer> <leader><space> :w!<cr>:source %<cr>

""""""""""""""""""""""""""""""
" HTML
"""""""""""""""""""""""""""""""
au FileType html set ft=xml
au FileType html set syntax=html

""""""""""""""""""""""""""""""
" C/C++
"""""""""""""""""""""""""""""""
au FileType c,cpp,xml  map <buffer> <leader><space> :make<cr>
"autocmd FileType c,cpp  setl foldmethod=syntax | setl fen

""""""""""""""""""""""""""""""
" Python
"""""""""""""""""""""""""""""""
au FileType python setlocal expandtab | setlocal shiftwidth=4 |
 \setlocal softtabstop=4 | "setlocal textwidth=76 |
 \setlocal tabstop=4 "| setlocal foldmethod=indent
"au FileType python set omnifunc=pythoncomplete#Complete
"au BufRead *.py map <buffer> <F5> :w<CR>:!/usr/bin/env python % <CR>

