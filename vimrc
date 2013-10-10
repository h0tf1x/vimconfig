set clipboard^=autoselect

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set mouse=a
se nu

:map <C-a> GVgg
:map <C-n> :enew
:map <C-o> :e . <Enter>
:map <C-s> :w <Enter>
:map <C-z> u
:imap <C-z> <Esc>ui
:map <C-t> :tabnew <Enter>
:map <C-i> >>
:map <C-w> :close <Enter>
:map <C-W> :q! <Enter>
:imap <C-W> <Esc><C-W>
:map <C-f> /
:map <F3> n
:map <C-h> :%s/
:map <S-t> vat
:map <S-T> vit
:map <S-{> vi{
:map <S-(> vi(
:map <S-[> vi[


" copy and paste
:vmap <C-c> yi
:vmap <C-x> di
:vmap <C-v> pi
:imap <C-v> <Esc>pi
:imap <S-Home> <Esc>v<Home>
:imap <S-End> <Esc>v<End>

" activate visual mode in normal mode
nmap <S-Up> V
nmap <S-Left> V
nmap <S-Right> V
nmap <S-Down> V
" these are mapped in visual mode
vmap <S-Up> k
vmap <S-Down> j
vmap <S-Left> h
vmap <S-Left> l

