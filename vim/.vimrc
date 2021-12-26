call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-sensible' " Defaults vim configurations

Plug 'tpope/vim-fugitive' " git wrapper

Plug 'tpope/vim-markdown' " markdown
" Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown' " markdown plugin, alternative to tpope/vim-markdown

Plug 'tpope/vim-surround' " surround text

Plug 'tpope/vim-repeat' " repeat plugin commands

Plug 'airblade/vim-gitgutter' " Git status info in the gutter

Plug 'vim-airline/vim-airline' " Status/tabline
Plug 'vim-airline/vim-airline-themes'

Plug 'tomasr/molokai' " monokai theme port for vim

Plug 'scrooloose/nerdtree' " NERDTree is a file system explorer for the Vim editor

Plug 'kshenoy/vim-signature' " vim-signature is a plugin to place, toggle and display marks.

Plug 'junegunn/fzf' " fuzzy finder

Plug 'w0rp/ale' " Asynchronous Lint Engine

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' } " Code-completion Engine for VIM

Plug 'https://github.com/alok/notational-fzf-vim' " Notational Velocity support in VIM

call plug#end()

colo molokai
syntax on
set number

" AirLine config
let g:airline#extensions#tabline#enabled = 1 " enables displaying all buffers in the statusline

let g:nv_search_paths = ['~/Library/Mobile\ Documents/com~apple~CloudDocs/Notational', '~/Library/Mobile\ Documents/com~hogbaysoftware~TaskPaper/Documents'] " list of folders to search for notational plugin
let g:nv_default_extension = '.txt'

" Kite completions config
set completeopt+=menuone   " show the popup menu even when there is only 1 match
set completeopt+=noinsert  " don't insert any text until user chooses a match
set completeopt-=longest   " don't insert the longest common text
set completeopt+=preview

set clipboard+=unnamedplus  " sets the unnamed register to the system clipboard
