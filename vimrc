" Specify a directory for plugins 
" - For Neovim: ~/.local/share/nvim/plugged 
" - Avoid using standard Vim directory names like 'plugin' 
call plug#begin('~/.vim/plugged') 
Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'skywind3000/asyncrun.vim'

" Theme
Plug 'nightsense/carbonized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Language support
Plug 'sheerun/vim-polyglot'
Plug 'vim-syntastic/syntastic'
Plug 'valloric/youcompleteme'
Plug 'janko-m/vim-test'

" Elixir
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'avdgaag/vim-phoenix'
Plug 'mmorearty/elixir-ctags'
Plug 'mattreduce/vim-mix'
Plug 'frost/vim-eh-docs'

" Elm
Plug 'elmcast/elm-vim'
call plug#end()

" General Settings
set encoding=utf8
set noshowmode
filetype plugin indent on

" Theme
" set t_Co=256 " Sets terminal to 256 colors in vim
set termguicolors
set background=dark
set number
colorscheme carbonized-dark
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

" Alchemist
let g:alchemist#elixir_erlang_src = "/Users/amacgregor/Projects/Github/alchemist-source"
let g:alchemist_tag_disable = 1

" Gitgutter
set updatetime=250

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_elixir_checkers = ['elixir']
let g:syntastic_enable_elixir_checker = 1

" Vim test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Key mappings
inoremap jk <ESC>
map <SPACE> <leader>
map <C-n> :NERDTreeToggle<CR>

" NERDTree setup
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
