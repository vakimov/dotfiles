
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Colorise
function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}
RESET="\[\e[0m\]"
BOLD="\[\e[1m\]"
RESET_ATTRIBUTES="\[\e[20m\]"
RESET_BOLD="\[\e[21m\]"
F_GREEN="\[\e[32m\]"
F_RED="\[\e[31m\]"
F_CYAN="\[\e[36m\]"
F_MAGNETA="\[\e[35m\]"
F_YELLO="\[\e[33m\]"
RESET_F_COLOR="\[\e[39m\]"
RESET_B_COLOR="\[\e[49m\]"
PS1="${RESET}${BOLD}\u ${F_MAGNETA}\w ${F_RED}\$(parse_git_branch)${RESET_F_COLOR} $ ${RESET}"
#PS1="\[\033[01;32m\]\u \[\033[01;34m\]\w\[\e[36;1m\]\[\033[31m\] \$(parse_git_branch)\[\033[01;34m\] $ \[\e[0m\]"