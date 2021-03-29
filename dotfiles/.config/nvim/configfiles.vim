" Vim settings for configuration files
"
" Files supported:
" .Xresources
" .Xdefaults
" *.vim

" Autoupdate
" Update Xresources
    autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %
" Update .vim files
    autocmd FileType vim
        \ autocmd! BufWritePost <buffer> :source %
