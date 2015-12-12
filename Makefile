Vundle := $(HOME)/.vim/bundle/Vundle.vim
vimrc := $(HOME)/.vimrc

.PHONY: all
all: update

# See the doc here: https://github.com/gmarik/Vundle.vim
$(Vundle):
	git clone https://github.com/gmarik/Vundle.vim.git $(Vundle)

$(vimrc): vimrc
	ln -s $(PWD)/vimrc $@

.PHONY: Vundle
Vundle: | $(Vundle)

.PHONY: basic-install update
basic-install: Vundle $(vimrc)

update: basic-install
	vim +PluginInstall! +qall
