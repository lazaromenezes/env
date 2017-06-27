setlocal tabstop=2
setlocal shiftwidth=2

" Syntastic
let g:syntastic_javascript_checkers = ['eslint']

" Ctrlp
let g:ctrlp_custom_ignore = '\v[\/]\.(git)|node_modules$'

" syntastic-local-eslint (https://github.com/mtscout6/syntastic-local-eslint.vim)
"let s:lcd = fnameescape(getcwd())
"silent! exec \"lcd" expand('%:p:h')
"let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
"exec \"lcd" s:lcd
"let b:syntastic_javascript_eslint_exec = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
