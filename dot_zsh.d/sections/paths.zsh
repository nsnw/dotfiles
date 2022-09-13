# Set up paths

source ~/.zsh.d/sections/config.zsh

# Check for LD_LIBRARY_PATH
if [[ ! -z ${LD_LIBRARY_PATH} ]]; then
  log_info "${F_GREEN}LD_LIBRARY_PATH${CLR} is set to ${F_YELLOW}${LD_LIBRARY_PATH}${CLR}"
fi

# Make sure LOCAL_BIN_DIR exists and is added to $PATH
_ensure_directory_exists "${LOCAL_BIN_DIR}"
PATH="${LOCAL_BIN_DIR}:${PATH}"
