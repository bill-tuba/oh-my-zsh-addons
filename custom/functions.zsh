# create and cd to a directory
function mkd() {
    mkdir -p "$@" && cd "$@"
}

# shows the commit and diff for the last change to $LINE in $FILE
function git_show_change() {
    FILE=$1
    LINE=$2
    git show $(git blame ${FILE} -L ${LINE},${LINE} | awk '{print $1}')
}

# look in busprod101 command history for sudo command to plug in here
function be() {
    echo $@
}
