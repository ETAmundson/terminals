" Note: Skip initialization for vim-tiny or vim-small.
"if 0 | endif

"if &compatible
  set nocompatible               " Be iMproved
"endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
" --------> Plugins should start here <--------------------------------------

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'prettier/vim-prettier', { 'do': 'yarn install' }
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'tiagofumo/vim-nerdtree-syntax-highlight'

NeoBundle 'gko/vim-coloresque'

NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

NeoBundle 'ryanoasis/vim-devicons'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()
" All of your Plugins must be added before the following line------------------
"===============================================================================
" Required:
filetype plugin on
filetype plugin indent on



" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"=====================================================================================================
" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

" for vim DevIcons
set encoding=UTF-8

" open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree

" Open NERDTREE when automatically when no file is specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

if filereadable(expand("~/.vimrc.before"))
source ~/.vimrc.before
endif

" ================ General Config ====================
    set wildmenu
    set wildmode=longest,list,full
    set number relativenumber    "Line numbers are good
    set backspace=indent,eol,start  "Allow backspace in insert mode
    set history=1000                "Store lots of :cmdline history
    set showcmd                     "Show incomplete cmds down the bottom
    set showmode                    "Show current mode down the bottom
    set gcr=a:blinkon0              "Disable cursor blink
    set visualbell                  "No sounds
    set autoread                    "Reload files changed outside vim
    set bg=light


"colorscheme
    colorscheme slate

"Automatically deletes all trailing whitespace on save
"   autocmd BuffWritePost * %s/\s+$//e

"Makes Ctrl + c and Ctrl + v work
vnoremap <C-c> "+y
map <C-v> "+p

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on
 " always show status bar
    set ls=2

    " incremental search
    set incsearch
    " highlighted search results
    set hlsearch


"================= HTML =============================
autocmd FileType html inoremap <Space><Space> <Esc>/<++><Enter>"_c4l

autocmd FileType html inoremap ;! <!--  --><Esc>4hi
autocmd FileType html inoremap ;D <!DOCTYPE html><Esc>o<html><Esc>o<head><Esc>o<meta charset="utf-8"><Esc>o<title>"Your title here"</title><Esc>o</head><Esc>o<body><Esc>o</body><Esc>o</html><Esc>/Your title here<ENTER>

autocmd FileType html inoremap ;a <a href="https://"></a><Space><++><Esc>FaT>i
autocmd FileType html inoremap ;ab <abbr title=""></abbr><Space><++><Esc>FaT>i
autocmd FileType html inoremap ;ad <address></address><Space><++><Esc>FaT>i

autocmd FileType html inoremap ;ar <area></area><Space><++><Esc>FaT>i
autocmd FileType html inoremap ;art <article></article><Space><++><Esc>FaT>i
autocmd FileType html inoremap ;au <audio controls><source src="" type=""></audio><Space><++><Esc>FaT>i

autocmd FileType html inoremap ;b <body></body><Space><++><Esc>FbT>i
autocmd FileType html inoremap ;bo <b></b><Space><++><Esc>FbT>i
autocmd FileType html inoremap ;bu <button></button><Space><++><Esc>FbT>i


autocmd FileType html inoremap ;em <embed></embed><Space><++><Esc>FeT>i

autocmd FileType html inoremap ;ht <html></html><Space><++><Esc>FhT>i
autocmd FileType html inoremap ;h <head></head><Space><++><Esc>FhT>i
autocmd FileType html inoremap ;he <header></header><Space><++><Esc>FhT>i

autocmd FileType html inoremap ;i <em></em><Space><++><Esc>FeT>i
autocmd FileType html inoremap ;h1 <h1></h1><Space><++><Esc>FhT>i
autocmd FileType html inoremap ;h2 <h2></h2><Space><++><Esc>FhT>i
autocmd FileType html inoremap ;h3 <h3></h3><Space><++><Esc>FhT>i
autocmd FileType html inoremap ;h4 <h4></h4><Space><++><Esc>FhT>i
autocmd FileType html inoremap ;h5 <h5></h5><Space><++><Esc>FhT>i
autocmd FileType html inoremap ;h6 <h6></h6><Space><++><Esc>FhT>i

autocmd FileType html inoremap ;la <label></label><Space><++><Esc>FlT>i
autocmd FileType html inoremap ;p <p></p><Space><++><Esc>FpT>i
autocmd FileType html inoremap ;p <p></p><Space><++><Esc>FpT>i
autocmd FileType html inoremap ;t <title></title><Space><++><Esc>FtT>i

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

"
" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
