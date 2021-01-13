filetype plugin indent on

" Syntax highlighting
syntax enable

" Default encoding for all files
set encoding=utf-8

" Don't be compatible with `vim`
set nocompatible

" Show current line, while other are relative
set number relativenumber

" Tab settings
set tabstop=4
set shiftwidth=4
set expandtab

" Yank to clipboard
set clipboard=unnamedplus

" Install `vim-plug` if not installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
                 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Set path to Python
let g:python_host_prog = '/usr/bin/python2.7'
let g:python3_host_prog = '/Users/lev/.pyenv/shims/python'

call plug#begin('~/.local/share/nvim/site/bundle')

    " Interface
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'yuttie/comfortable-motion.vim'
    Plug 'tyrannicaltoucan/vim-deep-space'

    " Hightlight yanked lines
    Plug 'machakann/vim-highlightedyank'

    " Git tools
    Plug 'tpope/vim-fugitive'
    Plug 'tveskag/nvim-blame-line'

    " Navigation
    Plug 'preservim/nerdtree'
    Plug 'easymotion/vim-easymotion'
    Plug 'airblade/vim-rooter'

    " Whitespaces
    Plug 'ntpeters/vim-better-whitespace'

    " Programming languages completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " C++
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'cdelledonne/vim-cmake'

    " Markdown
    Plug 'plasticboy/vim-markdown'

    " LaTeX
    Plug 'lervag/vimtex'
    Plug 'sirver/ultisnips'

call plug#end()

let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:Powerline_symbols="unicode"
let g:airline#extensions#xkblayout#enabled = 0

" Theme settings
set background=dark
set termguicolors
colorscheme deep-space
let g:airline_theme='deep_space'

" Whitespaces
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" Git Blame Line
autocmd BufEnter * EnableBlameLine
let g:blameLineVirtualTextPrefix = '// '

" LaTeX
let g:tex_flavor='latex'
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_quickfix_mode=0
let g:vimtex_format_enabled=1
let g:vimtex_view_method='skim'

set conceallevel=1
let g:tex_conceal='abdmg'
highlight Conceal guifg=#9DA7BB guibg=#1C2029

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

