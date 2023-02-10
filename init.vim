set number
set relativenumber
set scrolloff=8

set expandtab
set autoindent
set softtabstop=4
set shiftwidth=2
set tabstop=4
set foldmethod=indent

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'Yggdroot/indentline'
Plug 'sheerun/vim-polyglot'
Plug 'Chiel92/vim-autoformat'
call plug#end()




"Enable mouse click for nvim
set mouse=a
"Fix cursor replacement after closing nvim
"set guicursor=
"Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

"See invisible characters
set list listchars=tab:>\ ,trail:+,eol:$

"wrap to next line when end of line is reached
set whichwrap+=<,>,[,]

colorscheme koehler 
"for ayu colors
"set termguicolors     " enable true colors support
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu
"

"All plugens
let g:indentLine_color_gui = '#FF5F00'


let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
inoremap jk <esc>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"autoformat plugan
nnoremap <leader>af :Autoformat<CR>
