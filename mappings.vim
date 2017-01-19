
" quick save
nmap <leader>w :w!<cr>

" sudo save (oops I forgot to open with sudo)
command W w !sudo tee % > /dev/null

