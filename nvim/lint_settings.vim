"configure ale
let g:ale_linters = {'javascript': ['eslint']}                                  "Lint js with eslint
let g:ale_fixers = {
      \ 'javascript': ['prettier'],
      \ 'ruby': ['rubocop'],
      \ 'typescript': ['prettier', 'tslint'],
      \ 'typescript.tsx': ['prettier', 'tslint'],
      \}
let g:ale_javascript_prettier_options = '--print-width 100'                     "Set max width to 100 chars for prettier
let g:ale_sign_error = '✖'                                                      "Lint error sign
let g:ale_sign_warning = '⚠'                                                    "Lint warning sign

nnoremap <Leader>e :lopen<CR>
nnoremap <Leader>E :copen<CR>

let b:ale_fix_on_save = 1
