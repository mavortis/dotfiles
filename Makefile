STOW_DIR ?= $(HOME)/.local/share/dotfiles
HOME_DIR ?= $(HOME)
PACKAGES := $(filter-out $(wildcard .stow-local-ignore), $(wildcard */))

.PHONY: all install stow unstow clean help

all: install

install: stow

stow:
	@echo "Stowing dotfiles..."
	@cd "$(STOW_DIR)" && stow --target="$(HOME_DIR)" $(PACKAGES)
	@echo "Dotfiles stowed successfully!"

unstow:
	@echo "Unstowing dotfiles..."
	@cd "$(STOW_DIR)" && stow --target="$(HOME_DIR)" --delete $(PACKAGES)
	@echo "Dotfiles unstowed."

clean: unstow

# --- Machine-specific setup ---

work:
	@echo "Setting up for work machine..."
	#  (See notes below - likely not needed with this structure)

home:
	@echo "Setting up for home machine..."
	#  (See notes below - likely not needed with this structure)

help:
	@echo "Available targets:"
	@echo "  make install  - Stow dotfiles (alias for 'stow')"
	@echo "  make stow     - Stow dotfiles"
	@echo "  make unstow   - Unstow dotfiles"
	@echo "  make clean    - Unstow dotfiles (alias for 'unstow')"
	@echo "  make help     - Show this help message"