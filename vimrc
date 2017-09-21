" Specify a directory for plugins 
" - For Neovim: ~/.local/share/nvim/plugged 
" - Avoid using standard Vim directory names like 'plugin' 
call plug#begin('~/.vim/plugged') 
Plug 'junegunn/vim-easy-align'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Theme
Plug 'nightsense/carbonized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'sheerun/vim-polyglot'
" Elixir
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
" Elm
Plug 'elmcast/elm-vim'
" Initialize plugin system
call plug#end()

set encoding=utf8
set t_Co=256 " Sets terminal to 256 colors in vim
set termguicolors
set background=dark
colorscheme carbonized-dark
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'

inoremap jk <ESC>
let mapleader="\<SPACE>"

" NERDTree setup
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
