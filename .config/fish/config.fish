set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes 
set -g theme_hide_hostname no
set -g theme_hostname always
set -g theme_gruvbox dark hard 


# aliases
alias ll='exa -l -g --icons'
alias lla='ll -a'
alias ls='ls -p -G'
alias g git
alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

source (dirname (status --current-filename))/config-osx.fish

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

export PATH="/opt/homebrew/bin:$PATH"
