set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off
syntax on


"
" Plugs
call plug#begin('~/.vim/plugged')
Plug 'elixir-editors/vim-elixir'
Plug 'tomasr/molokai'
Plug 'mhinz/vim-mix-format'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'nathanaelkane/vim-indent-guides'
Plug '/usr/local/opt/fzf'
Plug 'hashivim/vim-terraform'
Plug 'davidhalter/jedi-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'skywind3000/asyncrun.vim'
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'ap/vim-buftabline'
Plug 'psf/black', { 'tag': '19.10b0' }
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()


" sets 
set shell=/bin/zsh
set hidden
set ttyfast
set relativenumber

set noswapfile
set exrc
"set secure
set noerrorbells
"set clipboard+=unnamedplus
set wildmode=longest:full,full
set timeout
set ttimeout
set timeoutlen=300
set ttimeoutlen=0
set noundofile
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set fileformat=unix
nnoremap j gj
nnoremap k gk

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search




let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" config
let g:mix_format_on_save = 1
let g:jsx_ext_required = 1

let mapleader = ","
inoremap <silent> jj <ESC>
noremap ,e :Files <CR>

tnoremap <Esc><Esc> <C-\><C-n>

if exists(':terminal')
  let g:terminal_color    = 'xterm'
  " allow terminal buffer size to be very large
  let g:terminal_scrollback_buffer_size = 100000
endif


nnoremap <silent> ,n :call ToggleRelativeNumber()<CR>
function! ToggleRelativeNumber()
  if(&relativenumber == 1) && (&number == 1)
    set nonumber
    set norelativenumber
  elseif(&number == 1)
    set number
    set relativenumber
  else
    set norelativenumber
    set number
  endif
endfunc


nnoremap <C-N> :bnext<CR>
nnoremap <TAB> :bnext<CR>
nnoremap <C-P> :bprev<CR>

let g:prettier#autoformat = 1


" colors
set background=dark
"set termguicolors
colorscheme molokai


autocmd BufWritePre *.py execute ':Black'
            "let g:black_linelength = 99
nnoremap ,f :Black<CR>

let g:deoplete#enable_at_startup = 1
let g:jedi#completions_enabled = 0
let g:jedi#use_tabs_not_buffers = 1
autocmd FileType python setlocal completeopt-=preview

let g:python3_host_prog = '/Users/farshid.ashouri/.config/nvim_env/bin/python'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
