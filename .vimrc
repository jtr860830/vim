"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/jtr860830/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/jtr860830/.vim/bundles')
  call dein#begin('/Users/jtr860830/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/jtr860830/.vim/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#add('Shougo/vimshell.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('tpope/vim-surround')
  call dein#add('vim-scripts/closetag.vim')
  call dein#add('majutsushi/tagbar')
  call dein#add('dracula/vim')
  call dein#add('fatih/vim-go')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('gko/vim-coloresque')
  call dein#add('MarcWeber/vim-addon-mw-utils')
  call dein#add('tomtom/tlib_vim')
  call dein#add('honza/vim-snippets')
  call dein#add('garbas/vim-snipmate')
  call dein#add('Shougo/denite.nvim')

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" Global settings
set nu
set ai
set tabstop=4
set shiftwidth=4
set ic
set incsearch
set cursorline
set showcmd
set hlsearch
set history=1000
set wildmode=longest,list,full
set wildignorecase
set backspace=2
syntax on
color dracula

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
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

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Flagship
set laststatus=2
set showtabline=2
set guioptions-=e
autocmd User Flags call Hoist("buffer", "fugitive#statusline")
autocmd User Flags call Hoist("window", "SyntasticStatuslineFlag")
autocmd User Flags call Hoist("global", "%{&ignorecase ? '[IC]' : ''}")
let g:tablabel =
      \ "%N%{flagship#tabmodified()} %{flagship#tabcwds('shorten',',')}"

" Golang
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

" Python
let g:python_host_prog  = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'
