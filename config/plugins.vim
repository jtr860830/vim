" Neovim Python support
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

" Neovim Ruby support
let g:ruby_host_prog = '/usr/local/lib/ruby/gems/2.6.0/bin/neovim-ruby-host'

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:NERDTreeIndicatorMapCustom = {
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
let g:NERDTreeShowIgnoredStatus = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

" Calendar
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.config/nvim/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_key_list_stop_completion = ['<C-y>', '<Tab>']
let g:ycm_error_symbol = '•'
let g:ycm_warning_symbol = '•'

" UltiSnips
let g:UltiSnipsExpandTrigger="<S-Tab>"
let g:UltiSnipsJumpForwardTrigger="<C-x>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

" ALE
hi link ALEErrorSign Error
hi link ALEWarningSign WarningMsg
hi link ALEVirtualTextError ALEErrorSign
hi link ALEVirtualTextWarning ALEWarningSign
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_sign_info = '➜'
let g:ale_virtualtext_cursor = 1
let g:ale_virtualtext_prefix = '➤ '

" Vim-Go
let g:go_template_autocreate = 0
let g:go_auto_sameids = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
