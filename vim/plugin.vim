"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" Command-T
""""""""""""""""""""""""""""""
nnoremap <silent> <Leader>ff :CommandT<CR>
nnoremap <silent> <Leader>fb :CommandTBuffer<CR>

""""""""""""""""""""""""""""""
" FSwitch setting
""""""""""""""""""""""""""""""
au! BufEnter *.cc,*.cpp let b:fswitchdst = 'h' | let b:fswitchlocs = 'reg:/src/include/,reg:|src|include/**|,../inc,../include,.'
au! BufEnter *.h let b:fswitchdst = 'cc,cpp' | let b:fswitchlocs = 'reg:/include/src/,reg:/include.*/src/,../src,../source,.'
let g:fsnonewfiles = "on"
nmap <silent> <Leader>fo :FSHere<cr>

""""""""""""""""""""""""""""""
" minibufexpl setting
""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchBufs = 1
map <leader>bn :bn<cr>
map <leader>bp :bp<cr>
map <leader>bd :bd<cr>

""""""""""""""""""""""""""""""
" NERDTree setting
""""""""""""""""""""""""""""""
let NERDTreeWinPos = "right"
nmap <silent> <leader>tt :NERDTreeToggle<cr>

""""""""""""""""""""""""""""""
" taglist setting
""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = 'ctags'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 0
nmap <silent> <leader>tl :Tlist<cr>

""""""""""""""""""""""""""""""
" Tagbar setting
""""""""""""""""""""""""""""""
let g:tagbar_left = 1
let g:tagbar_width = 25
let g:tagbar_expand = 1
nmap <silent> <Leader>tb :TagbarToggle<cr>

""""""""""""""""""""""""""""""
" snipMate setting
""""""""""""""""""""""""""""""
" try to solve conflict with other tab-complete plugin
"ino <c-j> <c-r>=TriggerSnippet()<cr>
"snor <c-j> <esc>i<right><c-r>=TriggerSnippet()<cr>

""""""""""""""""""""""""""""""
" Neocomplcache
""""""""""""""""""""""""""""""
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }
		
" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
inoremap <expr><Enter>  pumvisible() ? "\<C-Y>" : "\<Enter>"
" AutoComplPop like behavior.
let g:neocomplcache_enable_auto_select = 1
	
" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

""""""""""""""""""""""""""""""
" markbrowser setting
""""""""""""""""""""""""""""""
nmap <silent> <leader>mk :MarksBrowser<cr>

""""""""""""""""""""""""""""""
" Tasklist setting
""""""""""""""""""""""""""""""
map <leader>tk <Plug>TaskList

""""""""""""""""""""""""""""""
" yank ring setting
""""""""""""""""""""""""""""""
let g:yankring_enabled=1
let g:yankring_history_file='.yankring_history_file'
map <leader>yr :YRShow<cr>

""""""""""""""""""""""""""""""
" Gundo
""""""""""""""""""""""""""""""
nnoremap <leader>gt :GundoToggle<CR>


""""""""""""""""""""""""""""""
" Python-mode
""""""""""""""""""""""""""""""
" When editing python disable neocomplcache auto complete
au filetype python let g:neocomplcache_disable_auto_complete = 1
let g:pymode_rope_completion_bind = '<tab>'
let g:pymode_rope_goto_definition_cmd = 'e'
let g:pymode_lint_ignore = "E501,W"
map <leader>pa :PymodeLintAuto<CR>

""""""""""""""""""""""""""""""
" Pep8
""""""""""""""""""""""""""""""
"let g:pep8_map='<F9>'

""""""""""""""""""""""""""""""
" Pyflakes 
""""""""""""""""""""""""""""""
"autocmd FileType python map <buffer> <F8> :call Pyflakes()<CR>

""""""""""""""""""""""""""""""
" Pydiction
""""""""""""""""""""""""""""""
"let g:pydiction_location='~/.vim/bundle/Pydiction/complete-dict'
"let g:pydiction_menu_height=15

""""""""""""""""""""""""""""""
" vimgdb setting
""""""""""""""""""""""""""""""
"let g:vimgdb_debug_file = ""
"run macros/gdb_mappings.vim

""""""""""""""""""""""""""""""
" file explorer setting
""""""""""""""""""""""""""""""
""Split vertically
"let g:explVertical=1
""Window size
"let g:explWinSize=35
"let g:explSplitLeft=1
"let g:explSplitBelow=1
""Hide some files
"let g:explHideFiles='^\.,.*\.class$,.*\.swp$,.*\.pyc$,.*\.swo$,\.DS_Store$'
""Hide the help thing..
"let g:explDetailedHelp=0

""""""""""""""""""""""""""""""
" lookupfile setting
""""""""""""""""""""""""""""""
"let g:LookupFile_MinPatLength = 2
"let g:LookupFile_PreserveLastPattern = 0
"let g:LookupFile_PreservePatternHistory = 0
"let g:LookupFile_AlwaysAcceptFirst = 1
"let g:LookupFile_AllowNewFiles = 0
"let g:LookupFile_UsingSpecializedTags = 1
"let g:LookupFile_Bufs_LikeBufCmd = 0
"let g:LookupFile_ignorecase = 1
"let g:LookupFile_smartcase = 1
"if filereadable("./filenametags")
"    let g:LookupFile_TagExpr = '"./filenametags"'
"endif
"nmap <silent> <leader>lk :LUTags<cr>
"nmap <silent> <leader>ll :LUBufs<cr>
"nmap <silent> <leader>lw :LUWalk<cr>
"
"" lookup file with ignore case
"function! LookupFile_IgnoreCaseFunc(pattern)
"    let _tags = &tags
"    try
"        let &tags = eval(g:LookupFile_TagExpr)
"        let newpattern = '\c' . a:pattern
"        let tags = taglist(newpattern)
"    catch
"        echohl ErrorMsg | echo "Exception: " . v:exception | echohl NONE
"        return ""
"    finally
"        let &tags = _tags
"    endtry
"
"    " Show the matches for what is typed so far.
"    let files = map(tags, 'v:val["filename"]')
"    return files
"endfunction
"let g:LookupFile_LookupFunc = 'LookupFile_IgnoreCaseFunc'


""""""""""""""""""""""""""""""
" FeralToggleCommentify setting
""""""""""""""""""""""""""""""
"let loaded_feraltogglecommentify = 1
"map <silent> <leader>tc :call ToggleCommentify()<CR>j
"imap <M-c> <ESC>:call ToggleCommentify()<CR>j

""""""""""""""""""""""""""""""
" mark setting
""""""""""""""""""""""""""""""
"nmap <silent> <leader>hl <Plug>MarkSet
"vmap <silent> <leader>hl <Plug>MarkSet
"nmap <silent> <leader>hh <Plug>MarkClear
"vmap <silent> <leader>hh <Plug>MarkClear
"nmap <silent> <leader>hr <Plug>MarkRegex
"vmap <silent> <leader>hr <Plug>MarkRegex

""""""""""""""""""""""""""""""
" eclim setting
""""""""""""""""""""""""""""""
"let g:EclimTaglistEnabled=0
"
""""""""""""""""""""""""""""""
" super tab
""""""""""""""""""""""""""""""
"let g:SuperTabPluginLoaded=1 " Avoid load SuperTab Plugin
"let g:SuperTabDefaultCompletionType='context'
"let g:SuperTabDefaultCompletionType='<C-X><C-U>'
"let g:SuperTabRetainCompletionType=2
"let g:SuperTabContextDefaultCompletionType='<c-p>'
"let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
"let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
"let g:SuperTabContextDiscoverDiscovery =
"      \ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

""""""""""""""""""""""""""""""
" showmarks setting
""""""""""""""""""""""""""""""
"" Enable ShowMarks
"let showmarks_enable = 1
"" Show which marks
"let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
"" Ignore help, quickfix, non-modifiable buffers
"let showmarks_ignore_type = "hqm"
"" Hilight lower & upper marks
"let showmarks_hlline_lower = 1
"let showmarks_hlline_upper = 1

