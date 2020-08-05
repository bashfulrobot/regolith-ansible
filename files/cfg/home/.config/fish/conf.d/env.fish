# Support Rust/Cargo
set -gx PATH "$HOME/.cargo/bin" $PATH

# Support Go
set -x -U GOPATH "$HOME/go"
set -x -U GOROOT "/usr/local/go"
set -gx PATH "/usr/local/go/bin" "$GOPATH/bin" $PATH
