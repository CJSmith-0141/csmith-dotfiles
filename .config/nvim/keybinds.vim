let mapleader = " "
nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>gd :YcmCompleter GoTo<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <leader>gq :YcmCompleter GetDoc<CR> 

nnoremap <leader>fz :FZF<CR>

let g:ycm_autoclose_preview_window_after_completion = 1
