"set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions -=m "menu bar
set guioptions -=T "toolbar

if has("gui_macvim")
    set macligatures
    set guifont=Fira\ Code:h12
else
    set guifont=Fira\ Code\ Regular\ 10
endif
