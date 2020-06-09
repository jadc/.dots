" disable backups
set nobackup
set nowritebackup
set noundofile
set noswapfile

" delete newlines
set backspace=indent,eol,start

" relative numbers
" set relativenumber
set number

" syntax highlighting
syntax on

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase
noremap <silent> <leader><cr> :noh<cr>

" reduce delay that vim waits for key combos
set timeoutlen=250

" show hidden characters & fix unicode 
scriptencoding utf-8
set encoding=utf-8
set listchars=eol:⮠

" better tabs
set expandtab
set tabstop=4
set shiftwidth=4

" html indentation
filetype indent on
filetype plugin indent on

" word wrap (as opposed to letters)
set wrap linebreak nolist

" auto on save
"- latex compile
autocmd BufWritePost *.tex silent! execute "!pdflatex % >/dev/null 2>&1" | redraw!

"- sxhkd reload
autocmd BufWritePost sxhkdrc silent! execute "!pkill -USR1 -x sxhkd"

" mapping
"- markdown exclusive
autocmd FileType markdown inoremap ;i ![](images/unit)<Esc>i
autocmd FileType markdown command Notes r!cat ~/.dots/configs/vim/.vim/templates/template-notes.md

"- displayed line keys
nnoremap j gj
nnoremap k gk

"- luke smith
inoremap <Tab><Tab> <Esc>/<++><Enter>"_c4l
