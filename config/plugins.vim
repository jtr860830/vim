" Plugin settings

" Neovim Python support
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

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

" nvim-completion-manager
autocmd BufEnter * call ncm2#enable_for_buffer()
let g:ncm2#match_highlight = 'italic'
let g:ncm2_look_enabled = 1
let g:ncm2_look_mark = '👀'
let g:ncm2_pyclang#library_path = '/usr/local/opt/llvm/lib'
function! UltiSnipsExpandOrJumpOrTab()
  call UltiSnips#ExpandSnippetOrJump()
  if g:ulti_expand_or_jump_res > 0
    return ""
  else
    return "\<Tab>"
  endif
endfunction
inoremap <silent> <expr> <Tab> ncm2_ultisnips#expand_or("\<Plug>(ultisnips_try_expand)")
inoremap <silent> <Plug>(ultisnips_try_expand) <C-R>=UltiSnipsExpandOrJumpOrTab()<CR>
snoremap <silent> <Tab> <Esc>:call UltiSnips#ExpandSnippetOrJump()<CR>

" UltiSnips
let g:UltiSnipsExpandTrigger = "<Plug>(ultisnips_expand_or_jump)"
let g:UltiSnipsJumpForwardTrigger = "<Plug>(ultisnips_expand_or_jump)"
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"

" Calendar
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
