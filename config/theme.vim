" Colorscheme
let g:onedark_terminal_italics = 1
let g:onedark_hide_endofbuffer = 1
color onedark

" lightline
let g:lightline = {
	\ 'colorscheme': 'one',
	\ 'tabline': {
	\ 	'left': [ ['buffers'] ],
	\ 	'right': [ ['close'] ]
	\ },
	\ 'component_expand': {
	\ 	'buffers': 'lightline#bufferline#buffers'
	\ },
	\ 'component_type': {
	\ 	'buffers': 'tabsel'
	\ }
	\ }
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#enable_nerdfont = 1
let g:lightline#bufferline#unicode_symbols = 1
