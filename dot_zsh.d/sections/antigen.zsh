# Antigen (for zsh)

# Clone the antigen git repo if it isn't already, and source it
_ensure_git_repo_cloned ${HOME}/.antigen https://github.com/zsh-users/antigen.git
source "${HOME}/.antigen/antigen.zsh"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle brew
antigen bundle git
# antigen bundle docker
antigen bundle command-not-found
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle ssh-agent
# antigen bundle wfxr/forgit
antigen bundle Aloxaf/fzf-tab
# antigen bundle aws
# antigen bundle yarn
# antigen bundle cargo
# antigen bundle ansible
# antigen bundle docker-compose
# antigen bundle git-auto-fetch
# antigen bundle mix

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# OS specific plugins
if [[ $CURRENT_OS == 'OS X' ]]; then
    antigen bundle brew
    antigen bundle brew-cask
    antigen bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
    # None so far...
fi

# Load the theme
# Personal fork of spaceship-prompt
antigen bundle nsnw/spaceship-prompt

# Tell Antigen that you're done.
antigen apply
