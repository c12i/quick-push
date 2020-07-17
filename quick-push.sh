#!/bin/bash

remote=`git remote`
working_git_branch=`echo $(git symbolic-ref -q HEAD) | cut -d "/" -f 3`

function only_commit() {
    if [ $# -eq 0 ]
    then
        git add . && git commit -m $(date +"%Y-%m-%d_%H-%M")
    else
        git add . && git commit -m "$@"
    fi
}

function commit_and_push() {
    if [ $# -eq 0 ]
    then
        git add . && git commit -m $(date +"%Y-%m-%d_%H-%M") && git push origin $working_git_branch
    else
        git add . && git commit -m "$@" && git push origin $working_git_branch
    fi
}

case $remote in

  "fatal: not a git repository (or any of the parent directories): .git")
    only_commit
    ;;

  *)
    commit_and_push
    ;;
esac