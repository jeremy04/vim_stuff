execute pathogen#infect()
"filetype off
filetype plugin indent on

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

set number

"allow backspacing over everything in insert mode
"
set backspace=indent,eol,start

" make leader Spacebar
let mapleader = "\<Space>"
" Open file 'spacebar o'
nnoremap <Leader>o :CtrlP<CR>
" Save file 'space w'
nnoremap <Leader>w :w<CR>

" copy paste system clipboard , space p and space y
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
set clipboard=unnamed

" window navigation
noremap <leader>h :wincmd h<CR>
noremap <leader>j :wincmd j<CR>
noremap <leader>k :wincmd k<CR>
noremap <leader>l :wincmd l<CR>
"
" customizations for ctrl p
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_use_caching=0
""Does not cache files now


map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" nerdtree
" let g:NERDTreeWinSize=15
filetype plugin indent on
syntax on
set shell=bash
" silver searcher
map f :Ag
"syntasic
let g:syntastic_enable_signs=1

" buffers
set hidden

set foldmethod=indent
set nofoldenable
set foldnestmax=6


" Toggle nerdtree
" noremap ;ne NERDTreeToggle

"Switch between buffers
nmap <Tab> :bnext <CR>
nmap <S-Tab> :bprev <CR>
"
"" Buffergator settings
noremap <Leader>b :BuffergatorToggle<CR>

"" NerdCommenter
map <Leader>[ <Plug>NERDCommenterToggle('n', 'Toggle')<CR>

"close the buffer
noremap <Leader>c :bdelete<CR>
let g:buffergator_viewport_split_policy = "T"   " Split horizontal at top for
"buffers
let g:buffergator_sort_regime="filepath"
let g:buffergator_split_size=15
"turn off buffergator keymaps
let g:buffergator_suppress_keymaps=1

"vim-airline customization
let g:airline#extensions#tabline#enabled = 1

autocmd BufWritePre <buffer> :%s/\s\+$//e

"paredit
let g:paredit_mode=0

"plugins used ls -l | awk '{print $9}'
""
"ag.vim
""ctrlp.vim
"nerdtree
""syntastic
"vim-airline
""vim-buffergator
"vim-rails
""vim-rspec
"vim-ruby
