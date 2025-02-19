STOW_DIR ?= $(HOME)/.local/share/dotfiles
HOME_DIR ?= $(HOME)
WHERE_DIR = $(HOME_DIR)/.local/state/where
COMMON_PACKAGES := $(patsubst common/%,%,$(wildcard common/*))

.PHONY: all install stow unstow clean clear-profiles home work help

all: install

install: stow

stow:
	@echo "Stowing dotfiles..."
	@cd "$(STOW_DIR)/common" && stow --target="$(HOME_DIR)" $(COMMON_PACKAGES)
	@echo "Dotfiles stowed successfully!"

unstow:
	@echo "Unstowing dotfiles..."
	@cd "$(STOW_DIR)" && stow --target="$(HOME_DIR)" --delete *
	@echo "Dotfiles unstowed."

clean: unstow

# --- Machine-specific setup ---

home:
	@echo "Setting up for home machine..."
	@mkdir -p "$(WHERE_DIR)"
	@cd "$(STOW_DIR)/home" && stow --target="$(HOME_DIR)" *

work:
	@echo "Setting up for work machine..."
	@mkdir -p "$(WHERE_DIR)"
	@cd "$(STOW_DIR)/work" && stow --target="$(HOME_DIR)" git

clear-profiles:
	@echo "Clearing machine profiles..."
	@cd "$(STOW_DIR)/work" && stow --target="$(HOME_DIR)" --delete git

help:
	@echo "Available targets:"
	@echo "  make install  - Stow dotfiles (alias for 'stow')"
	@echo "  make stow     - Stow dotfiles"
	@echo "  make unstow   - Unstow dotfiles"
	@echo "  make clean    - Unstow dotfiles (alias for 'unstow')"
	@echo "  make help     - Show this help message"