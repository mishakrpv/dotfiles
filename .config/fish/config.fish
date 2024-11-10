set fish_greeting ""

zoxide init fish | source

# Go
set -g GOPATH /usr/local/go
set -gx PATH $GOPATH/bin $PATH
set -gx PATH $HOME/go/bin $PATH
