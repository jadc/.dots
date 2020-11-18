" sin free
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" disable backups
set nobackup
set nowritebackup
set noundofile
set noswapfile

" delete newlines
set backspace=indent,eol,start

" relative numbers
" set relativenumber
" set number
nnoremap <F2> :set nonumber!<CR>

" copy to system clipboard
set clipboard+=unnamedplus

" syntax highlighting
syntax on

" folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
nnoremap <space> za

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" reduce delay that vim waits for key combos
set timeoutlen=250

" draw optimization
set lazyredraw

" show hidden characters & fix unicode 
scriptencoding utf-8
set encoding=utf-8
set listchars=eol:⮠

" better tabs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set smarttab

" indenting
set autoindent
set copyindent

" history
set history=1000
set undolevels=1000

" beep
set visualbell
set noerrorbells

" html indentation
filetype indent on
filetype plugin indent on

" word wrap (as opposed to letters)
set wrap linebreak nolist

" auto on save
"- latex compile
"autocmd BufWritePost *.tex silent! execute "!mkdir -p %_data && pdflatex -output-directory=%_data % >/dev/null 2>&1" | redraw!
autocmd BufWritePost *.tex silent! execute "!pdflatex % >/dev/null 2>&1" | redraw!

"- sxhkd reload
autocmd BufWritePost sxhkdrc silent! execute "!pkill -USR1 -x sxhkd"

" mapping
"- displayed line keys
nnoremap j gj
nnoremap k gk

"- luke smith
"inoremap <Tab><Tab> <Esc>/<++><Enter>"_c4l

" exclusives
"- latex itemize
autocmd Filetype tex,latex inoremap ;; \begin{itemize}<Enter>\item{}<Enter>\end{itemize}<Esc>ki
autocmd Filetype tex,latex inoremap ;i \begin{figure}[H]<Enter>\centering<Enter>\includegraphics[width=0.50\textwidth]{}<Enter>\end{figure}<Esc>k$i
