Vundle := $(HOME)/.vim/bundle/Vundle.vim
vimrc := $(HOME)/.vimrc

.PHONY: all
all:

# See the doc here: https://github.com/gmarik/Vundle.vim
$(Vundle):
	git clone git@github.com:gmarik/Vundle.vim.git $(Vundle)

$(vimrc): vimrc
	ln -s $(PWD)/vimrc $@

.PHONY: Vundle
Vundle: | $(Vundle)

.PHONY: basic-install update install
basic-install: Vundle $(vimrc)

update: basic-install
	vim +PluginInstall! +qall

install: update

.PHONY: clean
clean:
	$(RM) $(vimrc)
	$(RM) -r $(HOME)/.vim
