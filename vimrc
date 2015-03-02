execute pathogen#infect()
filetype off

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

" window navigation
nnoremap a <c-w>
nnoremap aa <c-w><c-w>

" customizations for ctrl p
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" nerdtree 
let g:NERDTreeWinSize=15
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
noremap ;ne NERDTreeToggle

"Switch between buffers
nmap <Tab> :bnext <CR>
nmap <S-Tab> :bprev <CR>
"
"" Buffergator settings
noremap <Leader>b :BuffergatorToggle<CR>

"close the buffer
noremap <Leader>c :bunload<CR>
noremap <Leader>C :bdelete<CR>
let g:buffergator_viewport_split_policy = "T"   " Split horizontal at top for
"buffers
let g:buffergator_sort_regime="filepath"
let g:buffergator_split_size=15
"turn off buffergator keymaps
let g:buffergator_suppress_keymaps=1

"vim-airline customization
let g:airline#extensions#tabline#enabled = 1
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
