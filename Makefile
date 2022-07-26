dotfiles= $(addprefix ~/, $(wildcard .bash*))

git-completion-url= https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
git-completion-dotfile= .git-completion.bash

all: $(dotfiles) git-completion

git-completion:
	curl $(git-completion-url) -o ~/$(git-completion-dotfile)

~/.%: .%
	cp -n $< $@

.PHONY: all git-completion
