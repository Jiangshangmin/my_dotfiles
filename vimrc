syntax on
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" The bundles you install will be listed here
Plugin 'scrooloose/nerdtree.git'



Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Bundle 'klen/python-mode'





" Now we can turn our filetype functionality back on
filetype plugin indent on

" The rest of your config follows here
" autocmd VimEnter * NERDTree
" autocmd VimEnter * if !argc() | NERDTree | endif
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()


augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 110
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%110v.*/
    autocmd FileType python set nowrap
    augroup END

" color
syntax enable
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized


" show line numbers
set number
" set tabs to have 4 spaces
set ts=4
" indent when moving to the next line while writing code
set autoindent
" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4
" show a visual line under the cursor's current line 
set cursorline
" show the matching part of the pair for [] {} and ()
set showmatch
" enable all Python syntax highlighting features
let python_highlight_all = 1
" hightlight search
set hlsearch


" pymode config
" Skip all Warnings and Errors that starts with E2
let g:pymode_lint_ignore = "E501,W"

" Don't autofold code
let g:pymode_folding = 0

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all


let g:pymode_rope = 1
" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" set the max colorcolumn
let g:pymode_options_max_line_length = 100
