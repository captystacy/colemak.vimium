behave mswin
nnoremap <F1> :
imap nn <Esc>
set timeoutlen=200

" Up/down/left/right {{{
    nnoremap h h
    xnoremap h h
    onoremap h h
    nnoremap n j
    xnoremap n j
    onoremap n j
    nnoremap e k
    xnoremap e k
    onoremap e k
    nnoremap i l
    xnoremap i l
    onoremap i l
" }}}
" Words forward/backward {{{
    " l/L = back word/WORD
    " u/U = end of word/WORD
    " y/Y = forward word/WORD
    nnoremap l b
    xnoremap l b
    onoremap l b
    nnoremap L B
    xnoremap L B
    onoremap L B
    nnoremap u e
    xnoremap u e
    onoremap u e
    nnoremap U E
    xnoremap U E
    onoremap U E
    nnoremap y w
    xnoremap y w
    onoremap y w
    nnoremap Y W
    xnoremap Y W
    onoremap Y W
    cnoremap <C-L> <C-Left>
    cnoremap <C-Y> <C-Right>
" }}}
" inSert/Replace/append (T) {{{
    nnoremap s i
    nnoremap S I
    nnoremap t a
    nnoremap T A
" }}}
" Change {{{
    nnoremap w c
    xnoremap w c
    nnoremap W C
    xnoremap W C
    nnoremap ww cc
" }}}
" Cut/copy/paste {{{
    nnoremap x x
    xnoremap x d
    nnoremap c y
    xnoremap c y
    nnoremap v p
    xnoremap v p
    nnoremap X dd
    xnoremap X d
    nnoremap C yy
    xnoremap C y
    nnoremap V P
    xnoremap V P
    nnoremap gv gp
    xnoremap gv gp
    nnoremap gV gP
    xnoremap gV gP
" }}}
" Undo/redo {{{
    nnoremap z u
    xnoremap z :<C-U>undo<CR>
    nnoremap gz U
    xnoremap gz :<C-U>undo<CR>
    nnoremap Z <C-R>
    xnoremap Z :<C-U>redo<CR>
" }}}
" Visual mode {{{
    nnoremap a v
    xnoremap a v
    nnoremap A V
    xnoremap A V
    nnoremap ga gv
    " Make insert/add work also in visual line mode like in visual block mode
    xnoremap <silent> <expr> s (mode() =~# "[V]" ? "\<C-V>0o$I" : "I")
    xnoremap <silent> <expr> S (mode() =~# "[V]" ? "\<C-V>0o$I" : "I")
    xnoremap <silent> <expr> t (mode() =~# "[V]" ? "\<C-V>0o$A" : "A")
    xnoremap <silent> <expr> T (mode() =~# "[V]" ? "\<C-V>0o$A" : "A")
" }}}
" Search {{{
    " f/F are unchanged
    nnoremap p t
    xnoremap p t
    onoremap p t
    nnoremap P T
    xnoremap P T
    onoremap P T
    nnoremap b ;
    xnoremap b ;
    onoremap b ;
    nnoremap B ,
    xnoremap B ,
    onoremap B ,
    nnoremap k n
    xnoremap k n
    onoremap k n
    nnoremap K N
    xnoremap K N
    onoremap K N
" }}}
" inneR text objects {{{
    " E.g. dip (delete inner paragraph) is now drp
    onoremap r i
" }}}
" Overridden keys must be prefixed with g {{{
    nnoremap gX X
    xnoremap gX X
    nnoremap gK K
    xnoremap gK K
    nnoremap gL L
    xnoremap gL L

"wrap
nnoremap j i<CR><Esc>

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
"indentation
nnoremap <TAB> >>
nnoremap <S-TAB> <<
vnoremap <TAB> >gv
vnoremap <S-TAB> <gv

"join lines without space
"nnoremap J :vsc Edit.JoinLines<CR>

"move lines
nnoremap N :vsc Edit.MoveSelectedLinesDown<CR>
nnoremap E :vsc Edit.MoveSelectedLinesUp<CR>
vnoremap N dpV']
vnoremap E d-PV']

"history back and forward
nnoremap H :vsc View.NavigateBackward<CR>
nnoremap I :vsc View.NavigateForward<CR>

"Russian layout
map й q
map ц w
map у f
map к p
map е g
map н j
map г l
map ш u
map щ y
map з ;
map х [
map ъ ]
map ф a
map ы r
map в s
map а t
map п d
map р h
map о n
map л e
map д i
map ж o
map э '
map ё \
map я z
map ч x
map с c
map м v
map и b
map т k
map ь m
map б ,
map ю .
map Й Q
map Ц W
map У F
map К P
map Е G
map Н J
map Г L
map Ш U
map Щ Y
map З :
map Х {
map Ъ }
map Ф A
map Ы R
map В S
map А T
map П D
map Р H
map О N
map Л E
map Д I
map Ж O
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т K
map Ь M
map Б <
map Ю >
map Ё /|
map : ^
map ; $
imap оо <Esc>