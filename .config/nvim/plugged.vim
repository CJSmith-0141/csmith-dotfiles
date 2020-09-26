call plug#begin(stdpath('data').'/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ycm-core/YouCompleteMe', {'do':'/usr/bin/python3 ./install.py --clangd-completer'}
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/undotree'
Plug 'cdelledonne/vim-cmake'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'uarun/vim-protobuf'
Plug 'jremmen/vim-ripgrep'
Plug 'kamykn/spelunker.vim'
Plug 'kamykn/popup-menu.nvim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'peterhoeg/vim-qml'
call plug#end()
