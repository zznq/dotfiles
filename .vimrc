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

set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabNoCompleteAfter = ['^', '\s', '\n']

map <Leader>t :call RunCurrentSpecFile()
map <Leader>s :call RunNearestSpec()
map <Leader>l :call RunLastSpec()
map <Leader>a :call RunAllSpecs()

autocmd QuickFixCmdPost *grep* cwindow

let g:rspec_command = "!bin/rspec {spec}"

" syntax highlighting
syntax on
filetype on
filetype plugin indent on

" ctlrP
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'

let g:ctrlp_custom_ignore = '\v(node_modules|bower_components|dist|tmp)$'

" CoffeeScript
imap <C-k> <Space>->

" Ruby
imap <C-l> <Space>=><Space>

let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails'

set tags+=gems.tags
