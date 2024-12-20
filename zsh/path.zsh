# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Gopath.
export GOPATH=$HOME/code
export PATH="$GOPATH/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$PATH:/$BUN_INSTALL/bin

# Deno
. "$HOME/.deno/env"
. "$HOME/.cargo/env"

echo "Path updated"
