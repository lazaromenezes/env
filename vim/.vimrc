"=================================================
" Vimrc file based on Example_vimrc
"
" URL: http://vim.wikia.com/wiki/Example_vimrc
"=================================================

" Setup compatibility mode  
set nocompatible

" File type identification
filetype indent plugin on

" Enables syntax highlighting
syntax on

" Turn line numbers on
set number

" Command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight search results
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Autoindent
set autoindent
set smartindent

" Indentation settings
set tabstop=2
set shiftwidth=2
set expandtab

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Asks for saving a file instead of failing
set confirm

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

colorscheme quantum

" Use <F2> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F2>

" Maps commands to keys
"
" File explorer
map <C-O> :Explore<CR>

" Redraw screen turns search highlight of
nnoremap <C-L> :nohl<CR><C-L>

" Enables Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Syntastic + Lint
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['tslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" Ctrlp
let g:ctrlp_custom_ignore = '\v[\/]\.(git)|node_modules$'

