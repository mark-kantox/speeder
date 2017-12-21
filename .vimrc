set nocompatible              " be iMproved, required
set number
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" elixir editor
Plugin 'elixir-editors/vim-elixir'
" elixir autocomplete
Plugin 'slashmili/alchemist.vim'
" rails editor 
Plugin 'tpope/vim-rails'
" colors
Plugin 'dracula/vim'
" git
Plugin 'tpope/vim-fugitive'
" Syntax spotting
Plugin 'scrooloose/syntastic'
" Sass linting
Plugin 'gcorne/vim-sass-lint'
" Surrounding capture with s (ie dst)
Plugin 'tpope/surround.vim'

call vundle#end()            " required
filetype plugin indent on    " required
syntax on
color dracula
let g:syntastic_sass_checkers=["sasslint"]
let g:syntastic_scss_checkers=["sasslint"]
