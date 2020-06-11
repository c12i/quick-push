#!/bin/bash

git_current_branch=`echo $(git symbolic-ref -q HEAD) | cut -d "/" -f 3`

commit_message=%1

if [ $# -eq 0 ]
    then
        git add . && git commit -m $commit_message && git push origin $git_current_branch
    else
        git add . && git commit -m $(date +"%Y-%m-%d_%H-%M") && git push origin $git_current_branch
fi