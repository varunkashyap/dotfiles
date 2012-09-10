" Custom Vimrc
" =======================
" @author	: Varun Kashyap
" @version	: 13-07-2011
" @revision:
"   16-02-2012 - setsofttabstop=4 for backspacing tab instead of spaces
"   10-09-2012 - Integrated vundle (Windows)
" @requirements:
"   Git on $PATH
"   Monaco font
"   Windows - <userdir>\_vimrc is acceptable vimrc
"           - <userdir>\vimfiles or <userdir>\.vim are acceptable vim home dirs

filetype off       " required!

" Set vundle home directory
" To install on windows, have git on $PATH and issue:
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" ---- BUNDLES START -----
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'godlygeek/tabular'

" Vim powerline (status line, requires font patching)
Bundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'fancy'
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

" CtrlP - fuzzyfinder 
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<space>'
let g:ctrlp_cmd = 'CtrlPMixed'
inoremap <C-space> <Esc>:CtrlPMixed<cr>

Bundle 'scrooloose/nerdcommenter'
Bundle 'myusuf3/numbers.vim'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim'}
" ---- BUNDLES END -----

" User Interface tweaks 
" Monaco font required
colorscheme desert
set guifont=monaco:h10

" Enable syntax highlighting
syntax enable

" Enable line numbers
set nu

" Fix backspace
" set backspace=2
" :fixdel
set backspace=indent,eol,start

" Custom indenting
set ai
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" Custom Syntax
" ---------------
" Set groovy fileType for gradle files
au BufNewFile,BufRead *.gradle set filetype=groovy

" Enable filetype plugins (also required by nerd commenter)
:filetype plugin on

" Remapping minibufexpl
:noremap <C-left> :bprev<CR> 
:noremap <C-right> :bnext<CR> 

" For autosaving folds (requires a change in the view folder)
" au BufWinLeave * mkview
" au BufWinEnter * silent loadview
