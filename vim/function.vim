" Don't close window, when deleting a buffer
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete ".l:currentBufNum)
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

"function! CurDir()
"   let curdir = substitute(getcwd(), '/home/lfish/', "~/", "g")
"   return curdir
"endfunction

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


