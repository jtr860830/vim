" Plugin manager
" Automatic install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

  " UI
  Plug 'hzchirs/vim-material'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tpope/vim-fugitive'
  Plug 'majutsushi/tagbar'
  Plug 'ryanoasis/vim-devicons'
  " Auto Completion
  Plug 'roxma/nvim-yarp'
  Plug 'ncm2/ncm2'
  Plug 'ncm2/ncm2-match-highlight'
  Plug 'ncm2/ncm2-bufword'
  Plug 'ncm2/ncm2-path'
  Plug 'ncm2/ncm2-github'
  Plug 'ncm2/ncm2-ultisnips'
  Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'
  Plug 'ncm2/ncm2-neoinclude' | Plug 'Shougo/neoinclude.vim'
  Plug 'ncm2/ncm2-cssomni'
  Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
  Plug 'ncm2/nvim-typescript', {'do': './install.sh'}
  Plug 'ncm2/ncm2-jedi'
  Plug 'ncm2/ncm2-racer'
  Plug 'ncm2/ncm2-pyclang'
  Plug 'ncm2/ncm2-go'
  Plug 'phpactor/ncm2-phpactor'
  Plug 'yuki-ycino/ncm2-dictionary'
  Plug 'filipekiss/ncm2-look.vim'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
  Plug 'SirVer/ultisnips'
  Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
  " Syntax
  Plug 'w0rp/ale'
  Plug 'sheerun/vim-polyglot'
  " Tools
  Plug 'Shougo/vimproc.vim', {'do' : 'make'}
  Plug 'Shougo/denite.nvim', {'do' : ':UpdateRemotePlugins'}
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-surround'
  Plug 'alvan/vim-closetag'
  Plug 'jiangmiao/auto-pairs'
  Plug 'gko/vim-coloresque'
  Plug 'itchyny/calendar.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()
" End Plugin manager

" Configuration source
source $HOME/.vim/config/general.vim
source $HOME/.vim/config/theme.vim
source $HOME/.vim/config/plugins.vim
