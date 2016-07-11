set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

syntax enable


set backspace=indent,eol,start        " Make backspace behave like every other editor
let mapleader = ','                   " set , to be the leader
set number                            " activate line number
set autowriteall                      " automatically write the file when switching the buffer
set complete=.,w,b,u                  " set our desired autocompletion
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4



"-------------------------Visuals----------------------------"
colorscheme solarized
"colorscheme atom-dark-256

" remove side scroll bars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R


"-------------------------Searching--------------------------"
set hlsearch
set incsearch


"------------------------Split Managements-------------------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"--------------------------Mappings--------------------------"

" Make it easy to edit the vimrc file.
nmap <Leader>ed :tabedit $MYVIMRC<cr>

" Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

" Add simple paste/nopaste
nmap <Leader>p :set paste<cr>
nmap <Leader>n :set nopaste<cr>

" Make NERDTree easier to toggle
nmap <D-1> :NERDTreeToggle<cr>

" Quick Navigation
nmap <C-k> <C-U>
nmap <C-j> <C-D>


nmap <D-r> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>


"-------------------------Plugins-------------------------------"

"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'




"-------------------------Auto-Commands--------------------------"
" Automatically source the vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

