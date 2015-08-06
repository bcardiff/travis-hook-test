rev=$(git rev-parse --short HEAD)

cp ./src/* ./build/

git config --global user.email "bcardiff@manas.com.ar"
git config --global user.name "Travis on behalf Brian J. Cardiff"

git remote add upstream "https://$GH_TOKEN@github.com/bcardiff/travis-hook-test"
git fetch upstream
git reset upstream/master

git add -A .
git commit -m "rebuild pages at ${rev}"
git push -q upstream HEAD:master
