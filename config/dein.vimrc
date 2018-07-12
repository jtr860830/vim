" Plugin manager dein
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
  " UI
  call dein#add('arcticicestudio/nord-vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('tpope/vim-fugitive')
  call dein#add('majutsushi/tagbar')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('ryanoasis/vim-devicons')
  " Snippets
  call dein#add('SirVer/ultisnips')
  call dein#add('honza/vim-snippets')
  " Auto Completion
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('zchee/deoplete-clang')
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('sebastianmarkow/deoplete-rust')
  call dein#add('zchee/deoplete-go', {'build': 'make'})
  call dein#add('mhartington/nvim-typescript', {'build': './install.sh'})
  call dein#add('Shougo/neco-syntax')
  call dein#add('wokalski/autocomplete-flow')
  call dein#add('carlitux/deoplete-ternjs')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('autozimu/LanguageClient-neovim', {
    \ 'rev': 'next',
    \ 'build': './install.sh',
    \ })
  " Syntax
  call dein#add('w0rp/ale')
  call dein#add('sheerun/vim-polyglot')
  " Tools
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#add('Shougo/denite.nvim')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('tpope/vim-surround')
  call dein#add('alvan/vim-closetag')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('gko/vim-coloresque')
  call dein#add('fatih/vim-go')

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
