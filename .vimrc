" VIM SETTINGS  -------------------------------------------------------------- {{{
set nocompatible
filetype on
filetype plugin on
filetype indent on
set number
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
let mapleader = "\<Space>"

nnoremap <leader>bb :NERDTreeToggle<CR>
nnoremap <leader>dd :delete<CR>

" }}}

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

  Plug 'dense-analysis/ale'

  Plug 'preservim/nerdtree'
   
  Plug 'morhetz/gruvbox'

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  Plug 'itchyny/lightline.vim'

  Plug 'mattn/emmet-vim'

call plug#end()

" }}}

let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

autocmd vimenter * ++nested colorscheme gruvbox
