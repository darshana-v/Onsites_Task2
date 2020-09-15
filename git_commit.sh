#!/usr/bin/bash
# script performing the task of initializing and committing to git.


# install git in case it's not already installed
sudo apt update
sudo apt -y install git-all

# getting information of user
read -p "Enter your name to connect to github" name
read -p "Enter your email to connect to github" email

git config --global user.name "$name"
git config --global user.email "$email"


# getting information of user's github
read -p "Enter your git username" username
read -p "Enter the repository name" repo

git clone https://github.com/$username/$repo.git
cd $repo

git add .
git commit -m "first_commit"
git pull origin master
git push origin master

echo "First commit: success!
To continue with automating task of committing to your repo every min, enter <auto_com>"












