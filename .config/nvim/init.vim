" Plugs
call plug#begin('~/.vim/plugged')
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'flrnprz/plastic.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'nathanaelkane/vim-indent-guides'
Plug '/usr/local/opt/fzf'
Plug 'skywind3000/asyncrun.vim'
Plug 'junegunn/fzf.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Shougo/denite.nvim'
Plug 'ap/vim-buftabline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()


" sets 
set shell=/bin/zsh
set hidden
set noswapfile
set exrc
"set secure
set noerrorbells
set clipboard+=unnamedplus
set wildmode=longest:full,full
set timeout
set ttimeout
set timeoutlen=300
set ttimeoutlen=0
set undofile
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

let $NVIM_NODE_LOG_FILE='nvim-node.log'
let $NVIM_NODE_LOG_LEVEL='warn'
let g:deoplete#enable_at_startup = 1
let g:prettier#autoformat = 1


" colors
set background=dark
set termguicolors
colorscheme plastic
