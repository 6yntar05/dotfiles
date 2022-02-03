set encoding=UTF-8
set fileformats=unix,dos,mac
set ignorecase
set incsearch
set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set noswapfile

setlocal spell spelllang=ru_ru,en_us
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'vim-airline/vim-airline'
	Plug 'ap/vim-css-color'
	Plug 'flazz/vim-colorschemes'
	Plug 'tpope/vim-surround'
	Plug 'scrooloose/syntastic'
	Plug 'andweeb/presence.nvim'
call plug#end()

command! Q q
command! W w

nnoremap <A-t> :NERDTreeToggle<CR>
nnoremap <C-s> :w<CR>
nnoremap <Z-q> :q<CR>
