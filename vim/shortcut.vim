"Fast reloading of the .vimrc
map <silent> <leader>ss :source ~/.vimrc<cr>
"Fast editing of .vimrc
map <silent> <leader>ee :call SwitchToBuf("~/.vimrc")<cr>
"When .vimrc is edited, reload it
"autocmd! bufwritepost .vimrc source ~/.vimrc

"Fast saving
nmap <silent> <leader>ww :w<cr>
nmap <silent> <leader>wf :w!<cr>

"Fast quiting
nmap <silent> <leader>qw :wq<cr>
nmap <silent> <leader>qf :call BufCloseForce()<cr>
nmap <silent> <leader>qq :call BufClose()<cr>
nmap <silent> <leader>qa :qa<cr>

"Fast remove highlight search
nmap <silent> <leader><cr> :noh<cr>

"Fast redraw
nmap <silent> <leader>rr :redraw!<cr>

" CTRL-C
vnoremap <C-C> "+y

" CTRL-X
vnoremap <C-X> "+d

" CTRL-V
map <C-V> "+gP
cmap <C-V> <C-R>+
exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

" CTRL-S
" add "stty stop ''" in bashrc
map <C-S> :w<cr>
imap <C-S> <C-O>:w<cr>

" Use vv to do what CTRL-V used to do
" Others are used to use CTRL-Q, but CTRL-Q has other meaning in terminal
noremap vv <C-V>

"Basically you press * or # to search for the current selection !! Really useful
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" Move in insert mode
imap jk <left>
imap kj <right>
imap jj <down>
imap kk <up>

"Map space to / and c-space to ?
"map <space> /
"map <c-space> ?

"Smart way to move btw. windows
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

"Actually, the tab does not switch buffers, but my arrows
"Bclose function can be found in "Buffer related" section
" Don't close window, when deleting a buffer
"command! Bclose call BufcloseCloseIt()
"map <leader>bd :Bclose<cr>
"map <down> <leader>bd

"Use the arrows to something usefull
"map <right> :bn<cr>
"map <left> :bp<cr>

"Tab configuration
"map <leader>tn :tabnew
"map <leader>te :tabedit
"map <leader>tc :tabclose<cr>
"map <leader>tm :tabmove
"try
"  set switchbuf=useopen
"  set stal=1
"catch
"endtry

"Buffer related
"go to buffer 1/2/3 etc
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

"Moving fast to front, back and 2 sides ;)
imap <m-$> <esc>$a
imap <m-0> <esc>0i

"Bash like
cnoremap <C-A>    <Home>
cnoremap <C-E>    <End>
cnoremap <C-K>    <C-U>

"Switch to current dir
map <silent> <leader>cd :cd %:p:h<cr>

" Parenthesis/bracket expanding
"vnoremap @1 <esc>`>a)<esc>`<i(<esc>
"vnoremap @2 <esc>`>a]<esc>`<i[<esc>
"vnoremap @3 <esc>`>a}<esc>`<i{<esc>
"vnoremap @$ <esc>`>a"<esc>`<i"<esc>
"vnoremap @q <esc>`>a'<esc>`<i'<esc>
"vnoremap @w <esc>`>a"<esc>`<i"<esc>

"Map auto complete of (, ", ', [
"inoremap @1 ()<esc>:let leavechar=")"<cr>i
"inoremap @2 []<esc>:let leavechar="]"<cr>i
"inoremap @3 {}<esc>:let leavechar="}"<cr>i
"inoremap @4 {<esc>o}<esc>:let leavechar="}"<cr>O
"inoremap @q ''<esc>:let leavechar="'"<cr>i
"inoremap @w ""<esc>:let leavechar='"'<cr>i
"au BufNewFile,BufRead *.\(vim\)\@! inoremap " ""<esc>:let leavechar='"'<cr>i
"au BufNewFile,BufRead *.\(txt\)\@! inoremap ' ''<esc>:let leavechar="'"<cr>i
"
"imap <m-l> <esc>:exec "normal f" . leavechar<cr>a
"imap <d-l> <esc>:exec "normal f" . leavechar<cr>a

"Open a dummy buffer for paste
"map <leader>es :tabnew<cr>:setl buftype=nofile<cr>
map <leader>ec :e ~/tmp/scratch.txt<cr>

" do not automaticlly remove trailing whitespace
"autocmd BufWrite *.[ch] :call DeleteTrailingWS()
"autocmd BufWrite *.cc :call DeleteTrailingWS()
"autocmd BufWrite *.txt :call DeleteTrailingWS()
nmap <silent> <leader>ws :call DeleteTrailingWS()<cr>:w<cr>
"nmap <silent> <leader>ws! :call DeleteTrailingWS()<cr>:w!<cr>

" cscope
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" options
set completeopt=menu
set complete-=u
set complete-=i

" mapping
inoremap <expr> <CR>       pumvisible()?"\<C-Y>":"\<CR>"
inoremap <expr> <C-J>      pumvisible()?"\<PageDown>\<C-N>\<C-P>":"\<C-X><C-O>"
inoremap <expr> <C-K>      pumvisible()?"\<PageUp>\<C-P>\<C-N>":"\<C-K>"
inoremap <expr> <C-U>      pumvisible()?"\<C-E>":"\<C-U>"
inoremap <C-]>             <C-X><C-]>
inoremap <C-F>             <C-X><C-F>
inoremap <C-D>             <C-X><C-D>
inoremap <C-L>             <C-X><C-L>
inoremap <C-O>             <C-X><C-O>

" Spell checking
"map <leader>sn ]s
"map <leader>sp [s
"map <leader>sa zg
"map <leader>s? z=

" folding
nmap <silent> <leader>zo zO
vmap <silent> <leader>zo zO

" shift
"map <leader>t2 :set shiftwidth=2<cr>
"map <leader>t4 :set shiftwidth=4<cr>

"Quickfix
nmap <leader>qn :cn<cr>
nmap <leader>qp :cp<cr>
"nmap <leader>qw :cw 10<cr>
nmap <leader>qc :botright lw 10<cr>
map <c-u> <c-l><c-j>:q<cr>:botright cw 10<cr>

" Fast grep
nmap <silent> <leader>lv :lv /<c-r>=expand("<cword>")<cr>/ %<cr>:lw<cr>
vmap <silent> <leader>lv :lv /<c-r>=GetVisualSelection()<cr>/ %<cr>:lw<cr>

" Fast diff
"cmap @vd vertical diffsplit

"Remove the Windows ^M
"noremap <Leader>dm mzHmx:%s/<C-V><cr>//ge<cr>'xzt'z:delm x z<cr>

"Paste toggle - when pasting something in, don't indent.
"set pastetoggle=<F3>

"Remove indenting on empty lines
"map <F2> :%s/\s*$//g<cr>:noh<cr>''

"Super paste
"inoremap <C-v> <esc>:set paste<cr>mui<C-R>+<esc>mv'uV'v=:set nopaste<cr>

"Fast Ex command
"nnoremap ; :

"For mark move
"nnoremap <leader>' '

"Fast copy
"nnoremap ' "

"Compile and run
map <F5> :call CompileRun()<CR>
"Debug
map <F6> :call RunDebug()<CR>

