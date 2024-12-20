#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then

	echo "Detected macos"
	
	# Homebrew ===================================================
	#
	echo "Installing homebrew and formulae..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	source ./install/homebrew.sh
	
elif [[ "$(uname)" == Linux* ]]; then
	
	echo "Detected linux"

	# Apt ========================================================
	#
	echo "Installing packages via apt"
	source ./install/linux_apt.sh

else

	#TODO: Windows
	echo "Sry not supported yet"

fi

# Install oh my zsh ==========================================
#
echo "Installing zsh and rc"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp -f ./install/.zshrc ~/.zshrc

# JavaScript =================================================
#
# Install NVM and Node
echo "Installing JS-related tooling"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install node	#install latest
corepack enable

# Install deno
curl -fsSL https://deno.land/install.sh | sh

# Install bun
curl -fsSL https://bun.sh/install | bash

# Rust =======================================================
#
echo "Installing rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Configs ====================================================
#
echo "Migrating configs to ~"
cp ./install/.editorconfig ~/.editorconfig
cp -f ./install/.gitconfig ~/.gitconfig
cp -f ./install/.gitignore ~/.gitignore
cp -f ./install/.tmux.conf ~/.tmux.conf

# Others =====================================================
echo "Please go to the following to finish installing things:"
echo "- Golang https://go.dev/dl/"
echo "- Vscode https://code.visualstudio.com/docs/?dv=osx"
echo "- Docker https://docs.docker.com/desktop/"
echo "- WhatsApp https://web.whatsapp.com/desktop/mac_native/release/?configuration=Release"
echo "- iTerm https://iterm2.com/downloads.html"
echo "- Obsidian https://obsidian.md/"
