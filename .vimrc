"VIMIDE vimrc basic settings
"--------start---------
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set fileformat=unix
set guifont=Courier:h12
set clipboard=unnamed
set laststatus=2
set scrolloff=3
set list
set listchars=tab:▸\ ,eol:¬,nbsp:·,trail:·
set showcmd
set wildmenu
set linespace=4
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set noswapfile
set backspace=start,indent,eol
set numberwidth=4
set autoindent
set smartindent
set nobackup
set writebackup
set hlsearch 
set incsearch
set autoread
set nu
set ruler


" pathogen setting
"----------------------------------
execute pathogen#infect()
filetype plugin on
filetype indent on
syntax enable

" vim-javasrcipt setting
"----------------------------------
let g:javascript_conceal=0

" airline setting
" ---------------------------------
let g:airline_detect_modified=1
let g:airline_theme='badwolf'

"solarized setting
"----------------------------------
"set background=dark
"colorscheme solarized

" NERDTree setting
"----------------------------------
map <C-n> :NERDTreeToggle<CR>

map <F5> :tabp<CR>
map <F6> :tabn<CR>
imap <F5> <ESC>:tabp<CR>i
imap <F6> <ESC>:tabn<CR>i

map <C-j> <C-W>j 
map <C-k> <C-W>k 
map <C-h> <C-W>h 
map <C-l> <C-W>l 

au! BufRead,BufNewFile *.js set syntax=jquery
au! BufRead,BufNewFile *.less set syntax=css
au! BufRead,BufNewFile *.tpl set syntax=html
au! BufRead,BufNewFile *.sah set syntax=javascript

au! BufRead,BufNewFile *.js set filetype=javascript
au! BufRead,BufNewFile *.less set filetype=css
au! BufRead,BufNewFile *.tpl set filetype=html
au! BufNewFile,BufRead *.t2t set ft=txt2tags
au! BufRead,BufNewFile *.sah set filetype=javascript

autocmd! bufwritepost .vimrc source ~/.vimrc

let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
set tags=~/tags

let mapleader=","
call pathogen#runtime_append_all_bundles()


nnoremap <C-K> :call PhpDocSingle()<CR>
vnoremap <C-K> :call PhpDocRange()<CR>

let g:pdv_cfg_Package = 'placeholder'
let g:pdv_cfg_Version = '1.0.0'
