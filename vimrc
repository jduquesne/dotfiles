" vimrc @jduquesne
" inspirations: http://vim.wikia.com/wiki/Example_vimrc and
" github.com/corteztk

filetype plugin on              " determine the file type based on its name
filetype indent plugin on       " determine the file type based on its content
syntax on                       " enable syntax highlighting

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'
call plug#end()

set nocompatible                " ward off unexpected things distro related
set fileencoding=utf-8          " the encoding written to file
set hlsearch                    " highlight searches
set incsearch                   " show match as seach proceeds
set ignorecase                  " use case insensitive search
set smartcase                   " except when using capital letters
set ruler                       " display the cursor position in the status linew
set wildmenu                    " command-line completion
set wildmode=longest,list,full  " better command-line completion
set showcmd                     " show the commands
set number                      " display line numbers
set ofu=syntaxcomplete#Complete " smart auto-completion for programs
set nolist                      " don't show invisible characters
set listchars=tab:>-,eol:¶      " highlight unwanted space (tax and eol)
set autoindent                  " keep the same indent as the line we're currently on
set smartindent                 " does the right thing (mostly) in programs
set tabstop=2                   " size of a hard tabstop
set shiftwidth=2                " size of an 'indent'
set expandtab                   " always use spaces instead of tab characters
set nowrap                      " to display long lines as one line
set backspace=indent,eol,start  " allow backspacing over indent, line-breaks and insert start
set laststatus=2                " always display the status line

setlocal spell spelllang=en_gb  " set spell-checking language
set nospell                     " turn spell-checking off until called

set background=dark
colorscheme solarized

let NERDTreeQuitOnOpen=1

" <Ctrl-l> redraws the screen and removes any search highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>
