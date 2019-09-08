" Plugin manager
" Automatic install vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

  " UI
  Plug 'kaicataldo/material.vim'
  Plug 'hzchirs/vim-material'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'majutsushi/tagbar'
  Plug 'ryanoasis/vim-devicons'
  " Auto Completion
  Plug 'ycm-core/YouCompleteMe', { 'do': 'python3 ./install.py --clangd-completer --go-completer --ts-completer --rust-completer' }
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  " Syntax Checker
  Plug 'dense-analysis/ale'
  " Language Pack
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'rust-lang/rust.vim'
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'elixir-editors/vim-elixir'
  Plug 'sheerun/vim-polyglot'
  " Tools
  Plug 'Shougo/denite.nvim', {'do' : ':UpdateRemotePlugins'}
  Plug 'junegunn/fzf.vim' | Plug '/usr/local/opt/fzf'
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-surround'
  Plug 'alvan/vim-closetag'
  Plug 'jiangmiao/auto-pairs'
  Plug 'andymass/vim-matchup'
  Plug 'gko/vim-coloresque'

call plug#end()
" End Plugin manager

" Configuration source
source ~/.config/nvim/config/general.vim
source ~/.config/nvim/config/theme.vim
source ~/.config/nvim/config/tool.vim
