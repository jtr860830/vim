" Python provider
let g:python_host_prog = '~/.pyenv/versions/2.7.18/bin/python'
let g:python3_host_prog = '~/.pyenv/versions/3.9.0/bin/python'

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | wincmd p | ene | exe 'NERDTree' argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
	\ "Modified"  : "✹",
	\ "Staged"    : "✚",
	\ "Untracked" : "✭",
	\ "Renamed"   : "➜",
	\ "Unmerged"  : "═",
	\ "Deleted"   : "✖",
	\ "Dirty"     : "✗",
	\ "Clean"     : "✔︎",
	\ 'Ignored'   : '☒',
	\ "Unknown"   : "?"
	\ }
let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

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
