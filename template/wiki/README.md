## what is this

To create a repo, you can use this script. Just set the path to the repo dir and run it.
If you already have one, just check it out and remember to have a 'content' subdir with the wiki content.
The main level is for readme files.

```shell
mkdir -p "$JINGO_REPOSITORY"

if [ ! -d "$JINGO_REPOSITORY/.git" ]; then
  OR=$(pwd)
  mkdir -p "$JINGO_REPOSITORY"
  cd "$JINGO_REPOSITORY"
  git init
  touch Home.md
  git add -A Home.md
  git commit -m "Initial commit"
  cd "$OR"
fi
```
