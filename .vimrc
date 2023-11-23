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
set bg=dark
let mapleader = "\<Space>"
command OpenRightTerminal vertical botright terminal zsh

nnorema <leader>tt :OpenRightTerminal<CR>
nnoremap <leader>bb :NERDTreeToggle<CR>
nnoremap <leader>dd dd  " Use Space + dd to delete the current line

call plug#begin('~/.vim/plugged')
  Plug 'dense-analysis/ale'
  Plug 'preservim/nerdtree'
  Plug 'morhetz/gruvbox'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-eunuch'
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox
set laststatus=2
