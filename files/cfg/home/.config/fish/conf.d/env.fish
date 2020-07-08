# Support Rust/Cargo
set -gx PATH "$HOME/.cargo/bin" $PATH

# Support Go
set -x -U GOPATH $HOME/go
set -x -U GOROOT /snap/go/current