set number
set autoindent
set tabstop=4
set encoding=UTF-8
set shiftwidth=4
set showcmd
set relativenumber
set softtabstop=4
set mouse=a 
" set background=dark

set spelllang=es
" au BufRead *.tex setlocal spelllang=es

"Shortcuts for switching between buffers
nnoremap gn :bn<cr>
nnoremap gp :bp<cr>
nnoremap gd :bd<cr>

" Plugins from Vim Plug
call plug#begin('~/.config/nvim/plugged')
source ~/.config/nvim/my_plugins.vim
call plug#end()

" Configurations
source ~/.config/nvim/my_configs.vim
autocmd FileType python nnoremap <buffer> <F5> :w<CR>:term python -m pdb %<CR>
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
