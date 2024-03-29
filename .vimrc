set nocompatible

execute pathogen#infect()

colorscheme desert

set noswapfile
set number
set ruler
set title

set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=2
set expandtab
set smarttab

set autoindent
set laststatus=2

set hlsearch
set ignorecase
set incsearch

set magic

set noerrorbells
set nostartofline
set encoding=utf-8 nobomb

set t_Co=256

let mapleader=','

set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabNoCompleteAfter = ['^', '\s', '\n']

"map <Leader>t :call RunCurrentSpecFile()
"map <Leader>s :call RunNearestSpec()
"map <Leader>l :call RunLastSpec()
"map <Leader>a :call RunAllSpecs()

autocmd QuickFixCmdPost *grep* cwindow

let g:rspec_command = "!bin/rspec {spec}"

" ==== HashRocket mappings ======

" Align Current Paragraph with Leader + a
noremap <leader>a =ip

" Toggle Paste Mode
set pastetoggle=<leader>z

" Shift + Direction to Change Tabs
noremap <S-l> gt
noremap <S-h> gT

" Control + Direction to Change Panes
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

" Save File with Leader + s
inoremap <leader>s <C-c>:w<cr>

" === Selecting methods ===
" MAP: vim, vam to visually select, but almost anything goes. Examples:
" cim: change method contents
" dam: delete whole method
" ,cim: comment out method contents

vmap im <Esc>[mjV]Mk
vmap am <Esc>[mV]M

omap im :normal vim<CR>
omap am :normal vam<CR>

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
let g:snipMate.snippet_version = 1

set tags+=gems.tags
