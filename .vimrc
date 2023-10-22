set number

filetype plugin indent on

if !isdirectory($HOME."/.vim/.undo")
    call mkdir($HOME."/.vim/.undo", "", 0700)
endif
set undodir=~/.vim/.undo//

if !isdirectory($HOME."/.vim/.backup")
    call mkdir($HOME."/.vim/.backup", "", 0700)
endif
set backupdir=~/.vim/.backup//

if !isdirectory($HOME."/.vim/.swp")
    call mkdir($HOME."/.vim/.swp", "", 0700)
endif
set directory=~/.vim/.swp//

syntax on

set background=dark
colorscheme sourcerer

