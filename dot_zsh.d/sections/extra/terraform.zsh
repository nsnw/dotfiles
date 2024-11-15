# Terraform

if [[ $(which tofu) ]]; then
  TERRAFORM_BIN="tofu"
else
  TERRAFORM_BIN="terraform"
fi

alias tf="${TERRAFORM_BIN}"
alias tfp="${TERRAFORM_BIN} plan"
alias tfi="${TERRAFORM_BIN} init"
alias tfg="${TERRAFORM_BIN} get"
alias tfa="${TERRAFORM_BIN} apply"
alias tff="${TERRAFORM_BIN} fmt"
alias tfd="${TERRAFORM_BIN} apply -destroy"

function _terraform_search_for_roles() {
  GIT_ROOT="$(git rev-parse --show-toplevel)"

  if [[ $? -ne 0 ]]; then
    log_error "Not in a git repo."
    return 1
  fi

  find $(git rev-parse --show-toplevel) -type f -name '*.tf' -maxdepth 6 \
    | grep -v "\.terraform" \
    | xargs -I'{}' egrep "arn:aws:iam::[0-9]+" {} \
    | grep -v "\\$" \
    | awk '{ print $3 }' \
    | sort \
    | uniq \
    | awk -F'"' '{ print $2 }'
}

function tf-roles() {
  _terraform_search_for_roles
}
