" dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.vim/bundles')
  call dein#begin('$HOME/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.vim/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('majutsushi/tagbar')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('w0rp/ale')
  call dein#add('tpope/vim-surround')
  call dein#add('alvan/vim-closetag')
  call dein#add('sheerun/vim-polyglot')
  call dein#add('arcticicestudio/nord-vim')
  call dein#add('fatih/vim-go')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('tpope/vim-fugitive')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('gko/vim-coloresque')
  call dein#add('Shougo/denite.nvim')
  call dein#add('SirVer/ultisnips')
  call dein#add('honza/vim-snippets')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('Shougo/deoplete-clangx')
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('sebastianmarkow/deoplete-rust')
  call dein#add('zchee/deoplete-go', {'build': 'make'})
  call dein#add('mhartington/nvim-typescript')
  call dein#add('Shougo/neco-syntax')
  call dein#add('wokalski/autocomplete-flow')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('autozimu/LanguageClient-neovim', {
    \ 'rev': 'next',
    \ 'build': './install.sh',
    \ })

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
" End dein Scripts-------------------------

" Global settings
set nu
set ai
set tabstop=4
set shiftwidth=4
set expandtab
set ic
set incsearch
set cursorline
set showcmd
set hlsearch
set history=1000
set wildmode=longest,list,full
set wildignorecase
set termguicolors
set backspace=2
set background=dark
set completeopt-=preview
syntax on

" Colorscheme
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_comment_brightness = 12
color nord

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

" vim-airline
let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
set laststatus=2

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:LanguageClient_autoStart = 1
let g:deoplete#sources#rust#racer_binary='$HOME/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/usr/local/Cellar/rust/1.25.0/share/rust/rust_src'
let g:deoplete#sources#go#gocode_binary = '$GOPATH/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

" Neovim Python support
let g:python3_host_prog = '/usr/local/bin/python3'
