# Spaceship options

SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true

PROMPT_BG_1="%K{236}"
PROMPT_BG_2="%K{235}"
PROMPT_BG_3="%K{234}"

# Time
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_COLOR="${PROMPT_BG_1}%F{252}"
SPACESHIP_TIME_FORMAT="%D{%Y-%m-%d %H:%M:%S}"
SPACESHIP_TIME_SUFFIX="${PROMPT_BG_1}"
SPACESHIP_TIME_PREFIX="${PROMPT_BG_1}%F{39}• "

# Python
SPACESHIP_PYENV_PREFIX="${PROMPT_BG_1}%F{46}% Python "
#SPACESHIP_PYENV_SUFFIX="${PROMPT_BG_1} "
SPACESHIP_PYENV_SYMBOL=""
SPACESHIP_PYENV_COLOR="%F{46}%B"

SPACESHIP_VENV_PREFIX="${PROMPT_BG_1} %F{22}%F{34}v:%F{154}"
SPACESHIP_VENV_SUFFIX="${PROMPT_BG_1}%F{22}"
SPACESHIP_VENV_SYMBOL=""
SPACESHIP_VENV_COLOR="%F{154}%B"
#SPACESHIP_VENV_SYMBOL="⮑ "

# Ruby
SPACESHIP_RUBY_PREFIX="${PROMPT_BG_1}%F{160} Ruby "
#SPACESHIP_RUBY_SUFFIX="${PROMPT_BG_1} "
SPACESHIP_RUBY_SYMBOL=""
SPACESHIP_RUBY_COLOR="%F{160}%B"

# Rust
SPACESHIP_RUST_PREFIX="${PROMPT_BG_1}%F{160} Rust "
SPACESHIP_RUST_SUFFIX="${PROMPT_BG_1} "
SPACESHIP_RUST_SYMBOL=""
SPACESHIP_RUST_COLOR="%F{160}%B"

# Chef
SPACESHIP_CHEF_PREFIX="%{%K{172}%F{232}%} Ch "
SPACESHIP_CHEF_SUFFIX="%{%K{172}%} "
SPACESHIP_CHEF_SYMBOL=""
SPACESHIP_CHEF_COLOR="%F{232}%B"

# Consul
SPACESHIP_CONSUL_PREFIX="%{%K{89}%F{15}%} Co "
SPACESHIP_CONSUL_SUFFIX="%{%K{89}%} "
SPACESHIP_CONSUL_SYMBOL=""
SPACESHIP_CONSUL_COLOR="%F{15}%B"

# Node
SPACESHIP_NODE_PREFIX="${PROMPT_BG_1}%F{34} No "
SPACESHIP_NODE_SUFFIX="${PROMPT_BG_1} "
SPACESHIP_NODE_SYMBOL=""
SPACESHIP_NODE_COLOR="%F{34}%B"

# Exec time
SPACESHIP_EXEC_TIME_PREFIX="${PROMPT_BG_1} %F{39}• %K{220}%F{236} "
SPACESHIP_EXEC_TIME_SUFFIX="%K{220} "
SPACESHIP_EXEC_TIME_COLOR=236

# Exit code
SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_EXIT_CODE_PREFIX="${PROMPT_BG_1} %F{39}• %{%K{160}%F{15}%} "
SPACESHIP_EXIT_CODE_SUFFIX="%{%K{160}%} "
SPACESHIP_EXIT_CODE_COLOR=15
SPACESHIP_EXIT_CODE_SYMBOL=""

# Jobs
SPACESHIP_JOBS_PREFIX="%{%K{39}%F{0}%} "
SPACESHIP_JOBS_SUFFIX="%{%K{39}%} "
SPACESHIP_JOBS_COLOR=0
SPACESHIP_JOBS_SYMBOL=""
SPACESHIP_JOBS_AMOUNT_THRESHOLD=0

# Battery
SPACESHIP_BATTERY_PREFIX="%{%K{17}%F{0}%} "
SPACESHIP_BATTERY_SUFFIX="%{%K{17}%} "
SPACESHIP_BATTERY_THRESHOLD=10

RAINBOW="${PROMPT_BG_1}%F{052}▄%K{052}%F{196}▄%K{196}%F{208}▄%K{208}%F{220}▄%K{220}%F{119}▄%K{119}%F{040}▄%K{040}%F{039}▄%K{039}%F{033}▄%K{033}%F{099}▄%K{099}%F{128}▄%K{128}%F{129}▄%K{129}%F{236}▄"

# Dir
SPACESHIP_DIR_PREFIX="${PROMPT_BG_1} ${RAINBOW}${PROMPT_BG_1} %{%k%F{236}%}\n%K{24}${PROMPT_BG_2}%F{24}▌"
SPACESHIP_DIR_SUFFIX=""
SPACESHIP_DIR_TRUNC_REPO=true
SPACESHIP_DIR_TRUNC=0
SPACESHIP_DIR_COLOR=153
SPACESHIP_DIR_LOCK_COLOR=196
SPACESHIP_DIR_LOCK_SYMBOL="%K{235}read-only "

# User
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_COLOR="%F{153}"
SPACESHIP_USER_PREFIX="${PROMPT_BG_2} %k%F{235}\n%K{24}${PROMPT_BG_3}%F{24}▌"
#SPACESHIP_USER_SUFFIX="%{%k%F{45}%}⮀ "
SPACESHIP_USER_SUFFIX="${PROMPT_BG_3} "

# Char
SPACESHIP_CHAR_SYMBOL="${PROMPT_BG_3}$%k%F{234}"
SPACESHIP_CHAR_SYMBOL_ROOT="${PROMPT_BG_3}%F{196}#%k%F{234}"
SPACESHIP_CHAR_COLOR_SUCCESS="green"
SPACESHIP_CHAR_COLOR_FAILURE="green"
SPACESHIP_CHAR_COLOR_SECONDARY="green"

# Host
SPACESHIP_HOST_SHOW=always
# SPACESHIP_HOST_PREFIX="${PROMPT_BG_1} %K{24} "
# SPACESHIP_HOST_PREFIX="%K{24} %K{26} "
SPACESHIP_HOST_PREFIX="${PROMPT_BG_1}%F{24}▌"
SPACESHIP_HOST_SUFFIX="${PROMPT_BG_1} "

# Set hostname to green
SPACESHIP_HOST_COLOR="%F{220}"
SPACESHIP_HOST_COLOR_SSH="%F{34}"

## Host
#SPACESHIP_HOST_SHOW=always
#SPACESHIP_HOST_PREFIX="%{%K{233}%F{45}%}@"
#SPACESHIP_HOST_SUFFIX="%{%k%F{45}%}]"
#
## Set hostname to green
#SPACESHIP_HOST_COLOR="%F{162}"
#SPACESHIP_HOST_COLOR_SSH="%F{34}"


# AWS
SPACESHIP_AWS_PREFIX="${PROMPT_BG_1}%F{208} AWS "
SPACESHIP_AWS_SUFFIX="${PROMPT_BG_1} "
#SPACESHIP_AWS_SYMBOL="☁️  "
SPACESHIP_AWS_SYMBOL=""
SPACESHIP_AWS_COLOR="%B%F{208}"

# Git
SPACESHIP_GIT_SYMBOL=""
SPACESHIP_GIT_BRANCH_PREFIX="${PROMPT_BG_2}• %F{39} %F{45}"
SPACESHIP_GIT_BRANCH_SUFFIX=" "
SPACESHIP_GIT_BRANCH_COLOR="%B%F{39}"

SPACESHIP_GIT_STATUS_PREFIX="${PROMPT_BG_2}%F{58}"
SPACESHIP_GIT_STATUS_SUFFIX="${PROMPT_BG_2}%F{58}"
SPACESHIP_GIT_STATUS_COLOR="${PROMPT_BG_2}"

# Prompt
SPACESHIP_PROMPT_ORDER=(
  host
  time
#  pyenv
  venv
#  ruby
#  node
#  rust
  aws
  exec_time
  exit_code
  jobs
  battery
  dir
  git
  user
  char
)

#SPACESHIP_RPROMPT_ORDER=(
#  git
#)
