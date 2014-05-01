"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My bundles here:
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" original repos on GitHub
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" git wrapper for vim
Bundle 'tpope/vim-fugitive'
" a simple way to use motion in vim
"Bundle 'Lokaltog/vim-easymotion'
" create better statusline
Bundle 'Lokaltog/vim-powerline'
" for writing ruby on rails
"Bundle 'tpope/vim-rails.git'
" for writing html
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-scripts repos http://www.vim-scripts.org/vim/scripts.html
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-script library
Bundle 'L9'
" General utility functions
Bundle 'genutils'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" finder
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" file/buffer fuzzy matching 
Bundle 'Command-T'
" Allows switching between companion source files (like a.vim)
Bundle 'FSwitch'
" Lookup files using Vim7 ins-completion
"Bundle 'lookupfile'
" buffer/file/command/tag/etc explorer with fuzzy matching
"Bundle 'FuzzyFinder'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" browser
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Elegant buffer explorer - takes very little screen space
Bundle 'minibufexpl.vim'
" A tree explorer plugin for navigating the filesystem
Bundle 'The-NERD-Tree'
" Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
Bundle 'taglist.vim'
" Display tags of the current file ordered by scope
Bundle 'Tagbar'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Do all your insert-mode completion with Tab!
"Bundle 'SuperTab'
" TextMate-style snippets for Vim
Bundle 'snipMate'
" Auto pairs
Bundle 'Auto-Pairs'
" Smart auto completion
Bundle 'neocomplcache'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" comment
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" A plugin that allows for easy commenting of code for many filetypes.
Bundle 'The-NERD-Commenter'
" My fork of ToggleCommentify.vim; comment lines in a program
"Bundle 'FeralToggleCommentify.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" marks
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visually shows the location of marks
"Bundle 'ShowMarks'
" Browser marks in the file
Bundle 'Marks-Browser'
" Show Tasklist 
Bundle 'Tasklist.vim'
" Modified history
Bundle 'YankRing.vim'
" Graphical undo
Bundle 'Gundo'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enhanced version of the python syntax highlighting script
"Bundle 'python.vim'
"" Tab-complete your Python code
""Bundle 'Pydiction'
"" Python omni complete
Bundle 'pythoncomplete'
"" A Python filetype plugin to check pep8 convention.
"Bundle 'pep8'
"" Check python grammar errors
"Bundle 'pyflakes'
"" Python document
"Bundle 'pydoc.vim'
Bundle 'Python-mode-klen'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cpp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" C/C++ omni-completion with ctags database
Bundle 'OmniCppComplete'
" Emacs like gdb interface to cterm vim
Bundle 'vimgdb'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" non-GitHub repos
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

