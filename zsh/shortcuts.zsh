# -*- sh -*-

function t () {
  touch $1 && git add $1
}

function d () {
  git diff
}
