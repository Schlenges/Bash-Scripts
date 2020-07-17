USER=$(git config --get user.name)
read -p 'Please enter a repository name: ' REPONAME

curl -u '$USER' https://api.github.com/user/repos -d "{\"name\":\"$REPONAME\"}"
