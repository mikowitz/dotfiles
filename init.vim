" comma leader
let mapleader=","
map <leader> <Plug>(easymotion-prefix)

syntax enable		" enable syntax processing
syntax on

set tabstop=2		" number of visual spaces per TAB
set softtabstop=2	" number of spaces in TAB when editing
set smarttab
set shiftwidth=2    " number of spaces to use with (auto)indent commands
set expandtab		" TABs are spaces

filetype indent on  " load filetype-specific indent files
filetype plugin on

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" faster pane navigation
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" up/down navigation with wrapped lines
nnoremap j gj
nnoremap k gk

" not vi compatible
set nocompatible
set encoding=utf-8

set cursorline
set cursorcolumn

" use OS clipboard
set clipboard=unnamedplus

" faster regular expression engine
set re=1

" relative line numbers
set number
set relativenumber
set numberwidth=3   " line number gutter width
set showcmd         " show command in bottom bar

" open new panes to the right and below of current
set splitright
set splitbelow

" interactive search
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set ignorecase
set smartcase

" faster escape
inoremap jk <esc>

" no updates
set updatecount=0
set nobackup
set nowritebackup

set backspace=indent,eol,start

if has('nvim')
  " Live highlight of interactive commands like substitute
  set inccommand=nosplit
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-h> <C-\><C-n><C-w>h
  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k
  tnoremap <C-l> <C-\><C-n><C-w>l
endif

" Edit ~/.vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Source ~/vimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>

" plugin management
call plug#begin('~/.config/nvim/plugged')

Plug 'ostera/vimux'
let g:VimuxOrientation = "h"
let g:VimuxHeight = 30
Plug 'spiegela/vimix'
let g:vimix_map_keys = 1

Plug 'tpope/vim-projectionist'

Plug 'metakirby5/codi.vim'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'aliou/sql-heredoc.vim'

Plug 'HiPhish/repl.nvim'

" Plug 'rust-lang/rust.vim'

" Plug 'roxma/nvim-yarp'
" Plug 'ncm2/ncm2'

" Plug 'JuliaEditorSupport/julia-vim'

" Plug 'keith/swift.vim'

" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]


" Plug 'kassio/neoterm'

" Plug 'chr4/nginx.vim'

" Plug 'junegunn/vader.vim'
" Plug 'Kuniwak/vint'

" Plug 'JamshedVesuna/vim-markdown-preview'

" Plug 'ElmCast/elm-vim'

" Plug 'shime/vim-livedown'

" Plug 'hashivim/vim-terraform'

Plug 'sheerun/vim-polyglot'

Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'

Plug 'alvan/vim-closetag'

Plug 'mileszs/ack.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Preferred colorscheme
Plug 'NLKNguyen/papercolor-theme'
Plug 'arcticicestudio/nord-vim'
let g:sonokai_style = 'andromeda'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/forest-night'
Plug 'cocopon/iceberg.vim'

Plug 'tpope/vim-characterize'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

Plug 'easymotion/vim-easymotion'
" Plug 'haya14busa/incsearch.vim'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Plug 'troydm/zoomwintab.vim'

Plug 'janko-m/vim-test'

Plug 'ervandew/supertab'

Plug 'majutsushi/tagbar'

call plug#end()

set hidden

" let g:LanguageClient_autoStart = 1
" let g:LanguageClient_serverCommands = {
"   \ 'typescript': ['javascript-typescript-stdio'],
"   \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
"   \ }
"       " \ 'elixir': ['~/Downloads/elixir-ls/language_server.sh'],

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
nnoremap <C-n> :NERDTreeFind<cr>
nnoremap - :NERDTreeFind<cr>
nnoremap <leader>t :NERDTreeToggle<cr>

" " clear trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

nnoremap <C-f> :Files<cr>
nnoremap <C-b> :Buffers<cr>

map  <leader>f <Plug>(easymotion-bd-f)
nmap <leader>f <Plug>(easymotion-overwin-f)
nmap <leader>l <Plug>(easymotion-overwin-line)
map  <leader>w <Plug>(easymotion-bd-w)
nmap <leader>w <Plug>(easymotion-overwin-w)

let g:EasyMotion_keys='aoeusnth'

" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)

" let g:incsearch#auto_nohlsearch = 1
" map n  <Plug>(incsearch-nohl-n)
" map N  <Plug>(incsearch-nohl-N)


let g:NERDTreeIgnore = ['\.out$', '\.pyc$', '__pycache__']
" let g:NERDTreeIndicatorMapCustom = {
"     \ "Modified"  : "✹",
"     \ "Staged"    : "✚",
"     \ "Untracked" : "✭",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "✗",
"     \ "Clean"     : "✔︎",
"     \ 'Ignored'   : '☒',
"     \ "Unknown"   : "?"
"     \ }
" let g:NERDTreeShowIgnoredStatus = 1

let g:airline_theme='iceberg'
let g:airline_powerline_fonts = 1

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
if executable('ag')
  let g:ackprg = 'noglob ag --vimgrep --ignore=*.tfstate'
endif

nnoremap <leader>tf :TestFile<cr>
nnoremap <leader>ts :TestSuite<cr>
nnoremap <leader>tl :TestLast<cr>
nnoremap <leader>tn :TestNearest<cr>

au Bufnewfile,bufRead *.ly,*.lyi,*.ily set filetype=lilypond
autocmd FileType lilypond setlocal commentstring=%\ %s

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.eex,*.leex'
let g:closetag_filetypes = 'html,xhtml,phtml,eelixir'

au Bufnewfile,BufRead *.leex set filetype=eelixir
au Bufnewfile,BufRead *.prisma set filetype=graphql
au Bufnewfile,bufRead Tiltfile,Tiltfile.* set filetype=python
" autocmd BufRead,BufNewFile *.md,*.markdown setlocal spell

nmap <C-p> <Plug>MarkdownPreview

colorscheme iceberg
set background=dark


" hi CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
" hi CursorLine ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold

if exists('+termguicolors')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  let &t_8f = "\<Esc>[38;2%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2%lu;%lu;%lum"
  set termguicolors
endif

set colorcolumn=80
hi ColorColumn guibg=#d0d0d0

hi InactiveWindow guibg=#181818
hi ActiveWindow guibg=#000000

function! Handle_Win_Enter()
  setlocal winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
endfunction

augroup WindowManagement
  autocmd!
  autocmd BufEnter,WinEnter * call Handle_Win_Enter()
augroup END

