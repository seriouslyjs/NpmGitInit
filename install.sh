#!/bin/bash

# Download and store the script
SCRIPT_URL="https://raw.githubusercontent.com/seriouslyjs/NpmGitInit/master/node-init-wrapper.sh"

INSTALL_DIR="$HOME"
SCRIPT_NAME="node-init-wrapper.sh"

# Determine which shell the user is using
case $SHELL in
  */zsh)
    # If Zsh
    ALIAS_FILE="$HOME/.zshrc"
    ;;
  */fish)
    # If Fish
    ALIAS_FILE="$HOME/.config/fish/config.fish"
    ;;
  *)
    # Default to .bashrc if shell is unknown
    ALIAS_FILE="$HOME/.bashrc"
    echo "Defaulting to bash settings."
    ;;
esac

# Download the script
curl -o "$INSTALL_DIR/$SCRIPT_NAME" "$SCRIPT_URL"

# Make the script executable
chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

# Add aliases to the shell configuration
if [ "$SHELL" = "*/fish" ]; then
    # Fish shell syntax for alias
    if ! grep -q "function npm;" "$ALIAS_FILE"; then
        echo "\n"
        echo "function npm; $INSTALL_DIR/$SCRIPT_NAME npm \$argv; end" >> "$ALIAS_FILE"
        echo "function yarn; $INSTALL_DIR/$SCRIPT_NAME yarn \$argv; end" >> "$ALIAS_FILE"
        echo "function pnpm; $INSTALL_DIR/$SCRIPT_NAME pnpm \$argv; end" >> "$ALIAS_FILE"
    fi
else
    # Bash/Zsh syntax for alias
    if ! grep -q "alias npm=" "$ALIAS_FILE"; then
        echo "\n"
        echo "alias npm=\"$INSTALL_DIR/$SCRIPT_NAME npm\"" >> "$ALIAS_FILE"
        echo "alias yarn=\"$INSTALL_DIR/$SCRIPT_NAME yarn\"" >> "$ALIAS_FILE"
        echo "alias pnpm=\"$INSTALL_DIR/$SCRIPT_NAME pnpm\"" >> "$ALIAS_FILE"
    fi
fi

echo "Installation complete. Please restart your terminal or source your $ALIAS_FILE file."
