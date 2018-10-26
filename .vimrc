set encoding=utf8
set nocompatible			" Not compatible with vi

" colorscheme
let g:solarized_termcolors=256
let base16colorspace=256
set background=dark
colorscheme dracula
set laststatus=2
set t_Co=256

" set runtime path to include Vundle
"set rtp+=~/.vim/bundle/Vundle.vim

filetype off				" Required for Vundle

" call vundle#begin() " call Vundle plugins ------------------------------ 
"
"  " utility
"  Plugin 'VundleVim/Vundle.vim'
"  Plugin 'Shougo/neocomplete.vim'
"
"  " generic programming
"  Plugin 'vim-syntastic/syntastic'
"  Plugin 'Townk/vim-autoclose'
"  Plugin 'maksimr/vim-jsbeautify'
"  Plugin 'artur-shaik/vim-javacomplete2'
"  Plugin 'scrooloose/nerdtree'
"  Plugin 'jistr/vim-nerdtree-tabs'
"  Plugin 'xolox/vim-misc'
"  Plugin 'xolox/vim-easytags'
"  Plugin 'majutsushi/tagbar'
"  Plugin 'ctrlpvim/ctrlp.vim'
"
"  " themes
"  Plugin 'ryanoasis/vim-devicons'
"  Plugin 'vim-airline/vim-airline'
"  Plugin 'vim-airline/vim-airline-themes'
"  Plugin 'ajh17/Spacegray.vim'
"
" call vundle#end() " end Vundle plugins -----------------------------------

filetype plugin indent on
set noswapfile
set spelllang=en_us
set ttyfast
set noerrorbells t_vb=
autocmd! GUIEnter * set visualbell t_vb=
autocmd! WinLeave * set nocursorline		" Highlight cursor line
autocmd! WinEnter * set cursorline		" in current window

" ui
set smartcase
set nowrap
set number
syntax on
set autoindent 
set smartindent
set smarttab
set tabstop=2 
set softtabstop=2
set shiftwidth=2
set expandtab
set showmatch
set mat=2
set incsearch
set hlsearch
set mouse=a
hi clear SignColumn
set backspace=indent,eol,start
set linebreak
set foldmethod=indent
set foldnestmax=3
set nofoldenable
set guifont=Inconsolata\ for\ Powerline:h15
set ai
set si

" linebreak on 500 chars
set lbr
set tw=500

" remapping
map b 0
map e $

"" autocompletion: w/ neocomplete and javacomplete
"let g:acp_enableAtStartup = 0
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#enable_camel_case = 1
"let g:neocomplete#enable_smart_case = 1
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"let g:neocomplete#max_list = 10
"let g:neocomplete#auto_completion_start_length = 3
"let g:neocomplete#force_overwrite_completefunc = 1
"inoremap <C-space> <C-n>
"
"" nerdtree
"nmap <silent> <leader>t :NERDTreeToggle<CR>
"let g:nerdtree_tabs_open_on_console_startup=1
"
"" syntastic
"let g:syntastic_error_symbol = '✘'
"let g:syntastic_warning_symbol = "▲"
"augroup mySyntastic
"  au!
"  au FileType tex let b:syntastic_mode = "passive"
"augroup END
"
"" vim-easytags
"set tags=./tags;,~/.vimtags
"let g:easytags_events = ['BufReadPost', 'BufWritePost']
"let g:easytags_async = 1
"let g:easytags_dynamic_files = 2
"let g:easytags_resolve_links = 1
"let g:easytags_suppress_ctags_warning = 1
"" ----- majutsushi/tagbar settings -----
"" Open/close tagbar with \b
"nmap <silent> <leader>b :TagbarToggle<CR>
"
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"
"" smart import with F4
"nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
"imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
"" usual import with F5
"nmap <F5> <Plug>(JavaComplete-Imports-Add)
"imap <F5> <Plug>(JavaComplete-Imports-Add)
"" remove unused imports with F6
"nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
"imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
"
"if !exists('g:neocomplete#sources#omni#input_patterns')
"  let g:neocomplete#sources#omni#input_patterns = {}
"endif
"
"" supertab
"let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
