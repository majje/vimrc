# VIM config

## Vundle
Fetch Vundle from github and put the Vundle part of the ./.vimrc in your $HOME/.vimrc.

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
 
```
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
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
"Plugin 'phb1/gtd'
```

 Brief help:
 
* :PluginList       - lists configured plugins
* :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
* :PluginSearch foo - searches for foo; append `!` to refresh local cache
* :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
 
## ALE
List of linters:
* cmakelint
* pylint
* proselint - Markdown and text
* vin-vint
* shellcheck - bash/sh
* checmake - Make
* cppcheck - C/C++
  
Python packages:
 
```
pip install --user \
 	cmakelint \
 	pylint \
 	proselint \
 	vim-vint \
echo "export PATH=$PATH:$HOME/.local/bin" >> $HOME/.bashrc
```
 
Packages from the package manager (apt-get or pacman):
 
```
sudo pacman -S \
	cppcheck \
	shellcheck \
```

GO pacakges:

```
echo "export GOPATH=$HOME/go/bin" >> $HOME/.bashrc
echo "export PATH=$PATH:$GOPATH/bin" >> $HOME/.bashrc
go get github.com/mrtazz/checkmake
cd $GOPATH/src/github.com/mrtazz/checkmake
make
cp checkmake ~/bin/
´´´

## Git-gutter

```
"highlight GitGutterAdd    guifg=#009900 guibg=<X> ctermfg=2 ctermbg=<Y>
"highlight GitGutterChange guifg=#bbbb00 guibg=<X> ctermfg=3 ctermbg=<Y>
"highlight GitGutterDelete guifg=#ff2222 guibg=<X> ctermfg=1 ctermbg=<Y>
"highlight link GitGutterChangeLine DiffText
```

## EOL style

```
" Show white spaces and EOL
"set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:↲
"set list
```
