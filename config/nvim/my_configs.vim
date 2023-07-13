syntax enable
" let g:python3_host_prog='/home/roly/.venv/bin/ipython'
" let g:python3_host_prog='/home/roly/.venv/bin/python'

set completeopt-=preview " For no Previews
let g:python_highlight_all = 0

"Dashboard configuration
let g:dashboard_default_executive ='fzf'

colorscheme kimbox
let g:airline_theme='wombat'

" vhdl configuration
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_vhdl_checkers = ['vhdltool']

" Tagbar configuration
nmap <F8> :TagbarToggle<CR>

" NerdTree Configuration
let NERDTreeQuitOnOpen=1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Prettier Configuration
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nnoremap <C-D> :Prettier<CR>

" Indent configuration
let g:indentLine_color_term = 245

" Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline_theme='solarized_flood' " status line theme

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
set updatetime=100
"------------------------------------------------------------------------
" Vimtex Configuration
" This is necessary for VimTeX to load properly. The "indent is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements for more
" info).

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
" Disable conceals by default
let g:indentLine_conceallevel = 0

let g:vimtex_syntax_conceal_disable = 1
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_compiler_latexmk = {'build_dir' : '.', 'options' : ['-shell-escape']}
" let g:vimtex_latexmk_options = '-pdf -shell-escape -verbose -file-line-error -synctex=1 -interaction=nonstopmode'
"
" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler.
" let maplocalleader = ","

"-----------------------------------------------------

" Restore to the Default Shape Cursor
augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:ver20
augroup END
