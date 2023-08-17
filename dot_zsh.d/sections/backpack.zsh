BP_DIR="${HOME}/.backpack"
BP_NOTEBOOK_DIR="${BP_DIR}/notebooks"
BP_CUR_DIR=""

_bp_set_cur_dir() {
  BP_CUR_DIR="$(pwd)"
}

_bp_cd_dir() {
  _bp_set_cur_dir
  cd ${BP_DIR}
}

_bp_restore_cur_dir() {
  cd ${BP_CUR_DIR}
  unset BP_CUR_DIR
}

_bp_pull() {
  _bp_cd_dir
  git pull
  _bp_restore_cur_dir
}

_bp_push() {
  _bp_cd_dir
  git push -u origin main
  _bp_restore_cur_dir
}

_bp_commit() {
  if [[ -z $1 ]]; then
    MSG="Updated"
  else
    MSG="$1"
  fi

  _bp_cd_dir
  git add .
  git commit -m "${HOST}: ${MSG}"
  _bp_restore_cur_dir
}

_bp_status() {
  _bp_cd_dir
  git status
  _bp_restore_cur_dir
}

_bp_log() {
  _bp_cd_dir
  git log | head -n3
  _bp_restore_cur_dir
}

_bp_notebook_edit() {
  if [[ -z $1 ]]; then
    log_error "No filename given."
  else
    BP_PATH="${BP_NOTEBOOK_DIR}/$1"
    log_info "Editing ${F_YELLOW}${BP_PATH}${CLR}..."
    vi ${BP_PATH}
    log_info "Edited ${F_YELLOW}${BP_PATH}${CLR}."
  fi
}

_bp_notebooks_list() {
  _bp_cd_dir
  cd notebooks
  find . -name '*.md' | cut -c3- | sed -e 's/\.md$//'
  _bp_restore_cur_dir
}

bp() {
  CMD="$1"

  case ${CMD} in
    pull|down|d)
      _bp_pull
      ;;
    push|up|u)
      _bp_push
      ;;
    commit|co|c)
      _bp_commit $2
      ;;
    status|st|s)
      _bp_status
      ;;
    log|l)
      _bp_log
      ;;
    edit|ed|e)
      _bp_notebook_edit $2.md
      ;;
    list|li)
      _bp_notebooks_list
      ;;
    write|wr|w)
      _bp_commit $2
      _bp_push
      _bp_log
      ;;
  esac
}
