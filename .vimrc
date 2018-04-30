set encoding=utf8
set nocompatible			" Not compatible with vi
filetype off				" Required for Vundle

" colorscheme
let g:solarized_termcolors=256
let base16colorspace=256
set background=dark
colorscheme dracula
set laststatus=2
set t_Co=256

" set runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin() " call Vundle plugins ------------------------------ 

  " utility
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'Xuyuanp/nerdtree-git-plugin'
  Plugin 'Shougo/neocomplete.vim'

  " generic programming
  Plugin 'vim-syntastic/syntastic'
  Plugin 'Townk/vim-autoclose'
  Plugin 'honza/vim-snippets'
  Plugin 'maksimr/vim-jsbeautify'
  Plugin 'artur-shaik/vim-javacomplete2'
  " Plugin 'Valloric/YouCompleteMe'
  Plugin 'Shougo/denite.vim'

  " themes
  Plugin 'ryanoasis/vim-devicons'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'ajh17/Spacegray.vim'

  " general writing
  Plugin 'reedes/vim-pencil'
  Plugin 'tpope/vim-markdown'
  Plugin 'jtratner/vim-flavored-markdown'
  Plugin 'LanguageTool'

call vundle#end() " end Vundle plugins -----------------------------------

filetype plugin on
filetype indent on
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
set hlsearch
set mouse=a
set backspace=indent,eol,start
set linebreak
set foldmethod=indent
set foldnestmax=3
set nofoldenable
set guifont=PT\ Mono:h14
set ai
set si

" linebreak on 500 chars
set lbr
set tw=500

" remapping
map b 0
map e $
map <C-t> :NERDTreeToggle<CR>

" autocompletion: w/ neocomplete and javacomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_camel_case = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#max_list = 10
let g:neocomplete#auto_completion_start_length = 3
let g:neocomplete#force_overwrite_completefunc = 1
inoremap <C-space> <C-n>

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" smart import with F4
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
" usual import with F5
nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)
" remove unused imports with F6
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" supertab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" writing
let g:pencil#wrapModeDefault = 'soft'
let g:languagetool_jar = '/opt/languagetool/languagetool-commandline.jar'

augroup pencil
	autocmd!
	autocmd FileType markdown,mkd call pencil#init()
	autocmd FileType text         call pencil#init()
augroup END
