filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
syntax on
set backspace=indent,eol,start
set hidden
set noswapfile

let $RTP=split(&runtimepath, ',')[0]
let $RC="$HOME/.vim/vimrc"

set path=.,**

set laststatus=2
filetype plugin on
filetype indent on
set cmdheight=1
set showmatch
set mat=2
set foldcolumn=1
""set splitright               " Split vertical windows right to the current windows
set completeopt=menuone

set shortmess+=c

set showcmd                  " Show me what I'm typing
set noerrorbells

" Vim file formatting"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Be smart when using tabs ;)
" Linebreak on 500 characters
set lbr
set tw=500
set wrap "Wrap lines
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set colorcolumn=80
set nu
set smarttab
highlight ColorColumn ctermbg=0 guibg=lightgrey

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nowrap
set smartcase
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch
set autowrite

let mapleader = ","

"" prueba de keys ""
nmap <leader>w :w!<cr>
nnoremap <CR> :nohlsearch<CR><CR>
map <leader>z<leader> :tabnext

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
map <F2> :vert ter<CR>

"tree "
map <leader>n :20vs .<CR>

map <leader>cd :lcd %:p:h<CR>

" YCM
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>

let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
