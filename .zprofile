
# Brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Brew completions autoload
autoload -Uz compinit
fpath=("/opt/homebrew/share/zsh/site-functions" $fpath)
compinit

# Rust
. "$HOME/.cargo/env"
