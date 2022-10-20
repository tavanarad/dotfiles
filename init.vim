set nocompatible              " be iMproved, required
filetype off                  " required

""" Vim-Plug
call plug#begin()

" The following are examples of different formats supported.
" Keep Plug commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'tpope/vim-rhubarb'

" Powerline plugin
" Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Vim-Airline plugin
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" CtrlP Plug
Plug 'ctrlpvim/ctrlp.vim'

" NERDTree Plug
Plug 'scrooloose/nerdtree'

" Vista.vim
Plug 'liuchengxu/vista.vim'

" NERDCommenter
Plug 'scrooloose/nerdcommenter'

" vim-terminal Plug
Plug 'tc50cal/vim-terminal'

" BufferBye Plug
Plug 'moll/vim-bbye'

" Markdown viewer
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

" JS and JSX plugin
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Ale Plug
Plug 'w0rp/ale'

" YouCompleteMe Plug
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

" VimLexical Plug
Plug 'reedes/vim-lexical'

" LanguageTool
Plug 'dpelle/vim-LanguageTool'

" VimCheatSheet Plug
Plug 'lifepillar/vim-cheat40'

" ACK vim
Plug 'mileszs/ack.vim'

" Sleuth
Plug 'tpope/vim-sleuth'

" Dart
Plug 'dart-lang/dart-vim-plugin'

" Coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" GitGutter
Plug 'airblade/vim-gitgutter'

Plug 'jmcantrell/vim-virtualenv'

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'alvan/vim-closetag'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'sheerun/vim-polyglot'
Plug 'chrisbra/Colorizer'
Plug 'KabbAmine/vCoolor.vim'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'vim-scripts/loremipsum'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'metakirby5/codi.vim'
Plug 'dkarter/bullets.vim'

" TypeScript plugins
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

" Show NERD icons
Plug 'ryanoasis/vim-devicons'

" Nvim Todo comments
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'

" DAP - Debug Adaptor
Plug 'mfussenegger/nvim-dap'

call plug#end()

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Map Esc
inoremap kj <Esc>
cnoremap kj <C-C>

" Folding
filetype plugin indent on
set foldmethod=indent
syntax on
set tags=tags

" Show linenumbers
set number
set ruler

" Set Proper Tabs
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

" Powerline config
" set guifont=Inconsolata\ Nerd\ Font:h15
" set guifont=DroidSansMono\ Nerd\ Font:h11
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
" set term=xterm-256color
set termencoding=utf-8
" Change the Pmenu background color
highlight Pmenu ctermbg=gray guibg=gray

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
" put this in your .vimrc
set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,__pycache__
" Nerdtree config for wildignore
let NERDTreeRespectWildIgnore=1

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
nnoremap <C-b> :CtrlPBuffer<cr>
nnoremap <C-p> :Files<cr>

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
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_cursor = 1
let g:ale_echo_msg_format = '[%linter%](%code%) : %s'
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

" Do not lint or fix minified files.
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\}
let g:ale_set_highlights = 1
let g:ale_set_loclist = 1

" BufferTab
set hidden


"highligh search enabled by default
set hlsearch
"now you can toggle it
nnoremap <F10> <ESC>:set hls! hls?<cr>
inoremap <F10> <C-o>:set hls! hls?<cr>
vnoremap <F10> <ESC>:set hls! hls?<cr> <bar> gv
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

" Set swap, undo and backup directories
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" space open/closes folds
nnoremap <space> za

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" save session
nnoremap <leader>s :mksession<CR>

" Enable system clipboard
set clipboard=unnamedplus

" Coc.nvim
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-j>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-j>"
endif

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"Vista

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" coc-spell-checker
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" MY Custome shortcut in Flutter

" Tests the current file
nmap <leader>ft :!flutter test %<CR>


" FZF and RipGrep configuration
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
nmap <silent> <space>f :Rg<CR>
nmap <silent> <space>nf :NERDTreeFind<CR>
nmap <silent> <C-J> <C-W>w
nmap <silent> <C-k> <C-W>l

" Git shortkeys
nmap <silent> <leader>gb :Git blame<CR>

" Nvim Todo comment settings
lua << EOF
  require("todo-comments").setup {
  }
EOF


" Vista configuration
let g:vista_default_executive = 'coc'

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

autocmd VimEnter * call vista#RunForNearestMethodOrFunction()


" Load DAP
" lua << EOF
"   local dap = require('dap')
"
"   dap.adapters.dart = {
"     type = "executable",
"     command = "dart",
"     -- This command was introduced upstream in https://github.com/dart-lang/sdk/commit/b68ccc9a
"     args = {"debug_adapter"}
"   }
"   dap.configurations.dart = {
"     {
"       type = "dart",
"       request = "launch",
"       name = "Launch Dart Program",
"       -- The nvim-dap plugin populates this variable with the filename of the current buffer
"       program = "${file}",
"       -- The nvim-dap plugin populates this variable with the editor's current working directory
"       cwd = "${workspaceFolder}",
"       args = {"--help"}, -- Note for Dart apps this is args, for Flutter apps toolArgs
"     }
"   }
" EOF

lua << EOF
  local dap = require('dap')

  dap.adapters.dart = {
    type = "executable",
    -- As of this writing, this functionality is open for review in https://github.com/flutter/flutter/pull/91802
    -- command = "flutter",
    command = "/Users/morteza/fvm/versions/3.3.3/bin/flutter",
    args = {"debug_adapter"}
  }
  dap.configurations.dart = {
    {
      type = "dart",
      request = "launch",
      name = "Launch Flutter Program",
      -- The nvim-dap plugin populates this variable with the filename of the current buffer
      program = "${file}",
      -- The nvim-dap plugin populates this variable with the editor's current working directory
      cwd = "${workspaceFolder}",
      -- This gets forwarded to the Flutter CLI tool, substitute `linux` for whatever device you wish to launch
      -- toolArgs = {"-d", "linux"}
    }
  }
EOF

" DAP mapping
nnoremap <silent> <F5> <Cmd>lua require'dap'.continue()<CR>
nnoremap <silent> <F7> <Cmd>lua require'dap'.step_over()<CR>
nnoremap <silent> <F8> <Cmd>lua require'dap'.step_into()<CR>
nnoremap <silent> <F9> <Cmd>lua require'dap'.step_out()<CR>
nnoremap <silent> <Leader>b <Cmd>lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>
