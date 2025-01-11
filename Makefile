all: setup

.PHONY: setup sym_echo nvim tmux ghostty
setup: sym_echo nvim tmux ghostty
	
sym_echo:
	@echo 'Setting up symlinks...'

nvim:
	@mkdir -p $(HOME)/.config/
	@if [ -L $(HOME)/.config/nvim ]; then \
		echo '* Nvim already setup'; \
	else \
		if [ -d $(HOME)/.config/nvim ]; then \
			mv $(HOME)/.config/nvim $(HOME)/.config/nvim_bak; \
			echo '* Existing nvim config moved to ~/.config/nvim_bak'; \
		fi; \
		ln -s $(shell pwd)/nvim $(HOME)/.config/nvim; \
		echo '* Nvim done'; \
	fi

tmux:
	@if [ -L $(HOME)/.tmux.conf ]; then \
		echo '* Tmux already setup'; \
	else \
		if [ -e $(HOME)/.tmux.conf ]; then \
			mv $(HOME)/.tmux.conf $(HOME)/.tmux.conf.bak; \
			echo '* Existing tmux config moved to ~/.tmux.conf.bak'; \
		fi; \
		ln -s $(shell pwd)/tmux/dot_tmux.conf $(HOME)/.tmux.conf; \
		echo '* Tmux done'; \
	fi

ghostty:
	@mkdir -p $(HOME)/.config/
	@if [ -L $(HOME)/.config/ghostty ]; then \
		echo '* Ghostty already setup'; \
	else \
		if [ -d $(HOME)/.config/ghostty ]; then \
			mv $(HOME)/.config/ghostty $(HOME)/.config/ghostty_bak; \
			echo '* Existing ghostty config moved to ~/.config/ghostty_bak'; \
		fi; \
		ln -s $(shell pwd)/ghostty $(HOME)/.config/ghostty; \
		echo '* Ghostty done'; \
	fi

