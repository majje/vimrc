" VUNDLE STUFF - DON'T TOUCH ----------------------
set nocompatible              " be iMproved, required for Vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'dense-analysis/ale'
Plugin 'mbbill/undotree'
Plugin 'airblade/vim-gitgutter'
Plugin 'vimwiki/vimwiki'
Plugin 'Valloric/YouCompleteMe'
Plugin 'martinda/Jenkinsfile-vim-syntax'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" General stuff -------------------------
syntax on
"set background=dark
set hlsearch
set tabstop=4
set expandtab
set laststatus=2
"set spell spelllang=en_us

" ALE ------------------------------
"let g:ale_linters = {'python': ['bandit']}
let g:ale_cmake_cmakelint_options = 'syntax'
let b:ale_linters = ['flake8', 'pylint', 'proselint', 'vint', 'hadolint', 'yamllint', 'ansible-lint']
let b:ale_fixers = ['autopep8']

" Handle different file types ----------------
augroup groovy
au BufNewFile,BufRead *.groovy  setf groovy
augroup END

" For python config(parser) files
augroup conffile
au BufNewFile,BufRead *.conf setf dosini
augroup END

"augroup ansible
"au BufNewFile,BufRead *.yaml set filetype=ansible.yaml
"augroup END

" vimwiki ------------------------
set nocompatible
let g:vimwiki_list = [{'path': '$HOME/wiki/', 'syntax': 'markdown', 'ext': '.md'}]
let mapleader=','

"undotree --------------------------
if has('persistent_undo')
	set undodir=$HOME."/.undodir"
	set undofile
endif

"gtd.vim --------------------------
let g:gtd#dir = '~/gtd'
let g:gtd#default_action = 'inbox'
let g:gtd#default_context = 'gollum'

" git-gutter ----------------------
let g:gitgutter_override_sign_column_highlight = 1
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

