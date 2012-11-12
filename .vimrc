" in Vim 7.3, built-in; otherwise fall back to other function
if exists('+colorcolumn')
  set colorcolumn=80
  autocmd FileType html setlocal colorcolumn=
else
  highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
  match OverLength /\%>80v.\+/
endif
syntax on

set cursorline
set textwidth=80
set number
set nowrap " forces style
set autoindent
set copyindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab " makes you go back 2 when you del from tab
set hlsearch " highlight all matches in a file when searching
set incsearch " incrementally highlight your searches
set pastetoggle=<F8>
inoremap <leader>p <F8><cr> p<cr> <F8><cr>
set nobackup " remove backups from vim
set noswapfile " remove backups from vim
set smartcase " use caps if any caps used in search
set laststatus=2 " forces showing status bar
set encoding=utf-8 " order matters for Windows (encoding+autochdir)
" set autochdir
set title " modifies window to have filename as its title
set shell=/bin/bash
set viminfo='10,\"100,:20,%,n~/.viminfo " saves position in files
let mapleader=","

if v:version >= 600
  filetype plugin on
  filetype indent on
else
  filetype on
endif

nnoremap ; :
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>w :set hlsearch!<CR>
nnoremap <leader>dw :%s/\v +\n/\r/g<CR> " when substituting, \r is newline
nnoremap ,, <C-^>

map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT $HOME<cr>

nnoremap <Right> <C-w>l
nnoremap <Left> <C-w>h
nnoremap <Up> <C-w>k
nnoremap <Down> <C-w>j
nnoremap qq :q!<CR>

inoremap jk <esc>
inoremap kj <esc>
inoremap <esc> <nop>

" flag lines that have trailing whitespace
highlight TrailingWhiteSpace ctermbg=yellow guibg=yellow
match TrailingWhiteSpace /\v +\n/

" function to restore files to last position
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

augroup filetype_makefile
  autocmd!
  autocmd Filetype make setlocal noexpandtab
augroup END

augroup filetype_wig
 autocmd!
 autocmd FileType wig nnoremap <leader>r :!wiggle % --symbol <CR>
augroup END

set statusline=%.40F " write full path to file, max of 40 chars
set statusline+=%h%m%r " help file, modified, and read only
set statusline+=\ col=%v " column number
set statusline+=\ Buf\=%n " Buffer number
set statusline+=\ %y " Filetype
set statusline+=\ char=\[%b\]
set statusline+=\ %=%l/%L\ (%p%%)\ \  " right align percentages
call pathogen#infect()
call pathogen#helptags()
