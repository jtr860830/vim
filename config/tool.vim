" Python provider
let g:python3_host_prog = '~/.local/share/pyenv/shims/python'
let g:python_host_prog = '~/.local/share/pyenv/shims/python2'

" Completion Tool
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <c-space> coc#refresh()

" ALE
hi ALEErrorSign guifg=#ff5370
hi ALEWarningSign guifg=#ffcb6b
hi link ALEVirtualTextError ALEErrorSign
hi link ALEVirtualTextWarning ALEWarningSign
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_sign_info = '➜'
let g:ale_virtualtext_cursor = 1
let g:ale_virtualtext_prefix = '➤ '

" COC extensions
let g:coc_global_extensions = [
	\ 'coc-actions',
	\ 'coc-clangd',
	\ 'coc-dictionary',
	\ 'coc-emoji',
	\ 'coc-explorer',
	\ 'coc-go',
	\ 'coc-git',
	\ 'coc-highlight',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-marketplace',
	\ 'coc-pairs',
	\ 'coc-rust-analyzer',
	\ 'coc-sh',
	\ 'coc-snippets',
	\ 'coc-sql',
	\ 'coc-syntax',
	\ 'coc-tabnine',
	\ 'coc-toml',
	\ 'coc-tsserver',
	\ 'coc-word',
	\ 'coc-yaml'
	\ ]
