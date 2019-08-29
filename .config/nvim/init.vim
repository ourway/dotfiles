" Plugs
call plug#begin('~/.vim/plugged')
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'romainl/Apprentice'
Plug 'nathanaelkane/vim-indent-guides'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ap/vim-buftabline'
call plug#end()

" sets 
set hidden
" config
let g:mix_format_on_save = 1

inoremap jj <Esc>
noremap ,e :Files<CR>

nnoremap <C-N> :bnext<CR>
nnoremap <TAB> :bnext<CR>
nnoremap <C-P> :bprev<CR>


" colors
set background=dark
set termguicolors
colorscheme apprentice
