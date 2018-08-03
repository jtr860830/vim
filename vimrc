" Plugin manager dein
if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=$HOME/.vim/plugins/manager/repos/github.com/Shougo/dein.vim

if dein#load_state('$HOME/.vim/plugins/manager')
  call dein#begin('$HOME/.vim/plugins/manager')

  " Let dein manage dein
  call dein#add('$HOME/.vim/plugins/manager')
  call dein#add('Shougo/dein.vim')

  " UI
  call dein#add('hzchirs/vim-material')
  call dein#add('scrooloose/nerdtree')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('tpope/vim-fugitive')
  call dein#add('majutsushi/tagbar')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  " Snippets
  call dein#add('SirVer/ultisnips')
  call dein#add('honza/vim-snippets')
  " Auto Completion
  call dein#add('Shougo/deoplete.nvim')
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
  call dein#add('itchyny/calendar.vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('fatih/vim-go')

  " Specify revision/branch/tag
  " call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" Install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" Configuration source
source $HOME/.vim/config/general.vimrc
source $HOME/.vim/config/theme.vimrc
source $HOME/.vim/config/plugins.vimrc
