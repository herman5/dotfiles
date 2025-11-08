" Basic settings for simplicity
set nocompatible              " Be iMproved, required for modern Vim
filetype plugin indent on     " Enable filetype plugins and indentation
syntax enable                 " Enable syntax highlighting

" Display settings
colorscheme habamax           " Color scheme
set number                    " Show line numbers
set cursorline                " Highlight current line
set showmatch                 " Highlight matching brackets
set ruler                     " Show cursor position

" Search settings
set hlsearch                  " Highlight search results
set incsearch                 " Incremental search
set ignorecase                " Ignore case in search
set smartcase                 " Override ignorecase if search has uppercase

" Indentation and tabs
set expandtab                 " Use spaces instead of tabs
set shiftwidth=4              " Number of spaces for indent
set tabstop=4                 " Number of spaces per tab
set softtabstop=4             " Number of spaces in tab when editing
set autoindent                " Auto indent new lines
set smartindent               " Smart autoindenting

" Other pragmatic settings
set hidden                    " Allow switching buffers without saving
set wildmenu                  " Enhanced command-line completion
set backspace=indent,eol,start " Backspace over everything in insert mode
set encoding=utf-8            " Set encoding to UTF-8

" No backups or swaps for simplicity
set nobackup
set nowritebackup
set noswapfile

