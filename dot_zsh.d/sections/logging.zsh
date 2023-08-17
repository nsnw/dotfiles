function _log_prefix() {
  PREFIX_TYPE=$1

  case ${PREFIX_TYPE} in
    debug)
      PREFIX_COLOUR=${F_PURPLE}
      PREFIX="==="
      ;;
    info)
      PREFIX_COLOUR=${F_GREEN}
      PREFIX="+++"
      ;;
    notice)
      PREFIX_COLOUR=${F_YELLOW}
      PREFIX="ooo"
      ;;
    warning)
      PREFIX_COLOUR=${F_ORANGE}
      PREFIX="!!!"
      ;;
    error)
      PREFIX_COLOUR=${F_RED}
      PREFIX="xxx"
      ;;
  esac

  echo -e "${F_MIDGREY}[${PREFIX_COLOUR}${PREFIX}${F_MIDGREY}]${CLR} "
}

function log_debug() {
  MSG="$1"
  echo -e "$(_log_prefix debug)${MSG}" >&2
}

function log_info() {
  MSG="$1"
  echo -e "$(_log_prefix info)${MSG}" >&2
}

function log_notice() {
  MSG="$1"
  echo -e "$(_log_prefix notice)${MSG}" >&2
}

function log_warning() {
  MSG="$1"
  echo -e "$(_log_prefix warning)${MSG}" >&2
}

function log_error() {
  MSG="$1"
  echo -e "$(_log_prefix error)${MSG}" >&2
}
