" Tex settings

" Autocompile documents
    autocmd FileType tex
        \ autocmd! BufWritePost <buffer> :!compile %
