VundlePATH = $(HOME)/.vim/bundle/Vundle.vim

.PHONY: install-vundle install-vimrc all
all: vundle-update

# See the doc here: https://github.com/gmarik/Vundle.vim
install-vundle:
	test -d $(VundlePATH) || git clone git@github.com:gmarik/Vundle.vim.git $(VundlePATH)

# Before install vimrc, you should install Vundle
install-vimrc: $(HOME)/.vimrc install-vundle

$(HOME)/.vimrc: vimrc
	$(RM) $@
	ln -s $(PWD)/vimrc $@

.PHONY: vundle-update
vundle-update: install-vundle install-vimrc
	vim +PluginInstall! +qall

.PHONY: clean
clean:
	$(RM) $(HOME)/.vimrc
	$(RM) -r $(HOME)/.vim
