set number
set expandtab
set tabstop=8

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

call plug#begin()
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'preservim/nerdtree'
call plug#end()

" manual ccls config (without vim-lsp-settings)
" if executable('ccls')
" 	au User lsp_setup call lsp#register_server({
" 				\ 'name': 'ccls',
" 				\ 'cmd': {server_info->['ccls']},
" 				\ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
" 				\ 'initialization_options': {'cache': {'directory': expand('~/.cache/ccls') }},
" 				\ 'allowlist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
" 				\ })
" endif
