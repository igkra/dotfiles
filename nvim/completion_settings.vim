set hidden
let g:LanguageClient_serverCommands = {
            \ 'c': [ 'clangd' ],
            \ 'cpp': [ 'clangd' ],
            \ 'rust': ['rustup', 'run', 'stable', 'rls'],
            \ 'python': [ 'pyls' ],
            \ 'ruby': [ 'solargraph',  'stdio' ],
            \ 'html': ['html-languageserver', '--stdio'],
            \ 'css':  ['css-languageserver', '--stdio'],
            \ 'less': ['less-languageserver', '--stdio'],
            \ 'json': ['json-languageserver', '--stdio'],
            \ 'javascript': [ 'javascript-typescript-stdio' ],
            \ 'javascript.jsx': ['javascript-typescript-stdio'],
            \ 'typescript': ['javascript-typescript-stdio'],
            \ }

let g:LanguageClient_autoStop = 0
let g:LanguageClient_selectionUI = 'fzf'
let g:deoplete#sources = {}
let g:deoplete#sources.php = ['ultisnips', 'tags', 'buffer']
let g:deoplete#sources.ruby = ['solargraph', 'ultisnips', 'tags', 'buffer']


nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

augroup LanguageClientConfig
  autocmd!
  " <leader>ld to go to definition
  autocmd FileType javascript,python,typescript,json,css,less,html,ruby nnoremap <buffer> <leader>d :call LanguageClient_textDocument_definition()<cr>
  " <leader>lf to autoformat document
  autocmd FileType javascript,python,typescript,json,css,less,html,ruby nnoremap <buffer> <leader>f :call LanguageClient_textDocument_formatting()<cr>
  " <leader>lh for type info under cursor
  autocmd FileType javascript,python,typescript,json,css,less,html,ruby nnoremap <buffer> <leader>h :call LanguageClient_textDocument_hover()<cr>
  " <leader>lr to rename variable under cursor
  autocmd FileType javascript,python,typescript,json,css,less,html,ruby nnoremap <buffer> <leader>R :call LanguageClient_textDocument_rename()<cr>
  " <leader>lc to switch omnifunc to LanguageClient
  autocmd FileType javascript,python,typescript,json,css,less,html,ruby nnoremap <buffer> <leader>c :setlocal omnifunc=LanguageClient#complete<cr>
  " <leader>ls to fuzzy find the symbols in the current document
  autocmd FileType javascript,python,typescript,json,css,less,html,ruby nnoremap <buffer> <leader>S :call LanguageClient_textDocument_documentSymbol()<cr>
  " Use as omnifunc by default
  autocmd FileType javascript,python,typescript,json,css,less,html,ruby setlocal omnifunc=LanguageClient#complete
augroup END
