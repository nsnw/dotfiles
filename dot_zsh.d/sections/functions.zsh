function _ensure_directory_exists() {
  TEST_DIR="$1"

  if [[ ! -d ${TEST_DIR} ]]; then
    log_info "Creating ${F_GREEN}${TEST_DIR}${CLR}..."
    mkdir -pv ${TEST_DIR}
  fi
}

function _generate_tmp_file_location() {
  _ensure_directory_exists ${HOME}/.tmp

  NAME="$(date +%s).${RANDOM}"

  echo "${HOME}/.tmp/${NAME}"
}

function _ensure_symlink_exists() {
  SYMLINK_SRC="$1"
  TEST_SYMLINK="$2"

  if [[ ! -s ${TEST_SYMLINK} ]]; then
    log_info "Creating symlink from ${F_GREEN}${SYMLINK_SRC}${CLR} to ${F_GREEN}${TEST_SYMLINK}${CLR}..."
    ln -sv ${SYMLINK_SRC} ${TEST_SYMLINK}
  fi
}

function _add_to_path_if_exists() {
  TEST_PATH="$1"

  if [[ -d ${TEST_PATH} ]]; then
    log_info "Adding ${F_YELLOW}${TEST_PATH}${CLR} to path..."
    export PATH="${TEST_PATH}:${PATH}"
  fi
}

function _ensure_file_downloaded() {
  TEST_FILE="$1"
  DOWNLOAD_URL="$2"

  if [[ ! -f ${TEST_FILE} ]]; then
    log_info "Downloading ${F_GREEN}${DOWNLOAD_URL}${CLR} to ${F_GREEN}${TEST_FILE}${CLR}..."
    wget -O ${TEST_FILE} ${DOWNLOAD_URL}
  fi
}

function _ensure_git_repo_cloned() {
  TEST_REPO="$1"
  REPO_URL="$2"

  if [[ ! -d ${TEST_REPO} ]]; then
    log_info "Cloning ${F_GREEN}${REPO_URL}${CLR} into ${F_GREEN}${TEST_REPO}${CLR}..."
    git clone --recurse-submodules ${REPO_URL} ${TEST_REPO}
  fi
}

if [[ ! -z ${LD_LIBRARY_PATH} ]]; then
  log_info "${F_GREEN}LD_LIBRARY_PATH${CLR} is set to ${F_YELLOW}${LD_LIBRARY_PATH}${CLR}"
fi

function _show_path() {
  for P in $(echo ${PATH} | sed -e 's/:/ /g'); do
    log_info ${P}
  done
}

function reload() {
  log_notice "Reloading .zshrc..."
  . ~/.zshrc
}
