all: setup

.PHONY: update setup sym_echo nvim vim tmux ghostty fish
setup: update sym_echo nvim vim tmux ghostty fish
	
update:
	@echo 'Pulling latest version.'
	@git pull

sym_echo:
	@echo 'Setting up symlinks.'

nvim:
	@mkdir -p $(HOME)/.config/
	@if [ -L $(HOME)/.config/nvim ]; then \
		echo '[Nvim] Already setup.'; \
	else \
		if [ -d $(HOME)/.config/nvim ]; then \
			mv $(HOME)/.config/nvim $(HOME)/.config/nvim_bak; \
			echo '[Nvim] Existing config moved to ~/.config/nvim_bak.'; \
		fi; \
		ln -s $(shell pwd)/nvim $(HOME)/.config/nvim; \
		echo '[Nvim] Done.'; \
	fi
	
vim:
	@if [ -L $(HOME)/.vimrc ]; then \
		echo '[Vim] Already setup.'; \
	else \
		if [ -e $(HOME)/.vimrc ]; then \
			mv $(HOME)/.vimrc $(HOME)/.vimrc.bak; \
			echo '[Vim] Existing config moved to ~/.vimrc.bak,'; \
		fi; \
		ln -s $(shell pwd)/vim/dot_vimrc $(HOME)/.vimrc; \
		echo '[Vim] Done.'; \
	fi


tmux:
	@if [ -L $(HOME)/.tmux.conf ]; then \
		echo '[Tmux] Already setup.'; \
	else \
		if [ -e $(HOME)/.tmux.conf ]; then \
			mv $(HOME)/.tmux.conf $(HOME)/.tmux.conf.bak; \
			echo '[Tmux] Existing config moved to ~/.tmux.conf.bak,'; \
		fi; \
		ln -s $(shell pwd)/tmux/dot_tmux.conf $(HOME)/.tmux.conf; \
		echo '[Tmux] Done.'; \
	fi

ghostty:
	@mkdir -p $(HOME)/.config/
	@if [ -L $(HOME)/.config/ghostty ]; then \
		echo '[Ghostty] Already setup.'; \
	else \
		if [ -d $(HOME)/.config/ghostty ]; then \
			mv $(HOME)/.config/ghostty $(HOME)/.config/ghostty_bak; \
			echo '[Ghostty] Existing config moved to ~/.config/ghostty_bak.'; \
		fi; \
		ln -s $(shell pwd)/ghostty $(HOME)/.config/ghostty; \
		echo '[Ghostty] done.'; \
	fi

fish:
	@mkdir -p $(HOME)/.config/
	@if [ -L $(HOME)/.config/fish ]; then \
		echo '[Fish] already setup.'; \
	else \
		if [ -d $(HOME)/.config/fish ]; then \
			mv $(HOME)/.config/fish $(HOME)/.config/fish_bak; \
			echo '[Fish] Existing config moved to ~/.config/fish_bak.'; \
		fi; \
		ln -s $(shell pwd)/fish $(HOME)/.config/fish; \
		echo '[Fish] Done.'; \
	fi

