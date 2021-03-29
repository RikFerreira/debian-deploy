" Bibtex/Biblatex settings

" " Set folding function for bibtex entries
" function! BibTeXFold()
"     if getline(v:lnum) =~ '^@.*$'
"         return ">1"
"     endif
"     return "="
" endfunction
" au BufEnter *.bib setlocal foldexpr=BibTeXFold()
" au BufEnter *.bib setlocal foldmethod=expr"

