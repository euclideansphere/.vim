
" change the terminal title
set title

" performance thing
set ttyfast

" keep 1000 lines of command line history
set history=1000

" re-read file into buffer after external command (like `make`)
set autoread

" save before external commands (like `make`)
set autowrite

" allow cursor keys in insert mode
set esckeys

" text editors should not make noise
set novisualbell
set noerrorbells
set vb t_vb=

" enable line numbers
set number

" enable syntax highlighting
syntax on

" allow cursor after line end
set virtualedit=onemore

" UTF-8
if has("multi_byte")
	if &termencoding == ""|let &termencoding = &encoding|endif
	set encoding=utf-8
	setglobal fileencoding=utf-8
endif
" set compatible line endings in order of preference
set fileformats=unix,dos

" colorscheme
set background=dark
colorscheme gruvbox
set t_Co=256
let base16colorspace=256

" folding
set foldenable
set foldmethod=syntax

" search
set ignorecase
set incsearch
" regex search simplicity
set magic

" indentation
" keep indentation level on newline
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab

" filetype stuff
" allow filetype specific indentation
filetype plugin indent on

" show whitespace as hidden characters
set list
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" disable auto commenting for all files
au FileType * set fo-=c fo-=r fo-=o

" airline theme
" show all the time rather than only in split mode
set laststatus=2
let g:airline_theme='base16'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

