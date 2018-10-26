" yankee.vim - Yank/put mappings

if exists("g:loaded_yankee") || &cp || v:version < 700
  finish
endif
let g:loaded_yankee = 1

" whole-file yank/put operations
nnoremap <leader>yf :%yank f<CR>
nnoremap <leader>pf gg"_dG"fP:w<CR>

" system clipboard copy/paste
function! BufferSystemYank()
  :silent! %y+
  echo "buffer yanked"
endfunction
vnoremap <leader>sy "+y
nnoremap <leader>sy :call BufferSystemYank()<CR>
nnoremap <leader>sp :put!+<CR>
