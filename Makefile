all: setup

.PHONY: setup
setup:
	@echo 'Setting up symlinks...'
	@mkdir -p $(HOME)/.config/
	@if [ -L $(HOME)/.config/nvim ]; then \
		echo '* Nvim already setup'; \
	else \
		if [ -d $(HOME)/.config/nvim ]; then \
			mv $(HOME)/.config/nvim $(HOME)/.config/nvim_bak; \
		fi; \
		echo '* Nvim done'; \
		ln -s $(shell pwd)/nvim $(HOME)/.config/nvim; \
	fi
