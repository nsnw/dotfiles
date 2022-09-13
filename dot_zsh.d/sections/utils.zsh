# Make sure various utilities are installed and source their sections if needed

# fzf
if ! which fzf >/dev/null 2>&1; then
  log_warning "${F_ORANGE}fzf${CLR} not found"
fi

# asdf
if [[ ! -d ${HOME}/.asdf ]]; then
  log_warning "${F_ORANGE}asdf${CLR} not found"
fi