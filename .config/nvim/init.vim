filetype plugin indent on

" Syntax highlighting
syntax enable

" Do not prompt to save on buffer switch
set hidden

" Default encoding for all files
set encoding=utf-8

" Do not be compatible with `vi`
set nocompatible

" Show current line, while others are relative
set number relativenumber

" Tab settings
set tabstop=4
set shiftwidth=4
set expandtab

" Yank to clipboard
set clipboard=unnamedplus

" Set path to Python
let g:python_host_prog = '/usr/bin/python2.7'
let g:python3_host_prog = '/Users/lev/.pyenv/shims/python'

call plug#begin('~/.local/share/nvim/site/bundle')
    " Interface
    Plug 'itchyny/lightline.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'yuttie/comfortable-motion.vim'
    Plug 'tyrannicaltoucan/vim-deep-space'

    " Hightlight yanked lines
    Plug 'machakann/vim-highlightedyank'

    " Git tools
    Plug 'tpope/vim-fugitive'

    " Navigation
    Plug 'preservim/nerdtree'
    Plug 'easymotion/vim-easymotion'
    Plug 'airblade/vim-rooter'

    " Whitespaces
    Plug 'ntpeters/vim-better-whitespace'

    " Programming languages completion
    Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

    " C++
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'cdelledonne/vim-cmake'

    " Markdown
    Plug 'plasticboy/vim-markdown'

    " LaTeX
    Plug 'lervag/vimtex'
    Plug 'sirver/ultisnips'
call plug#end()

" lightline
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" Theme settings
set background=dark
set termguicolors
colorscheme deep-space

" Whitespaces
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" LaTeX
let g:tex_flavor='latex'
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_quickfix_mode=0
let g:vimtex_format_enabled=1
let g:vimtex_view_method='skim'

set conceallevel=1
let g:tex_conceal='abdmg'
highlight Conceal guifg=#9DA7BB guibg=#1C2029

" Snippets
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Language Server
" Formatting
command! -nargs=0 Format :call CocAction('format')
" Go to code navigation
nmap <silent> gd <Plug>(coc-definition)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

