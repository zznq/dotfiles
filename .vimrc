set nocompatible

execute pathogen#infect()

colorscheme desert

set noswapfile
set number
set ruler
set title

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab

set autoindent

set hlsearch
set ignorecase
set incsearch

set magic

set noerrorbells
set nostartofline
set encoding=utf-8 nobomb

let mapleader=','

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType = "<c-n>"

" syntax highlighting
syntax on
filetype on
filetype plugin indent on

" ctlrP
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'

" Ruby
imap <C-l> <Space>=><Space>
