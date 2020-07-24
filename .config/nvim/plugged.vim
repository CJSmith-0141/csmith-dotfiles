call plug#begin(stdpath('data').'/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ycm-core/YouCompleteMe', {'do':'/usr/bin/python3 ./install.py --clangd-completer'}
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/undotree'
Plug 'cdelledonne/vim-cmake'
call plug#end()
