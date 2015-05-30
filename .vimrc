set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-scripts/ScrollColors'
Plugin 'vim-scripts/tComment'
Plugin 'vim-scripts/ruby-matchit'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-haml'
Plugin 'daylerees/colour-schemes'
Plugin 'terryma/vim-expand-region'
Plugin 'wincent/Command-T'
Plugin 'mattn/emmet-vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'mhinz/vim-startify'
Plugin 'sjl/gundo.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on

" Add custom commands to Rails.vim
command! Rroutes :RE config/routes.rb
command! RTroutes :RTedit config/routes.rb
command! Rgem :RE Gemfile

" Reload vim configurations command
command! Reload :source ~/.vimrc

" Convert tabs into 2 spaces
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" NerdTree configs
map <C-n> :NERDTreeToggle<CR>

" Color scheme
colorscheme gruvbox
set background=dark

" Settings
syntax on
set nu
