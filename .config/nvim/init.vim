filetype plugin indent on

syntax enable

set encoding=utf-8

set nocompatible

set number relativenumber

set tabstop=4
set shiftwidth=4
set expandtab

" Install `vim-plug` if not installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
                 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/site/bundle')

    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'yuttie/comfortable-motion.vim'

    " Git tools
    Plug 'tpope/vim-fugitive'
    Plug 'tveskag/nvim-blame-line'

    " NERD Tree
    Plug 'preservim/nerdtree'

    " Whitespaces
    Plug 'ntpeters/vim-better-whitespace'

    " C++ autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jackguo380/vim-lsp-cxx-highlight'

call plug#end()

let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:Powerline_symbols="unicode"
let g:airline#extensions#xkblayout#enabled = 0

" Whitespaces
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" Git Blame Line
autocmd BufEnter * EnableBlameLine
let g:blameLineVirtualTextPrefix = '// '

