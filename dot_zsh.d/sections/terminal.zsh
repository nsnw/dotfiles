# If the terminal is xterm, set it to zterm-256color
if [[ ${TERM} = "xterm" ]]; then
  export TERM="xterm-256color"
fi

# If the terminal is screen, set it to screen-256color
if [[ ${TERM} = "screen" ]]; then
  export TERM="xterm-256color"
fi

log_info "${F_GREEN}TERM${CLR} is set to ${F_YELLOW}${TERM}${CLR}"
