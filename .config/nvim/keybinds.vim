let mapleader = " "

nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>

nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>gd :YcmCompleter GoTo<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <leader>gq :YcmCompleter GetDoc<CR> 

nnoremap <leader>fz :Files<CR>

nnoremap <leader>ff :Rg<CR> 
nnoremap <leader>fp :Rg<SPACE>

nnoremap <leader>gc :GCheckout<CR>
