" Specify a directory for plugins 
" - For Neovim: ~/.local/share/nvim/plugged 
" - Avoid using standard Vim directory names like 'plugin' 
call plug#begin('~/.vim/plugged') 
" Make sure you use single quotes 
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align 
Plug 'junegunn/vim-easy-align' " Any valid git URL is allowed Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Theme
Plug 'nightsense/carbonized'
Plug 'itchyny/lightline.vim'

Plug 'sheerun/vim-polyglot'
" Elixir
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
" Elm
Plug 'elmcast/elm-vim'
" Initialize plugin system
call plug#end()

set t_Co=256 " Sets terminal to 256 colors in vim
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm
set termguicolors
set background=dark
colorscheme carbonized-dark

inoremap jk <ESC>
let mapleader="\<SPACE>"
