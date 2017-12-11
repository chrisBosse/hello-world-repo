" Chris's $HOME/.vimrc file
" started 2017-09-19

" This is intended for my learning and experimentation.
" Numbers in brackets are footnotes to the bibliography section below.

" [2]
" To recover from errors:
" vim -N -u NONE -U NONE

" [3]
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" [3]
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
 
" [3]
" Enable syntax highlighting
syntax on

" [3]
"Better command-line completion
set wildmenu
 
" [3]
" Show partial commands in the last line of the screen
set showcmd
 
" [3]
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" [3]
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" [3]
" Always display the status line, even if only one window is displayed
set laststatus=2

" [3]
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" [3]
" Use visual bell instead of beeping when doing something wrong
set visualbell
   
" [3]
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" [3]
" Enable use of the mouse for all modes
" - Gives me trouble with right-click pasting.
"set mouse=a
 
" [3]
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" [3]
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" [3]
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" [3]
"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.
"
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
" 
" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4

" [1]
" Line numbering, relative with hybrid all the time
set relativenumber number
" except when in INSERT mode, switch back to absolute.  :-)
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
" also, turn on the "ruler", the line,column indicator
set ruler

" Bibliography
" [1] https://jeffkreeftmeijer.com/vim-number/
" [2] http://vim.wikia.com/wiki/Open_vimrc_file
" [3] http://vim.wikia.com/wiki/Example_vimrc
" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.
