set fish_greeting ""

# oh-my-posh
oh-my-posh init fish --config $HOME/.poshthemes/modified-catppuccin_mocha.omp.json | source

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH
