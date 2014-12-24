set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" :TagbarToggle
Plugin 'majutsushi/tagbar'

" markdown
Plugin 'tpope/vim-markdown'

syntax on
set number
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2        "Displaying status line always

" start of status line settings
set statusline=%f
set statusline+=\ %y
set statusline+=%=
set statusline+=%l
set statusline+=,
set statusline+=%c
set statusline+=:
set statusline+=%L
set statusline+=\[%p%%\]
" end of status line settings

map <f9> :Tlist<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap    <F2> :<C-U>setlocal lcs=tab:>-,trail:-,eol:$ list! list? <CR>
map <leader>v :e /etc/vim/vimrc
