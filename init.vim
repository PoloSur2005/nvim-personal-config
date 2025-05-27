syntax on
set sw=4
set mouse=a
set number
set rnu
set numberwidth=1
set nowrap
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=UTF-8
set showmatch
set cursorline
set termguicolors
set colorcolumn=80

call plug#begin()

" Visual
Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-treesitter/nvim-treesitter'

"LSP
Plug 'neovim/nvim-lspconfig'
Plug 'mfussenegger/nvim-jdtls'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}

call plug#end()


set background=dark
let g:gruvbox_contrast_dark="soft"
colorscheme gruvbox

" Configurar activadores de snippets (opcional)
let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'


" Configurar activadores de snippets en coc.nvim
autocmd FileType java imap <silent> <expr> <TAB>
      \ pumvisible() ? coc#_select_confirm()
      \   : coc#expandableOrJumpable() ? '<C-r>=coc#rpc#request("doKeymap", ["snippets-expand-jump"])<CR>'
      \   : "\<TAB>"

" Atajos de teclado para activar los snippet en html
autocmd FileType html imap <silent> <expr> <TAB>
      \ pumvisible() ? coc#_select_confirm()
      \   : coc#expandableOrJumpable() ? '<C-r>=coc#rpc#request("doKeymap", ["snippets-expand-jump"])<CR>'
      \   : "\<TAB>"


autocmd FileType python imap <silent> <expr> <TAB>
      \ pumvisible() ? coc#_select_confirm()
      \   : coc#expandableOrJumpable() ? '<C-r>=coc#rpc#request("doKeymap", ["snippets-expand-jump"])<CR>'
      \   : "\<TAB>"




