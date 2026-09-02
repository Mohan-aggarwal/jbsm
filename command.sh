# REPO_URL https://github.com/Mohan-aggarwal/jbsm

git rm --cached job_sim
git add .
git commit -m "added changes"
gh repo create jbsm --public --source=. --remote=origin --push
git checkout -b update_logo
git add .
git commit -m "updated logo and link"
git push origin update_logo
gh pr create --base main --head update_logo --title "Update logo" --body "Replaces logo and updates link to DirtMate page"
gh pr merge update_logo --merge
