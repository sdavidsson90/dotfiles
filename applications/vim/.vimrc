" -- Core
syntax on
 
set number 
set relativenumber
set autoread
set mouse=a
set showmatch
set fillchars=eob:\ 
set expandtab
set tabstop=2
set noswapfile
set undofile
set undolevels=999
set ignorecase
set laststatus=2
set statusline=%F

" --
syntax on

" -- Netrw
let g:netrw_liststyle=3

" -- Keybinds
let mapleader = " "
nnoremap <leader>fe :Explore <CR>
nnoremap <leader>bn :bnext <CR>
nnoremap <leader>bp :bprevious <CR>

" Sync clipboard with OS
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif 
