" Colorscheme
let g:onedark_terminal_italics = 1
let g:onedark_hide_endofbuffer = 1
color onedark

" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'one'
let g:lightline.active = {'left':[['mode','paste'],['gitbranch','readonly','filename','modified'],['gitdiff']],'right': [['linter_checking','linter_errors','linter_warnings','linter_infos','linter_ok'],['lineinfo'],['percent'],['fileformat','fileencoding','filetype']]}
let g:lightline.inactive = {'left':[['filename','gitversion']],'right':[['lineinfo'],['percent']]}
let g:lightline.tabline = {'left':[['buffers']],'right': [[ 'close' ]]}
let g:lightline.component_function = {'gitbranch': 'gitbranch#name'}
let g:lightline.component_expand = {'gitdiff': 'lightline#gitdiff#get','linter_checking': 'lightline#ale#checking','linter_infos':'lightline#ale#infos','linter_warnings':'lightline#ale#warnings','linter_errors':'lightline#ale#errors','linter_ok':'lightline#ale#ok','buffers':'lightline#bufferline#buffers'}
let g:lightline.component_type = {'gitdiff': 'middle','linter_checking':'right','linter_infos':'right','linter_warnings':'warning','linter_errors':'error','linter_ok':'right','buffers':'tabsel'}
let g:lightline.separator = {'left': "\ue0b0", 'right': "\ue0b2"}
let g:lightline.subseparator = {'left': "\ue0b1", 'right': "\ue0b3"}
let g:lightline#gitdiff#indicator_added = "✚ "
let g:lightline#gitdiff#indicator_deleted = "✖ "
let g:lightline#gitdiff#indicator_modified = "✹ "
let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129 "
let g:lightline#ale#indicator_warnings = "\uf071 "
let g:lightline#ale#indicator_errors = "\uf05e "
let g:lightline#ale#indicator_ok = "\uf00c"
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#enable_nerdfont = 1
let g:lightline#bufferline#unicode_symbols = 1
