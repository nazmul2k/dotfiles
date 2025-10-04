#!/bin/sh
#

# Add all directories in `~/.local/bin` to $PATH
if [ -d "$HOME/.local/bin" ] && [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
	export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"
fi
if [ -d "$HOME/.local/share/scripts" ] && [[ ":$PATH:" != *":$HOME/.local/share/scripts:"* ]]; then
	export PATH="$PATH:$(find ~/.local/share/scripts -type d | paste -sd ':' -)"
fi

