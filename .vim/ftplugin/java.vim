" import the class under the cursor
nmap <silent> <buffer> <leader>i :JavaImport<CR>

" search javadocs for element under cursor
nmap <silent> <buffer> <leader>d :JavaDocSearch -x declarations<CR>

nmap <silent> <buffer> <CR> :JavaSearchContext<CR>
