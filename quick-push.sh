#!/bin/bash

working_git_branch=`echo $(git symbolic-ref -q HEAD) | cut -d "/" -f 3`

if [ $# -eq 0 ]
    then
        git add . && git commit -m $(date +"%Y-%m-%d_%H-%M") && git push origin $working_git_branch
    else
        git add . && git commit -m "$@" && git push origin $working_git_branch
fi