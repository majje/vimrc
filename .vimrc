" VUNDLE STUFF - DON'T TOUCH ----------------------
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
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'dense-analysis/ale'
Plugin 'mbbill/undotree'
"Plugin 'phb1/gtd'
Plugin 'airblade/vim-gitgutter'
Plugin 'vimwiki/vimwiki'
Plugin 'Valloric/YouCompleteMe'
Plugin ''

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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

" VUNDLE STUFF END - DON'T TOUCH ----------------------

syntax on
set background=dark
set hlsearch
set tabstop=4
set laststatus=2

" For groovy syntax hightlight
au BufNewFile,BufRead *.groovy  setf groovy

" For python config(parser) files
au BufNewFile,BufRead *.conf setf dosini

" dockerfiles
autocmd BufNewFile,BufRead Dockerfile* set syntax=dockerfile

augroup filetypedetect
      au BufRead,BufNewFile Jenkinsfile set filetype=groovy
      au BufRead,BufNewFile Jenkinsfile set tabstop=4
augroup END

" vimwiki
set nocompatible
let g:vimwiki_list = [{'path': '$HOME/wiki/', 'syntax': 'markdown', 'ext': '.md'}]
let mapleader=","

"undotree
if has("persistent_undo")
	set undodir=$HOME."/.undodir"
	set undofile
endif

"gtd.vim
let g:gtd#dir = "~/gtd"
let g:gtd#default_action = 'inbox'
let g:gtd#default_context = 'gollum'

set spell spelllang=en_us

" ALE --------------------

" List of linters
" sudo pip install cmakelint
" sudo apt-get install pylint
" apt-get install shellcheck
" go get github.com/mrtazz/checkmake
"   cd $GOPATH/src/github.com/mrtazz/checkmake
"   make
" sudo apt-get install cppcheck
" ALE END ----------------

" git-gutter
let g:gitgutter_override_sign_column_highlight = 1
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
"highlight GitGutterAdd    guifg=#009900 guibg=<X> ctermfg=2 ctermbg=<Y>
"highlight GitGutterChange guifg=#bbbb00 guibg=<X> ctermfg=3 ctermbg=<Y>
"highlight GitGutterDelete guifg=#ff2222 guibg=<X> ctermfg=1 ctermbg=<Y>
"highlight link GitGutterChangeLine DiffText
