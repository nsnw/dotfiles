VIM_DIR="${HOME}/.vim"
VIM_COLOURS_DIR="${VIM_DIR}/colors"
VIM_PLUGINS_DIR="${VIM_DIR}/pack/plugins/start"

function _ensure_vim_plugin_installed() {
  PLUGIN_REPO="$1"
  PLUGIN_DIR="$(echo ${PLUGIN_REPO} | awk -F'/' '{ print $NF }' | cut -f1 -d'.')"

  _ensure_git_repo_cloned ${VIM_PLUGINS_DIR}/${PLUGIN_DIR} ${PLUGIN_REPO}
}

function _ensure_vim_dependencies() {
  _ensure_directory_exists ${VIM_DIR}
  _ensure_directory_exists ${VIM_COLOURS_DIR}
  _ensure_directory_exists ${VIM_PLUGINS_DIR}

  # Install colours
  _ensure_file_downloaded ${VIM_COLOURS_DIR}/molokai.vim https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
  _ensure_file_downloaded ${VIM_COLOURS_DIR}/molokayo.vim https://raw.githubusercontent.com/fmoralesc/molokayo/master/colors/molokayo.vim

  # Install plugins
  _ensure_vim_plugin_installed https://github.com/Yggdroot/indentLine
  _ensure_vim_plugin_installed https://github.com/python-mode/python-mode.git
  _ensure_vim_plugin_installed https://github.com/vim-airline/vim-airline.git
  _ensure_vim_plugin_installed https://github.com/vim-syntastic/syntastic.git
  _ensure_vim_plugin_installed https://github.com/hashivim/vim-terraform.git
  _ensure_vim_plugin_installed https://github.com/juliosueiras/vim-terraform-completion.git
  _ensure_vim_plugin_installed https://github.com/preservim/tagbar.git
  _ensure_vim_plugin_installed https://github.com/tpope/vim-fugitive
  _ensure_vim_plugin_installed https://github.com/davidhalter/jedi-vim.git
  _ensure_vim_plugin_installed https://github.com/tmhedberg/SimpylFold.git
  _ensure_vim_plugin_installed https://github.com/ycm-core/YouCompleteMe.git
  _ensure_vim_plugin_installed https://github.com/elzr/vim-json
}

_ensure_vim_dependencies
