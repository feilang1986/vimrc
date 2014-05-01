" When create .c,.h,.sh,.java, auto complete file infomation
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java,*.py,*.md exec ":call SetTitle()" 
func SetTitle() 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: tau") 
        call append(line(".")+2, "\# Mailto: guantau@163.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "\#!/bin/bash") 
        call append(line(".")+6, "") 
        call append(line(".")+7, "") 
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"#coding=utf-8")
        call append(line(".")+1,"'''")
        call append(line(".")+2, "File Name: ".expand("%")) 
        call append(line(".")+3, "Author: tau") 
        call append(line(".")+4, "Mailto: guantau@163.com") 
        call append(line(".")+5, "Created Time: ".strftime("%c")) 
        call append(line(".")+6,"'''")
        call append(line(".")+7, "") 
        call append(line(".")+8, "") 
    elseif &filetype == 'mkd'
        call setline(1,"<head><meta charset=\"UTF-8\"></head>")
    else 
        call setline(1, "/*************************************************************************") 
        call append(line("."), "    > File Name: ".expand("%")) 
        call append(line(".")+1, "    > Author: tau") 
        call append(line(".")+2, "    > Mailto: guantau@163.com ") 
        call append(line(".")+3, "    > Created Time: ".strftime("%c")) 
        call append(line(".")+4, " ************************************************************************/") 
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
    if &filetype == 'java'
        call append(line(".")+6,"public class ".expand("%"))
        call append(line(".")+7,"")
    endif
    exec "normal G"
endfunc 

func! CompileRun()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'java' 
        exec "!javac %" 
        exec "!java %<"
    elseif &filetype == 'sh'
        exec "! ./%"
    elseif &filetype == 'python'
        exec "!/usr/bin/env python %"
    elseif &filetype == 'mkd'
"        exec "!touch ~/temp.html"
"        exec "!perl ~/.vim/markdown.pl % > /tmp/temp.html<"<CR>
"        exec "!markdown % > /tmp/temp.html<"<CR>
"        exec "md"
        exec "!firefox /tmp/markdown.html &"
    endif
endfunc

func! RunDebug()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -g -o %<"
        exec "!gdb ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -g -o %<"
        exec "!gdb ./%<"
    elseif &filetype == 'python'
        exec "!pudb %"
    endif
endfunc

" Count buffer numbers
function! NrBufs()
    let i = bufnr('$')
    let j = 0
    while i >= 1
        if buflisted(i)
            let j+=1
        endif
        let i-=1
    endwhile
    return j
endfunction

" Close window when there is only one buffer
function! BufClose()
    let buffer_count = NrBufs()
    if buffer_count == 1
        execute("quit")
    else
        execute("bdelete")
    endif
endfunction

function! BufCloseForce()
    let buffer_count = NrBufs()
    if buffer_count == 1
        execute("quit!")
    else
        execute("bdelete!")
    endif
endfunction

" Switch to buffer according to file name
function! SwitchToBuf(filename)
    "let fullfn = substitute(a:filename, "^\\~/", $HOME . "/", "")
    " find in current tab
    let bufwinnr = bufwinnr(a:filename)
    if bufwinnr != -1
        exec bufwinnr . "wincmd w"
        return
    else
        " find in each tab
        tabfirst
        let tab = 1
        while tab <= tabpagenr("$")
            let bufwinnr = bufwinnr(a:filename)
            if bufwinnr != -1
                exec "normal " . tab . "gt"
                exec bufwinnr . "wincmd w"
                return
            endif
            tabnext
            let tab = tab + 1
        endwhile
        " not exist, new tab
        exec "e " . a:filename
    endif
endfunction

" From an idea by Michael Naumann
function! VisualSearch(direction) range
  let l:saved_reg = @"
  execute "normal! vgvy"
  let l:pattern = escape(@", '\\/.*$^~[]')
  let l:pattern = substitute(l:pattern, "\n$", "", "")
  if a:direction == 'b'
    execute "normal ?" . l:pattern . "^M"
  else
    execute "normal /" . l:pattern . "^M"
  endif
  let @/ = l:pattern
  let @" = l:saved_reg
endfunction

func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  nohl
  exe "normal `z"
endfunc

function! s:GetVisualSelection()
    let save_a = @a
    silent normal! gv"ay
    let v = @a
    let @a = save_a
    let var = escape(v, '\\/.$*')
    return var
endfunction

"A function that inserts links & anchors on a TOhtml export.
" Notice:
" Syntax used is:
" Link
" Anchor
function! SmartTOHtml()
 TOhtml
 try
  %s/&quot;\s\+\*&gt; \(.\+\)</" <a href="#\1" style="color: cyan">\1<\/a></g
  %s/&quot;\(-\|\s\)\+\*&gt; \(.\+\)</" \&nbsp;\&nbsp; <a href="#\2" style="color: cyan;">\2<\/a></g
  %s/&quot;\s\+=&gt; \(.\+\)</" <a name="\1" style="color: #fff">\1<\/a></g
 catch
 endtry
 exe ":write!"
 exe ":bd"
endfunction

" add space
function! EqualSign(char)
   if a:char  =~ '='  && getline('.') =~ ".*("
       return a:char
   endif
   let ex1 = getline('.')[col('.') - 3]
   let ex2 = getline('.')[col('.') - 2]

   if ex1 =~ "[-=+><>\/\*]"
       if ex2 !~ "\s"
           return "\<ESC>i".a:char."\<SPACE>"
       else
           return "\<ESC>xa".a:char."\<SPACE>"
       endif
   else
       if ex2 !~ "\s"
           return "\<SPACE>".a:char."\<SPACE>\<ESC>a"
       else
           return a:char."\<SPACE>\<ESC>a"
       endif
   endif
endf

" auto pair
function! ClosePair(char)
 if getline('.')[col('.') - 1] == a:char
     return "\<Right>"
 else
     return a:char
 endif
endf

" Don't close window, when deleting a buffer
"function! BufcloseCloseIt()
"   let l:currentBufNum = bufnr("%")
"   let l:alternateBufNum = bufnr("#")
"
"   if buflisted(l:alternateBufNum)
"     buffer #
"   else
"     bnext
"   endif
"
"   if bufnr("%") == l:currentBufNum
"     new
"   endif
"
"   if buflisted(l:currentBufNum)
"     execute("bdelete ".l:currentBufNum)
"   endif
"endfunction

"function! CurDir()
"   let curdir = substitute(getcwd(), '/home/lfish/', "~/", "g")
"   return curdir
"endfunction
"function! CurDir()
"   let curdir = substitute(getcwd(), '/home/lfish/', "~/", "g")
"   return curdir
"endfunction
