set nocompatible              " be iMproved, required
call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/YankRing.vim'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'elzr/vim-json'
Plug 'jeetsukumaran/vim-indentwise'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/neocomplete'
if (has('mac'))
  Plug 'fatih/vim-go'
  Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
endif
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'

call plug#end()
filetype off                  " required
" Vim misc defaults
set noswapfile     	   " they are annoying
filetype on
filetype plugin indent on  " indent
set ignorecase             " ignore case in searches
set undofile               " persistent undo
set encoding=utf-8
set backspace=indent,eol,start " make backspace work like most apps aka backspace onto previous line
set wildmode=longest,list,full " better expansion
set wildmenu
set incsearch "incremental search on / searches

" context swpcific suuper tab completion, good for gocode
let g:SuperTabDefaultCompletionType = "context"

set nohlsearch  " disable search highlighting
scriptencoding utf-8
set encoding=utf-8

" :E fix
command E Explore

" Tell vim where it put stuff
set backupdir=~/.vim/tmp
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set dir=~/.vim/tmp
set undodir=~/.vim/tmp


" Status bar customization
set laststatus=2
set statusline=%f "tail of the filenamj
set statusline+=%l

" Text Formatting
syntax on
set autoindent             " automatic indent new lines
set smartindent            " be smart about it
set autowrite
set wrap                 " wrap lines
set softtabstop=2          " yep, two
set shiftwidth=2           " ..
set tabstop=2
set expandtab              " expand tabs to spaces
set nosmarttab             " fuck tabs
set formatoptions+=n       " support for numbered/bullet lists
set cc=+1                  " highlight 80 characters long
set virtualedit=block      " allow virtual edit in visual block ..
set listchars=trail:.      " highlight trailing whitespace
autocmd FileType c,cpp,java,php,ruby,elixir autocmd BufWritePre <buffer> :%s/\s\+$//e


" Custom file type settings
autocmd FileType javascript setlocal textwidth=80
autocmd FileType coffee setlocal textwidth=80
autocmd FileType ruby setlocal textwidth=80
autocmd BufRead,BufNewFile *.html.erb set filetype=eruby
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
autocmd BufRead *.coffee set textwidth=100


" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Leader maps
let mapleader = ","
map <leader>b :CtrlPBuffer<CR>
nnoremap <leader>t :CtrlP<CR>
map <leader>f :NERDTreeFind<CR>
map <leader>l <C-^>
map <leader>n :NERDTreeToggle<CR>
map <leader>o :TlistToggle<CR>
map <leader>m @:<CR> " repeat last command
noremap <leader>r :GoRun %<CR> "  go run current file
noremap <Leader>a :Ack <cword><cr> # Ack curent word
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>gc <Plug>(go-callers)
au FileType go nmap <leader>gt <Plug>(go-test)
autocmd FileType go nmap <leader>m  <Plug>(go-build)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)


set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=vendor/bundle/**
set wildignore+=vendor/ruby/**
set wildignore+=test/coverage/**
set wildignore+=bundle
set wildignore+=steak/**
set wildignore+=bundle/**
set wildignore+=dist/**
set wildignore+=/tmp/**
set wildignore+=/log/**
set wildignore+=app/nls/**
set wildignore+=node_modules/**
set wildignore+=vendor/bower/**
set wildignore+=doc/**
set wildignore+=catalog/**
set wildignore+=vendor/**
set wildignore+=vendor
" Wildignore stuff so that we don't have to search it
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=vendor/bundle/**
set wildignore+=vendor/ruby/**
set wildignore+=test/coverage/**
set wildignore+=bundle
set wildignore+=steak/**
set wildignore+=bundle/**
set wildignore+=dist/**
set wildignore+=/tmp/**
set wildignore+=/log/**
set wildignore+=app/nls/**
set wildignore+=node_modules/**
set wildignore+=vendor/bower/**
set wildignore+=doc/**
set wildignore+=catalog/**

" Misc
"cabbrev E Explore " not sure if this is still necessary

" Use ag instead of ack if avail
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Solarized
syntax enable
set background=dark
colorscheme solarized
"colorscheme atom-dark-256


" update ctags always
let g:easytags_async = 1
set tags=./tags;/,tags;/
let g:solarized_termtrans=1
let g:airline_theme='solarized'
set t_Co=16



"airline customization
" disable branchname
let g:airline_section_b   =''



let g:vim_json_syntax_conceal = 0
let g:syntastic_json_checkers = ['jsonlint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_go_checker = 1
set runtimepath^=~/.vim/bundle/ctrlp.vim
autocmd BufWritePre * :%s/\s\+$//e
set viminfo='100,\"2500,:200,%,n~/.viminfo

let g:vim_markdown_folding_disabled = 1 "disable vim-markdown folding

let g:syntastic_cucumber_checkers=['']
let g:ctrlp_map = '<c-d>'
let g:ctrlp_cmd = 'CtrlD'



" ========== VIM-GO PLUGIN ==========
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_auto_type_info = 1 "type info (|:GoInfo|) for the word under the cursor automatically.
let g:go_fmt_command = "goimports"
" enable synstatic go
let g:syntastic_go_checkers = ['go',  'govet', 'errcheck'] " enable synstatic go
let g:go_list_type = "quickfix" " for syntastic
" the ack.vim loses quickfix on write
""let g:go_metalinter_autosave = 1#
""let g:go_metalinter_enabled = ['']
"let g:go_metalinter_autosave_enabled = ['']



" =============== NerdTree Plguin =========
let g:NERDTreeWinSize = 30


