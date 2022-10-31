" Prueba de configuracion primeagent 2021

set exrc
set guicursor=
set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set signcolumn=yes



set cmdheight=2
set shortmess+=c

let $RTP=split(&runtimepath, ',')[0]
let $RC="$HOME/.config/nvim/init.vim"
set path=.,**



call plug#begin()
"Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'https://github.com/morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/arcticicestudio/nord-vim'
Plug 'dense-analysis/ale'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
colorscheme nord
set background=dark

let mapleader = ","
" => Parenthesis/bracket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}


inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []


inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Jump window keys.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" terminal key"
map <F2> :termopen() <CR>

"tree "
map <leader>n :20vs .<CR>

map <leader>cd :lcd %:p:h<CR>

source ~/.config/nvim/plug-config/coc.vim

nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <C-o> :Buffers<CR>
nnoremap <C-f> :Rg! 


" split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" move window

nmap <Space> <C-w>w

nmap s<left> <C-w>h
nmap s<up> <C-w>k
nmap s<down> <C-w>j
nmap s<right> <C-w>l

map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

let b:ale_fixers = ['eslint', 'prettier']
