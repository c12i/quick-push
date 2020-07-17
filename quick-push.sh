#!/bin/bash

remote=`git remote`
working_git_branch=`echo $(git symbolic-ref -q HEAD) | cut -d "/" -f 3`
fatal="fatal: not a git repository (or any of the parent directories): .git"

case $remote in
  fatal)
    if [ $# -eq 0 ]
    then
        git add . && git commit -m $(date +"%Y-%m-%d_%H-%M")
    else
        git add . && git commit -m "$@"
    fi
    echo "No remote repo, only committing"
    ;;

  origin)
    if [ $# -eq 0 ]
    then
        git add . && git commit -m $(date +"%Y-%m-%d_%H-%M") && git push origin $working_git_branch
    else
        git add . && git commit -m "$@" && git push origin $working_git_branch
    fi
    ;;

  *)
    if [ $# -eq 0 ]
    then
        git add . && git commit -m $(date +"%Y-%m-%d_%H-%M") && git push origin $working_git_branch
    else
        git add . && git commit -m "$@" && git push origin $working_git_branch
    fi
    ;;
esac