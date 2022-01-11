git add .

echo "enter commit message:"

read commitmsg

git commit -m "$commitmsg"

echo "enter branch name":

read branchname

git push origin $branchname 