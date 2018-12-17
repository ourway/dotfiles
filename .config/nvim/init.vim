set nocompatible
filetype off                  " required

set tabstop=4

set backupcopy=yes
set expandtab
"set autowrite
set shiftwidth=4 " or whatever
set softtabstop=4
set scrolloff=3







set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch

set noswapfile
set exrc
set secure
set hlsearch
set nohls
"set mouse=a
set number " show line numbers in vim
set modelines=0

"set title
set showtabline=2
set encoding=utf-8
set winwidth=60
set winheight=20
set cmdheight=2
set history=100
"set lazyredraw
set shortmess=aI
set autoread
set cursorcolumn
"set report=0
"set synmaxcol=128
set noerrorbells    " silence those fucking bells
"syntax sync minlines=256
set guioptions-=T   " No toolbar

"set ttymouse=xterm
"
let mapleader = ","


"nnoremap <CR> :nohlsearch<CR>
inoremap jj <ESC>

"nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Tab> :tabnext<CR>

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
"
"
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'jpalardy/vim-slime'
"Plugin 'elixir-editors/vim-elixir'
"Plugin 'slashmili/alchemist.vim'
"Plugin 'fatih/vim-go'
Plugin 'sheerun/vim-polyglot'
"Plugin 'wincent/command-t'
Plugin 'Shougo/deoplete.nvim'

"Plugin 'rust-lang/rust.vim'

"Plugin 'airblade/vim-gitgutter'
"Plugin 'tpope/vim-commentary'
"Plugin 'skywind3000/asyncrun.vim'

"Plugin 'slashmili/alchemist.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'benmills/vimux'
"Plugin 'spiegela/vimix'
"Plugin 'tpope/vim-surround'
Plugin 'takac/vim-hardtime'
"Plugin 'fxn/vim-monochrome'
"Plugin 'w0rp/ale'
"Plugin 'morhetz/gruvbox'
"Plugin 'chriskempson/base16-vim'
"Plugin 'swaroopch/vim-markdown-preview'
"Plugin 'NLKNguyen/papercolor-theme'
Plugin 'drewtempelmeyer/palenight.vim'
"Plugin 'ervandew/supertab'



Plugin 'ervandew/screen'
"Plugin 'MarcWeber/vim-addon-local-vimrc'

"Plugin 'vim-airline/vim-airline'
"Plugin 'pangloss/vim-javascript'
"Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'mxw/vim-jsx'
Plugin 'maksimr/vim-jsbeautify'
"Plugin 'itchyny/lightline.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.



"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
"
"
".vimrc
"map <c-f> :call JsBeautify()<cr>
" or
"autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
"autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
"autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
"autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
"autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

              

"
"
"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:jsx_ext_required = 0
set wildignore+=*/tmp/*,*/doc/*,*/priv/*,*/build/*,*/.build/*,*.so,*/cover/*,*.swp,*.zip,*.log,*.dump,*/deps/*,*/__pycache__/*,*/node_modules/*,*/_build/*,*/.git/*,*.beam

nnoremap <F5> :set invpaste paste?<Enter>
nmap <F6> :NERDTreeToggle<CR>
imap <F5> <C-O><F5>
set pastetoggle=<F5>


"set termguicolors

set t_Co=256   " This is may or may not needed.

set background=dark
"colorscheme PaperColor
colorscheme palenight

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif


let g:vimix_map_keys = 1
syntax on
highlight Comment ctermfg=green

let g:hardtime_default_on = 1
let g:hardtime_timeout = 200
let g:hardtime_ignore_buffer_patterns = [ "CustomPatt[ae]rn", "NERD.*" ]
let g:rust_clip_command = 'xclip -selection clipboard'


highlight Cursor guifg=red guibg=black
highlight iCursor guifg=red guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
let g:deoplete#enable_at_startup = 1
let g:slime_target = "tmux"
let g:palenight_terminal_italics=1

