# -*- sh -*-
# For Mountain Lion
# ==========================================================

# for homebrew
export PATH=/usr/local/bin:$PATH

export MAKEFILEPATH=/Applications/Xcode.app/Contents/Developer/Makefiles

alias ghc='ghc-7.6.3 -L/usr/lib'
alias cabal='cabal --ghc-options=-L/usr/lib'
