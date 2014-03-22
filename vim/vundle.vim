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

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'Lokaltog/vim-powerline'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-scripts repos http://www.vim-scripts.org/vim/scripts.html
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-script library
Bundle 'L9'
" General utility functions
Bundle 'genutils'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" browser
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" A tree explorer plugin for navigating the filesystem
Bundle 'The-NERD-Tree'
" Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
Bundle 'taglist.vim'
" Elegant buffer explorer - takes very little screen space
Bundle 'minibufexpl.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" finder
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lookup files using Vim7 ins-completion
Bundle 'lookupfile'
" buffer/file/command/tag/etc explorer with fuzzy matching
Bundle 'FuzzyFinder'
" Allows switching between companion source files (like a.vim)
Bundle 'FSwitch'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Do all your insert-mode completion with Tab!
Bundle 'SuperTab'
" TextMate-style snippets for Vim
Bundle 'snipMate'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" comment
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" A plugin that allows for easy commenting of code for many filetypes.
Bundle 'The-NERD-Commenter'
" My fork of ToggleCommentify.vim; comment lines in a program
Bundle 'FeralToggleCommentify.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" marks
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visually shows the location of marks
Bundle 'ShowMarks'
" Display tags of the current file ordered by scope
Bundle 'Tagbar'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cpp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" C/C++ omni-completion with ctags database
Bundle 'OmniCppComplete'
" Emacs like gdb interface to cterm vim
Bundle 'vimgdb'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enhanced version of the python syntax highlighting script
Bundle 'python.vim'
" Tab-complete your Python code
Bundle 'Pydiction'
" A Python filetype plugin to check pep8 convention.
Bundle 'pep8'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" non-GitHub repos
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'git://git.wincent.com/command-t.git'
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

