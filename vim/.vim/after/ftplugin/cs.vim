" OmniSharp
let g:OmniSharp_host = "http://localhost:2000"
let g:OmniSharp_selector_ui = 'ctrlp'
let g:OmniSharp_server_type = 'roslyn'
let g:OmniSharp_server_path = expand('~/.vim/bundle/omnisharp-vim/omnisharp-roslyn/artifacts/publish/OmniSharp/default/netcoreapp1.1/OmniSharp')
let g:Omnisharp_start_server = 1
setlocal omnifunc=OmniSharp#Complete

" Ctrlp
let g:ctrlp_custom_ignore = '\v[\/]\.(git)|\v[\/](bin|obj)$'

" Settings
set tabstop=4
set shiftwidth=4
set makeprg=dotnet\ build

inoremap <F9> <Esc>:make<CR>
nnoremap <F9> :make<CR>

