# SSH-related stuff

SSH_AGENTS_DIR="${HOME}/.agents"

get-ssh-agent-pids() {
  SSH_AGENTS=$(pgrep ssh-agent)
  echo ${SSH_AGENTS}
}

get-ssh-agent-socket() {
  PID=$1
  SOCKET=$(lsof -p ${PID} | grep " unix " | awk '{ print $NF }')
  echo ${SOCKET}
}

start-ssh-agent() {
  NAME="$1"

  if [[ -z ${NAME} ]]; then
    log_error "No name given for ssh-agent."
  else
    _ensure_directory_exists ${SSH_AGENTS_DIR}
    ssh-agent >${SSH_AGENTS_DIR}/${NAME}
    source ${SSH_AGENTS_DIR}/${NAME}
  fi
}

_save_ssh_agent() {
  NAME="$1"

  if [[ -z ${NAME} ]]; then
    log_error "No name given for ssh-agent."
  else
  fi
}

switch-ssh-agent() {
}

list-ssh-agents() {
  for PID in $(get-ssh-agent-pids); do
    echo "* ${F_YELLOW}${PID}${CLR} ${F_CYAN}($(get-ssh-agent-socket ${PID}))${CLR}"
  done
}

use-main-ssh-agent() {
  SSH_AGENT_PID=$(lsof -c ssh-agent | grep " unix " | grep "/var/folders" | awk '{ print $2 }')
  SSH_AUTH_SOCK=$(lsof -c ssh-agent | grep " unix " | grep "/var/folders" | awk '{ print $NF }')

  export SSH_AGENT_PID
  export SSH_AUTH_SOCK

  log_info "Using ssh-agent with PID ${F_YELLOW}${SSH_AGENT_PID}${CLR} and socket ${F_CYAN}${SSH_AUTH_SOCK}${CLR}."
  ssh-add -l
}

use-system-ssh-agent() {
  SSH_AGENT_PID=$(lsof -c ssh-agent | grep " unix " | grep "/private" | awk '{ print $2 }')
  SSH_AUTH_SOCK=$(lsof -c ssh-agent | grep " unix " | grep "/private" | awk '{ print $NF }')

  export SSH_AGENT_PID
  export SSH_AUTH_SOCK

  log_info "Using ssh-agent with PID ${F_YELLOW}${SSH_AGENT_PID}${CLR} and socket ${F_CYAN}${SSH_AUTH_SOCK}${CLR}."
  ssh-add -l
}
