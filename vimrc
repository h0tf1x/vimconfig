" allow C-q C-s
silent !stty -ixon > /dev/null 2>/dev/null

" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" encoding
set encoding=utf-8

" 256 color terminal
if !has('gui_running')
  set t_Co=256
endif

" lightline 
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ }
      \ }

" nerdTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
imap <C-n> <Esc><C-n>


" Clipboard
set clipboard^=autoselect

" mapleader
let mapleader=","

" window breaks
set fillchars=stl:\ ,stlnc:\ ,vert:│

" tabs
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" mouse
set mouse=a
se nu

" default key mappings
:map <C-a> GVgg " Select all text
:imap <C-a> <Esc><C-a> " Select all text in insert mode
:map <C-s> :w <CR> " Save file
:imap <C-s> <Esc><C-s>i " Save file in insert mode mode
:map <C-z> u " Undo
:imap <C-z> <Esc>ui " Undo in insert mode
:map <C-t> :tabnew <CR> " Open new tab
:imap <C-t> <Esc><C-t>i " Open new tab in insert mode
:map <C-i> >>
:map <C-f> / " Find
:map <F3> n "
:map <C-h> :%s/ " Replace

" copy and paste
:vmap <C-c> yi " copy
:vmap <C-x> di " cut
:vmap <C-v> pi " paste
:imap <C-v> <Esc>pi " paste insert mode
:imap <S-Home> <Esc>v<Home> " Select to start
:imap <S-End> <Esc>v<End> " Select to end



" window
:nmap <C-q> :q<cr>
:imap <C-q> <Esc><C-q>i

" tabs
:map <C-w> :tabc<cr>
:imap <C-w> <Esc><C-w>i
:nmap <C-S-tab> :tabprevious<cr>
:nmap <C-tab> :tabnext<cr>
:nmap <C-t> :tabnew<cr>
:map <C-t> :tabnew<cr>
:map <C-S-tab> :tabprevious<cr>
:map <C-tab> :tabnext<cr>
:map <C-x> :tabclose<cr>
:imap <C-S-tab> <ESC>:tabprevious<cr>i
:imap <C-tab> <ESC>:tabnext<cr>i
:imap <C-t> <ESC>:tabnew<cr>
