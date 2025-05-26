"Plugins
" ==========================================================================
""" Google plugin manager Glug 
source /usr/share/vim/google/google.vim

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'fholgado/minibufexpl.vim'
Plug 'zivyangll/git-blame.vim'
call plug#end()
" ==========================================================================

" General
" =========================================================================
syntax enable
filetype plugin indent on
" Set line numbering
set number
" Set indent size
set shiftwidth=4
" Set tab to 4 chars
set tabstop=4
" Set search highlighting
set hlsearch
" Make vim more vi compatible
set nocompatible
" ==========================================================================

" Colorscheme
" ==========================================================================
" For solarized
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
" ==========================================================================

" Custom behavior
" ==========================================================================
let mapleader = " "

" Disable line wrap and but not automatic insertion of newlines
set nowrap
set wrapmargin=0
set textwidth=78

" Enable mouse wheel
set mouse=a

" Bindings to set and unset the limit bar
nnoremap <silent> <leader>cc :set cc=81 <CR> " For C code edition
nnoremap <silent> <leader>cg :set cc=73 <CR> " For git commit message
nnoremap <silent> <leader>cx :set cc=0 <CR> " Clear limit bar

" Map redo to U
nnoremap U <C-R>

" Leaves insert mode
inoremap jk <Esc>

" Remove the search highlight
nnoremap <silent> <leader>; :noh<return>

" Bindings for splitting windows
nnoremap <silent> <leader>ss :split <CR>
nnoremap <silent> <leader>vs :vsplit <CR>

" Bindings to move between windows
nnoremap <silent> <leader>j <C-W><C-J>
nnoremap <silent> <leader>k <C-W><C-K>
nnoremap <silent> <leader>h <C-W><C-H>
nnoremap <silent> <leader>l <C-W><C-L>

" Bindings to move up/down page
nnoremap <silent> <leader>e <C-U>
nnoremap <silent> <leader>d <C-D>

" Bindings for jumplist
nnoremap <leader>, <C-O>
nnoremap <leader>. <C-I>

" Bindings to resize windows vertically
nnoremap = 2<C-W>>
nnoremap - 2<C-W><lt>
nnoremap + <C-W>=

"" Bindings for buffer management in normal mode
" Update the buffer
nnoremap <silent> <leader>o :up<CR>
" Update the buffer and suspend
nnoremap <silent> <leader>s :up<CR>:sus<CR>
" Update the buffer and quit
nnoremap <silent> <leader>x :up<CR>:q<CR>
" Quit buffer without saving
nnoremap <silent> <leader>q :q!<CR>
" Update the buffer and quit
nnoremap <silent> <leader>a :up<CR>:qa<CR>

"" Tab management bindings
" Next/previous tab gt/gT
" New tab
nnoremap <silent> gn :tabnew<CR>
" New tab from current split
nnoremap <silent> go :tabnew %<CR>
" Close tab
nnoremap <silent> gx :tabc<CR>

"" Plugin mappings
" YCM
Glug youcompleteme-google
nnoremap <leader>gI :YcmCompleter GoToImplementation<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

" FZF
noremap <leader>ff <cmd>Files .<cr>
nnoremap <leader>fg <cmd>Rg .<cr>
nnoremap <leader>fj <cmd>Jumps<cr>
nnoremap <leader>fG :Rg <C-R><C-W><cr>
let g:fzf_layout = { 'down': '~40%' }

" NerdTree
nnoremap <silent> <leader>t <ESC>:NERDTreeFocus<CR>
let NERDTreeMapCustomOpen='<Tab>'

" EasyMotion
nnoremap <silent> <leader><leader>y <Plug>(easymotion-bd-w)

" MiniBufferExplorer
nnoremap <silent> <leader>mf :MBEFocus<CR>
nnoremap <silent> <leader>mt :MBEToggle<CR>

" Git blame
nnoremap <Leader>b :<C-u>call gitblame#echo()<CR>
" ==========================================================================
" End of Mappings
