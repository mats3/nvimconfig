"Switch Keymapping for Neo2 Layout
set langmap=snrthjkl;hjklsnrt

syntax on

set encoding=utf-8
set autoindent

set tabstop=4
set softtabstop=4
set shiftwidth=4

set number
set hlsearch

set history=1000
set scrolloff=10

set wildmenu
set lazyredraw

"***************************************
"*     Plugin                          *
"***************************************
call plug#begin(stdpath('data'))
Plug 'gosukiwi/vim-atom-dark'
Plug 'morhetz/gruvbox'
Plug 'lervag/vimtex'
"fuzzy-finder
"Plug 'junegunn/fzf'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'szw/vim-maximizer'
Plug 'preservim/nerdtree'
"autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/completion-nvim'
Plug 'bling/vim-airline'
call plug#end()

let mapleader = " "

"***************************************
"*     Plugin Mappings                 *
"***************************************
"let g:coc_node_path = '/snap/bin/node'

"map <leader>f :FZF<cr>
map <leader>f <cmd>Telescope find_files<cr>


map <leader>o :NERDTree<cr>

noremap <leader>m :MaximizerToggle<cr>

nmap <leader><leader> V

"***************************************
"*     Save Mappings                   *
"***************************************

map <leader>w :w<cr>
map <leader><leader>w : source %<cr>
map <leader>q :q<cr>
map <leader>x :x!<cr>

"***************************************
"*     Window Movment                  *
"***************************************
map <leader>h :wincmd h<cr>
map <leader>j :wincmd j<cr>
map <leader>k :wincmd k<cr>
map <leader>l :wincmd l<cr>

map <leader>i :wincmd s<cr>
map <leader>a :wincmd v<cr>
map <leader>c :hid<cr>

"***************************************
"*     Tabs                            *
"***************************************
map <leader>e :tabnew<CR>
map <leader>u :tabclose<CR>
map <Tab> gt
map <S-Tab> gT

"open terminal
map <leader><leader>e :terminal<cr>
tnoremap <esc> <C-\><C-n>

"open vimrc
map <leader>v :e ~/.config/nvim/init.vim<cr>
"epen vimrc windows
"map <leader>v :e ~/AppData\Local\nvim\init.vim<cr>

"colorscheme
colorscheme default
"colorscheme darkblue
"colorscheme torte
"colorscheme atom-dark
"colorscheme atom-dark-256
"colorscheme darkblue
"colorscheme gruvbox
"colorscheme zellner
"colorscheme desert
"colorscheme peachpuff
"colorscheme slate
"colorscheme pablo
"colorscheme delek

let g:coc_start_at_startup = v:false


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-declaration)
