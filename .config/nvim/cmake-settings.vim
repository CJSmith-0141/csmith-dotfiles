let g:cmake_default_config='build'
let g:cmake_link_compile_commands=1
let g:cmake_console_size=5
nnoremap <leader>cl :CMakeGenerate cmake-llvm-clang -DCMAKE_BUILD_TYPE=Debug -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_EXPORT_COMPILE_COMMANDS=true<CR>
nnoremap <leader>cg :CMakeGenerate build<CR>
nnoremap <leader>cb :CMakeBuild -j4<CR>
nnoremap <leader>cq :CMakeClose<CR>
nnoremap <leader>co :CMakeOpen<CR>
