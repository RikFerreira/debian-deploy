" Plugins
" Depends on vimplug

call plug#begin('~/.vim/plugged')
    " Dependencies
    Plug 'marcweber/vim-addon-mw-utils'         " Snipmate dependency
    Plug 'tomtom/tlib_vim'                      " Snipmate dependency

    " Productivity
    Plug 'vim-scripts/restore_view.vim'         " Restore folding and cursor position
    Plug 'mhinz/vim-signify'                    " Shows git diff for files
    Plug 'tpope/vim-surround'                   " Semi auto surrounds code
    Plug 'ap/vim-css-color'                     " Adds color for hex codes
    Plug 'garbas/vim-snipmate'                  " Snippets
    Plug 'vim-scripts/delimitMate.vim'          " Auto close brackets, quotes and other stuff

    " Language specific
    Plug 'jalvesaq/nvim-r'                      " R Development

    " Aesthetics
    Plug 'vim-airline/vim-airline'              " Airline
    Plug 'vim-airline/vim-airline-themes'       " Airline theming
    call plug#end()
