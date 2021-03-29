" Rmarkdown settings

" Autocompile documents
    autocmd FileType rmd,Rmd
        \ autocmd! BufWritePost <buffer> :!compile %

