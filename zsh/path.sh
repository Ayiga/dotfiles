# This file is meant to condtain local path modifications.
# In order to make this cross-machine compatible, absolute PATH modifications
# should be avoided where possible.

# Load ASDF Binary shims at the front of the PATH
# if they exist
if [[ -d "$HOME/.asdf/shims" ]]; then
  export PATH="$HOME/.asdf/shims:$PATH"
fi

# Add the user's ~/.local/bin directory at the front
# of the PATH for convenience
if [[ -d "$HOME/.local/bin" ]]; then
  export PATH="$HOME/.local/bin:$PATH"
fi

# Add support for homebrew in Bazzite in the PATH, if we
# detect that the directory exists
if [[ -d "/home/linuxbrew/.linuxbrew/bin" ]]; then
  export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin"
fi

# Add support for homebrew in macOS in the PATH if we
# detect that the directory exists.
if [[ -d "/opt/homebrew/bin" ]]; then
  export PATH="$PATH:/opt/homebrew/bin:/opt/homebrew/bin"
fi
