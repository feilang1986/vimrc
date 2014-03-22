"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" Pep8
""""""""""""""""""""""""""""""
let g:pep8_map='<F6>'

""""""""""""""""""""""""""""""
" Pydiction
""""""""""""""""""""""""""""""
let g:pydiction_location='~/.vim/bundle/Pydiction/complete-dict'
let g:pydiction_menu_height=15

""""""""""""""""""""""""""""""
" super tab
""""""""""""""""""""""""""""""
let g:SuperTabPluginLoaded=1 " Avoid load SuperTab Plugin
let g:SuperTabDefaultCompletionType='context'
let g:SuperTabContextDefaultCompletionType='<c-p>'
"let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
"let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
"let g:SuperTabContextDiscoverDiscovery =
"      \ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

""""""""""""""""""""""""""""""
" yank ring setting
""""""""""""""""""""""""""""""
let g:yankring_enabled=1
let g:yankring_history_file='.yankring_history_file'
map <leader>yr :YRShow<cr>

""""""""""""""""""""""""""""""
" file explorer setting
""""""""""""""""""""""""""""""
"Split vertically
let g:explVertical=1

"Window size
let g:explWinSize=35

let g:explSplitLeft=1
let g:explSplitBelow=1

"Hide some files
let g:explHideFiles='^\.,.*\.class$,.*\.swp$,.*\.pyc$,.*\.swo$,\.DS_Store$'

"Hide the help thing..
let g:explDetailedHelp=0

""""""""""""""""""""""""""""""
" taglist setting
""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = 'ctags'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
nmap <silent> <leader>tl :Tlist<cr>

""""""""""""""""""""""""""""""
" NERDTree setting
""""""""""""""""""""""""""""""
nmap <silent> <leader>tt :NERDTreeToggle<cr>

""""""""""""""""""""""""""""""
" lookupfile setting
""""""""""""""""""""""""""""""
let g:LookupFile_MinPatLength = 2
let g:LookupFile_PreserveLastPattern = 0
let g:LookupFile_PreservePatternHistory = 0
let g:LookupFile_AlwaysAcceptFirst = 1
let g:LookupFile_AllowNewFiles = 0
let g:LookupFile_UsingSpecializedTags = 1
let g:LookupFile_Bufs_LikeBufCmd = 0
let g:LookupFile_ignorecase = 1
let g:LookupFile_smartcase = 1
if filereadable("./filenametags")
    let g:LookupFile_TagExpr = '"./filenametags"'
endif
nmap <silent> <leader>lk :LUTags<cr>
nmap <silent> <leader>ll :LUBufs<cr>
nmap <silent> <leader>lw :LUWalk<cr>

" lookup file with ignore case
function! LookupFile_IgnoreCaseFunc(pattern)
    let _tags = &tags
    try
        let &tags = eval(g:LookupFile_TagExpr)
        let newpattern = '\c' . a:pattern
        let tags = taglist(newpattern)
    catch
        echohl ErrorMsg | echo "Exception: " . v:exception | echohl NONE
        return ""
    finally
        let &tags = _tags
    endtry

    " Show the matches for what is typed so far.
    let files = map(tags, 'v:val["filename"]')
    return files
endfunction
let g:LookupFile_LookupFunc = 'LookupFile_IgnoreCaseFunc'

""""""""""""""""""""""""""""""
" markbrowser setting
""""""""""""""""""""""""""""""
nmap <silent> <leader>mk :MarksBrowser<cr>

""""""""""""""""""""""""""""""
" showmarks setting
""""""""""""""""""""""""""""""
" Enable ShowMarks
let showmarks_enable = 1
" Show which marks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Ignore help, quickfix, non-modifiable buffers
let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1

""""""""""""""""""""""""""""""
" mark setting
""""""""""""""""""""""""""""""
nmap <silent> <leader>hl <Plug>MarkSet
vmap <silent> <leader>hl <Plug>MarkSet
nmap <silent> <leader>hh <Plug>MarkClear
vmap <silent> <leader>hh <Plug>MarkClear
nmap <silent> <leader>hr <Plug>MarkRegex
vmap <silent> <leader>hr <Plug>MarkRegex

""""""""""""""""""""""""""""""
" FeralToggleCommentify setting
""""""""""""""""""""""""""""""
let loaded_feraltogglecommentify = 1
"map <silent> <leader>tc :call ToggleCommentify()<CR>j
"imap <M-c> <ESC>:call ToggleCommentify()<CR>j

""""""""""""""""""""""""""""""
" vimgdb setting
""""""""""""""""""""""""""""""
let g:vimgdb_debug_file = ""
run macros/gdb_mappings.vim

""""""""""""""""""""""""""""""
" eclim setting
""""""""""""""""""""""""""""""
let g:EclimTaglistEnabled=0

""""""""""""""""""""""""""""""
" FSwitch setting
""""""""""""""""""""""""""""""
au! BufEnter *.cc,*.cpp let b:fswitchdst = 'h' | let b:fswitchlocs = '.'
au! BufEnter *.h let b:fswitchdst = 'cc,cpp' | let b:fswitchlocs = '.'
let g:fsnonewfiles = "on"
nmap <silent> <Leader>of :FSHere<cr>

""""""""""""""""""""""""""""""
" Tagbar setting
""""""""""""""""""""""""""""""
let g:tagbar_width = 40
let g:tagbar_expand = 1
nmap <silent> <Leader>bb :TagbarToggle<cr>

