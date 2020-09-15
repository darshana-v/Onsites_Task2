#!/usr/bin/bash

# automating the committing process
# by introducing alias commands


echo "To start with committing to your git repository, enter <git_com>"
alias git_com='chmod +x git_commit.sh;./git_commit.sh'

alias auto_com='crontab -e
1 * * * * cd $USER/$repo && git add . && git commit -m "auto_commit" && git push origin master'
