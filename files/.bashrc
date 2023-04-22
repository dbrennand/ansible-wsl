# Enable Git branch name in bash PS1 prompt - https://gist.github.com/danielalvarenga/2df8cabbd6f3041c2378?permalink_comment_id=3712993
function parse_git_branch () {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
RED="\[\033[01;31m\]"
YELLOW="\[\033[01;33m\]"
GREEN="\[\033[01;32m\]"
BLUE="\[\033[01;34m\]"
NO_COLOR="\[\033[00m\]"
PS1="$GREEN\u@\h$NO_COLOR:$BLUE\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "
# Start SSH agent and add private keys to it for use by VSCode remote containers extension
# https://code.visualstudio.com/remote/advancedcontainers/sharing-git-credentials#_using-ssh-keys
eval "$(ssh-agent -s)"
eval "$(ssh-add)"
# https://github.com/pyenv/pyenv#set-up-your-shell-environment-for-pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
