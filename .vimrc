set nomodeline                " Security
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'

" Powerline plugin
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Vim-Airline plugin
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" CtrlP Plugin
Plugin 'ctrlpvim/ctrlp.vim'

" NERDTree Plugin
Plugin 'scrooloose/nerdtree'

" NERDCommenter
Plugin 'scrooloose/nerdcommenter'

" vim-terminal Plugin
Plugin 'tc50cal/vim-terminal'

" BufferBye Plugin
Plugin 'moll/vim-bbye'

" Markdown viewer
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'

" JS and JSX plugin
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" Ale Plugin
Plugin 'w0rp/ale'

" YouCompleteMe Plugin
Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

" VimLexical Plugin
Plugin 'reedes/vim-lexical'

" LanguageTool
Plugin 'dpelle/vim-LanguageTool'

" VimCheatSheet Plugin
Plugin 'lifepillar/vim-cheat40'

"VimCodeQuery
Plugin 'devjoe/vim-codequery'

"VimEnhancedResolver
Plugin 'davidosomething/vim-enhanced-resolver', { 'do': 'npm install --global enhanced-resolve-cli' }

" CtrlSF
Plugin 'dyng/ctrlsf.vim'

" GitGutter
Plugin 'airblade/vim-gitgutter'

" TabNine
Plugin 'zxqfl/tabnine-vim'

" Dart highlighter
Plugin 'dart-lang/dart-vim-plugin'

" " LanguageClient
" Plugin 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }

" All of your Plugins must be added before the following line
call vundle#end()            " required

inoremap kj <ESC>
cnoremap kj <C-C>

" Folding 
filetype plugin indent on
set foldmethod=indent
nnoremap <space> za 
nnoremap <S-space> zM 
syntax on

" Show linenumbers
set number
set ruler

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Powerline config
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" Vim Airline configs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:airline#extensions#syntastic#enabled = 1
set laststatus=2
set backspace=indent,eol,start
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
:nnoremap <C-X> :Bdelete<CR>


" NERDTree config
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

" NERDCommenter configs
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" CtrlP config
let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore='\v[\/](.git|hg|svn|node_modules|dist)$'
nnoremap <C-b> :CtrlPBuffer <CR>

" Show current line 
:se cursorline

" Merge clipboard
set clipboard=unnamed

" Ale config
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 1 " Less distracting when opening a new file
let g:ale_fix_on_save = 1
let g:ale_fixers = { 'javascript': ['eslint'] }

" YouCompleteMe config
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" BufferTab 
set hidden

" LanguageTool config
let g:languagetool_jar='$HOME/.vim/bundle/vim-LanguageTool/LanguageTool-4.2/languagetool-commandline.jar'

"highligh search enabled by default
set hlsearch
"now you can toggle it
nnoremap <S-F11> <ESC>:set hls! hls?<cr>
inoremap <S-F11> <C-o>:set hls! hls?<cr>
vnoremap <S-F11> <ESC>:set hls! hls?<cr> <bar> gv
set mouse=a     "Enables mouse click
nnoremap <silent> <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>
fun! CountWordFunction()
    try
        let l:win_view = winsaveview()
        let l:old_query = getreg('/')
        let var = expand("<cword>")
        exec "%s/" . var . "//gn"
    finally
        call winrestview(l:win_view)
        call setreg('/', l:old_query)
    endtry
endfun
" Bellow we set a command "CountWord" and a mapping to count word
" change as you like it
command! -nargs=0 CountWord :call CountWordFunction()
nnoremap <f3> :CountWord<CR>
nnoremap <silent> <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>:CountWord<cr>

" VimEnhancedResolver config
autocmd FileType javascript nmap <buffer> gf <Plug>(enhanced-resolver-go-cursor)
autocmd FileType javascript.jsx nmap <buffer> gf <Plug>(enhanced-resolver-go-cursor)

" Set swap, undo and backup directories
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Enable tab menu for e command
set wildmenu
set wildmode=full

" " Required for operations modifying multiple buffers like rename.
" set hidden
"
" let g:LanguageClient_serverCommands = {
"     \ 'javascript': ['/Users/morteza/Projects/javascript-typescript-langserver/lib/language-server.js'],
"     \ 'javascript.jsx': ['js-langserver', '--stdio'],
"     \ }

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" " Or map each action separately
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
