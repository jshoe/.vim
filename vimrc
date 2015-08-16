set nocompatible " compatibility
filetype indent plugin on " intelligent auto-indenting
syntax on " enable syntax highlighting
set hidden " buffer switching and persistent undos
set wildmenu " better command-line completion
set showcmd " show partial commands on last screen line
set hlsearch " highlight search results
set incsearch " highlights as you type
set ignorecase " use case insensitive search
set smartcase " except when using capital letters
set backspace=indent,eol,start " allow backspace over indents, line breaks, inserts
set autoindent " determine indentation from current file
set nostartofline " don't always go to start of line
set ruler " display cursor position in status bar
set laststatus=2 " keep status displayed
set confirm " raise unsaved changes confirmation
set visualbell " use visual bell instead of beeping
set t_vb= " reset terminal code for visual bell; disables if visualbell is set
set mouse=a " enable mouse in all modes
set cmdheight=1 " set command window height to 1 line
set number " display line numbers on the left
set notimeout ttimeout ttimeoutlen=200 " time out keycodes but not mappings
set pastetoggle=<F11> " use F11 to toggle paste and nopaste
set shiftwidth=2 " use width of 2 for indents
set softtabstop=2 " use 2 spaces instead of tabs for indents
set expandtab

" Map Y to yank until EOL
map Y y$

" Map <C-L> (redraw screen) to also turn off current search highlights
nnoremap <C-L> :nohl<CR><C-L>

" set t_Co=256 " use 256 colors

" enable pathogen
execute pathogen#infect()

set statusline+=%#warningmsg# " enable warning messages
set statusline+=%{fugitive#statusline()} " enable fugitive
set statusline+=%{SyntasticStatuslineFlag()} " enable Syntastic
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1 " check syntax on open
let g:syntastic_check_on_wq = 0 " don't check syntax on wq

let g:Powerline_symbols = 'fancy' " fancy powerline symbols

:set colorcolumn=80 " set columnbar at 80
" set relativenumber " show relative line numbers
set number " show line numbers
set wrap " wrap window lines
let g:syntastic_python_python_exec = '/usr/local/Cellar/python3/3.4.1/bin'
" let g:niji_matching_filetypes = ['lisp', 'ruby', 'python', 'C'] " rainbow ()s
syntax enable " show syntax highlighting
set background=dark " use dark background for solarized
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors = 256
colorscheme solarized " use solarized color scheme

:set wrap linebreak nolist " window soft wrap
let g:airline_powerline_fonts=1
set guifont=Inconsolata\ for\ Powerline:h18

set whichwrap+=<,>,[,] " allow moving arrow keys over line endings to next line

" let g:airline_powerline_fonts = 1
set mouse=a

" toggle the Tagbar window in normal mode
nmap <F8> :TagbarToggle<CR>

let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_width = 30

" <SHIFT-R> toggles relative line numbers in normal mode
nmap <S-R> :set invrnu<CR>

" <CTRL-H> deletes previous words in insert mode
imap <C-H> <C-[>diwi

" Don't autosave and autoload sessions through vim-sessions
let g:session_autosave = 'no'
let g:session_autoload = 'no'

" Save session and save and close all files with \q
" nnoremap <leader>q :mksession! ~/.vim/Session.vim<CR>:wqa<CR>

" Save session and close all files without saving with \www
" nnoremap <leader>www :mksession! ~/.vim/Session.vim<CR>:qa!<CR>

" Auto-restore all sessions from Session.vim if vim called without arguments
" function! RestoreSession()
"  if argc() == 0 "vim called without arguments
"    execute 'source ~/.vim/Session.vim'
"  end
" endfunction
" autocmd VimEnter * call RestoreSession()
"
map <silent> <Up> gk
imap <silent> <Up> <C-o>gk
map <silent> <Down> gj
imap <silent> <Down> <C-o>gj

filetype plugin on
set omnifunc=syntaxcomplete#Complete

set clipboard=unnamed
