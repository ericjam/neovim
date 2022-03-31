call plug#begin('~/.local/share/nvim/plugged')

"REPL Utility
"Plug 'hkupty/iron.nvim'
Plug 'hkupty/iron.nvim', {'branch': 'legacy'}
"Plug 'hkupty/iron.nvim', { 'branch': 'direct-invoke' }

"Python virtualenv
Plug 'plytophogy/vim-virtualenv'

"ALE - linter
"Plug 'w0rp/ale'

"WakaTime
"Plug 'wakatime/vim-wakatime'

" Nice Status Bar
"Plug 'vim-airline/vim-airline'
"Plug 'powerline/powerline'
Plug 'itchyny/lightline.vim'

" Color Schemes
Plug 'flazz/vim-colorschemes'
"Plug 'sheerun/vim-wombat-scheme'
Plug 'Heorhiy/VisualStudioDark.vim'

"Nerd Commenter Tool
Plug 'scrooloose/nerdcommenter'

"Asynchronously run programs
Plug 'neomake/neomake'

"Syntax Checking
"Plug 'vim-syntastic/syntastic'

"Tag Management
"Plug 'ludovicchabant/vim-gutentags'

"Auto Complete Brackets and such
"Plug 'Townk/vim-autoclose'

"Fuzzy Incsearch
Plug 'haya14busa/incsearch.vim'

" SQL Editor
Plug 'vim-scripts/dbext.vim'
"Plug 'krisajenkins/vim-pipe'

"Code Completer
Plug 'ajh17/VimCompletesMe'

"Pandoc
"https://wbthomason.github.io/blog/post/academic-vim/
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc-after'

"LaTex
Plug 'lervag/vimtex'

"Focus Plugins
Plug 'junegunn/goyo.vim'        "Hides unnecessarcy parts of vim
Plug 'junegunn/limelight.vim'   "Focus on current paragraph

"Editing Plugins
Plug 'rhysd/vim-grammarous'     "Check for grammer errors
Plug 'dbmrq/vim-ditto'          "Avoid using the same words
Plug 'reedes/vim-wordy'         "Check for weak words

Plug 'vimwiki/vimwiki'

call plug#end()

" ESC Alternatives
inoremap jk <Esc>`^

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set clipboard=unnamed   " Paste from system clipboard
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.
set expandtab           " Insert spaces when TAB is pressed.
set nostartofline       " Keep Column Location When using G or gg

filetype plugin indent on "Set suitable indents based on filetype

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

" incsearch settings
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

"Colorscheme
colorscheme molokai

"hide file that has unsaved changes when opening new file
set hidden

"Spell Check
set spelllang=en
set spellfile=$HOME/.config/nvim/spell/en.utf-8.add
setlocal spell


" Terminal Settings
let g:terminal_scrollback_buffer_size = 100000
"noremap <C-d> :q<CR> " make vim behave a bit more like a terminal
"autocmd TermClose * bd!|q " quit when a terminal closes instead of showing exit code and waiting
"tnoremap <C-x> <C-\><C-n> " handy binding to get into normal mode from a terminal
tnoremap ≈ <C-\><C-n> " handy binding to get into normal mode from a terminal
tnoremap ç <C-\><C-n> " handy binding to get into normal mode from a terminal
"enter and leave terminal mode (insert mode) when switching between buffers
"autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

augroup filetype_python
    autocmd!
    autocmd FileType python set nospell
    autocmd Filetype python nmap \lr :IronRepl<CR>
    autocmd Filetype python nmap \t <Plug>(iron-send-motion)
    autocmd Filetype python vmap \t <Plug>(iron-send-motion)
    "autocmd FileType python nmap <localleader>t    <Plug>(iron-send-motion)
    "autocmd FileType python vmap <localleader>v    <Plug>(iron-visual-send)
    "autocmd FileType python nmap <localleader>r    <Plug>(iron-repeat-cmd)
    "autocmd FileType python nmap <localleader>l    <Plug>(iron-send-line)
    "autocmd FileType python nmap <localleader><CR> <Plug>(iron-cr)
    "autocmd FileType python nmap <localleader>i    <Plug>(iron-interrupt)
    "autocmd FileType python nmap <localleader>q    <Plug>(iron-exit)
    "autocmd FileType python nmap <localleader>c    <Plug>(iron-clear)
augroup END


