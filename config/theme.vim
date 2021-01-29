" Colorscheme
let g:onedark_terminal_italics = 1
let g:onedark_hide_endofbuffer = 1
color onedark

" Respect terminal background color
hi Normal guibg=NONE ctermbg=NONE

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
