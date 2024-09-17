set number
set expandtab
set tabstop=8
" Scrolloff determines the number of context lines you would like to see above
" and below the cursor
set scrolloff=10

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
Plug 'majutsushi/tagbar' 
call plug#end()

let g:tagbar_type_zig = {
        \ 'ctagstype': 'zig',
        \ 'kinds' : [
                \ 'import:imports',
                \ 'const:constants',
                \ 'var:variables',
                \ 'field:fields',
                \ 'error:errors',
                \ 'enum:enum:1',
                \ 'union:union:1',
                \ 'struct:struct:1',
                \ 'opaque:opaque:1',
                \ 'function:functions',
                \ 'comptime:comptimes',
                \ 'test:tests',
        \ ],
        \ 'sro' : '.',
        \ 'kind2scope' : {
                \ 'enum' : 'enum',
                \ 'union' : 'union',
                \ 'struct' : 'struct',
                \ 'opaque' : 'opaque',
        \ },
        \ 'ctagsbin' : 'ztags',
        \ 'ctagsargs' : ''
\ }


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
