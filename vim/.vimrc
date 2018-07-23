
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-sensible' " Defaults vim configurations

Plug 'tpope/vim-fugitive' " git wrapper

Plug 'tpope/vim-markdown' " markdown

Plug 'tpope/vim-surround' " surround text

Plug 'tpope/vim-repeat' " repeat plugin commands

Plug 'airblade/vim-gitgutter' " Git status info in the gutter

Plug 'vim-airline/vim-airline' " Status/tabline
Plug 'vim-airline/vim-airline-themes'

Plug 'tomasr/molokai' " monokai theme port for vim

Plug 'scrooloose/nerdtree' " NERDTree is a file system explorer for the Vim editor

Plug 'kshenoy/vim-signature' " vim-signature is a plugin to place, toggle and display marks.

call plug#end()

colo molokai
syntax on
set number

