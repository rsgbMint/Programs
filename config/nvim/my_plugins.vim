Plug 'lmburns/kimbox'
Plug 'tribela/vim-transparent' " Neovim transparent
Plug 'EdenEast/nightfox.nvim' " Nightfox theme 
Plug 'vim-scripts/indentLine.vim' " Indentation
Plug 'sainnhe/gruvbox-material'  " Themes of GRUVBOX
Plug 'preservim/nerdtree'  " NerdTree
Plug 'vim-airline/vim-airline'  " State of the Editor
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'  " Developer Icons
Plug 'tpope/vim-surround'  " Surrounding ysw
" Plug 'nvim-lua/completion-nvim'  " Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim',{'branch': 'master', 'do': 'yarn install'} " COC

Plug 'neovim/nvim-lspconfig'  " LSP
Plug 'lervag/vimtex'	" *.tex files
Plug 'raingo/vim-matlab' " *.m files
Plug 'tpope/vim-commentary' " Commentaries
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'stevearc/vim-arduino'
" Plug 'm4xshen/autoclose.nvim'
" Plug 'vimcolorschemes/vimcolorschemes' "scheme colors for nvim
" Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/junegunn/fzf.vim' " Fuzzy Finder, Needs Silversearcher-ag for :Ag
Plug 'https://github.com/junegunn/fzf'
Plug 'glepnir/dashboard-nvim' "dashboard for nvim

" Plug 'scrooloose/syntastic' " vhdl checker
" Plug 'http://git.vhdltool.com/vhdl-tool/syntastic-vhdl-tool' " vhdl checker
" Plugins for Javascript
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

" Git-signify
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
