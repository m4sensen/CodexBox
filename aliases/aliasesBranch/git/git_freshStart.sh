# Create a temporary branch from current state

git checkout --orphan temp-branch

git add .
git commit -m "Initial clean commit"

git branch -D main           # delete the old history branch
git branch -m main           # rename current branch to main

git push -f origin main
