
" Helps force plugins to load correctly when it is turned back on below
filetype off
syntax on


"
" Plugs
call plug#begin('~/.vim/plugged')
Plug 'elixir-editors/vim-elixir'
"Plug 'tomasr/molokai'
Plug 'yorickpeterse/happy_hacking.vim'
Plug 'mhinz/vim-mix-format'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'fisadev/vim-isort'
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-fugitive'
Plug '/usr/local/opt/fzf'
Plug 'hashivim/vim-terraform'
Plug 'davidhalter/jedi-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'skywind3000/asyncrun.vim'
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'ap/vim-buftabline'
Plug 'lifepillar/vim-gruvbox8'
Plug 'vim-python/python-syntax'
Plug 'kshenoy/vim-signature'
Plug 'psf/black', { 'tag': '19.10b0' }
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()


" sets 
set shell=/bin/zsh
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
filetype indent on
set modeline

set nocompatible
set hidden
set ttyfast
set relativenumber
set number
set colorcolumn=99
highlight ColorColumn ctermbg=5
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
set undofile
set expandtab
set autoindent
set fileformat=unix
set listchars=eol:¬,tab:▷\ ,
set indentkeys=o,O
set shiftround
set showbreak=
set breakindent
set display=lastline,uhex
set virtualedit=onemore
set fillchars=vert:\ ,fold:-,diff:·     " Spaces are enough for vertical split separators.
set diffopt=filler,foldcolumn:0,vertical  " Show lines where missing, no need for a foldcolumn during diff, split vertically by default
set timeoutlen=1000 ttimeoutlen=50      " Set timeouts so that terminals act briskly.
if exists("+mouse")
    set mouse=a                         " Mice are wonderful.
endif
if exists("+cursorline")
    augroup CursorLine
        autocmd!
        autocmd InsertEnter * set cursorline
        autocmd InsertLeave * set nocursorline
    augroup end
endif

set updatetime=2000
autocmd CursorHoldI * call feedkeys("\<C-G>u", "nt")
nnoremap j gj
nnoremap k gk

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set smarttab
set showmatch
map <leader><space> :let @/=''<cr> " clear search




let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" config
let g:mix_format_on_save = 1
let g:jsx_ext_required = 0

let mapleader = ","
inoremap <silent> jj <ESC>:w<CR>
noremap ,e :Files <CR>


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
"set termguicolors
set t_Co=256
set background=dark
colorscheme gruvbox8


autocmd BufWritePre *.py execute ':Black'
let g:black_linelength = 99
nnoremap ,f :Black<CR>

let g:deoplete#enable_at_startup = 1
let g:jedi#completions_enabled = 0
let g:jedi#use_tabs_not_buffers = 1
autocmd FileType python setlocal completeopt-=preview
autocmd FileType *.go execute ':!go fmt %'

let g:python3_host_prog = '/Users/rodmena/.config/nvim_env/bin/python'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
set guicursor=i:blinkwait700-blinkon400-blinkoff250

tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"

if has("nvim")
  au TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
  au FileType fzf tunmap <buffer> <Esc>
endif

let g:rg_command = 'rg --vimgrep -S'

nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:python_highlight_all = 1
hi Visual term=reverse cterm=reverse guibg=Grey

highlight Comment ctermfg=grey

set wildignore=*.pyc,*.o,*.obj,*.pyd
let g:netrw_list_hide= '.*\.pyc$'
let g:vim_isort_config_overrides = {
  \ 'include_trailing_comma': 1, 'multi_line_output': 3, 'intent': '    ', 'line_length': 99}
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-n> :NERDTreeToggle<CR>

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let g:SignatureIncludeMarks = 'abcdefghijklmnopqrstuvwxyz'
let g:SignatureMarkerLineHL = 'SignatureMarkLine'

let g:python_highlight_class_vars = 1
let g:python_highlight_string_formatting = 1
let g:python_highlight_string_format = 1
let g:python_highlight_string_templates = 1
let g:python_highlight_indent_errors = 1
let g:python_highlight_space_errors = 0
let g:python_highlight_doctests = 1
