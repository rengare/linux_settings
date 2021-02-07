filetype plugin indent on
syntax on

set clipboard=unnamedplus
set runtimepath+=~/.vim
set runtimepath+=~/.vim/bundle/ctrlp.vim
set tabstop=2
set softtabstop=2
set shiftwidth=2
set mouse=a
set number
set autoread
set encoding=UTF-8
au CursorHold * checktime  

call plug#begin('~/.vim/plugged')
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'rust-lang/rust.vim'
  Plug 'neoclide/coc.nvim'
  Plug 'tpope/vim-commentary'
  Plug 'honza/vim-snippets'
call plug#end()
 
let g:coc_force_debug = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:rustfmt_autosave = 1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nnoremap <silent> K :call <SID>show_documentation()<CR>

inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> J :call CocAction('showSignatureHelp')<CR>

vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR> 

nnoremap <C-D> <C-S-D>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> <A-l> :tabn<CR>
nnoremap <silent> <A-h> :tabp<CR>
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <A-n> :tabnew<CR>
nnoremap <silent> <A-q> :q<CR>
nnoremap <silent> <A-e> :Texplore<CR>
nmap <C-_> gcc
vmap <C-_> gcc
hi CocFloating guibg=Normal guifg=#83a598
autocmd StdinReadPre * let s:std_in=1
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
