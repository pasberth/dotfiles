set nocompatible               " be iMproved
filetype off
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif
" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'mac' : 'make -f make_mac.mak',
      \    },
      \ }
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neocomplcache-snippets-complete'
NeoBundle 'taichouchou2/vim-rsense'

NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'taichouchou2/surround.vim'

NeoBundle 'taichouchou2/vim-rails'
NeoBundle 'romanvbabenko/rails.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-rake'
NeoBundle 'basyura/unite-rails'

NeoBundle 'thinca/vim-ref'
NeoBundle 'taichouchou2/vim-ref-ri'
NeoBundle 'taq/vim-rspec'

NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'

filetype plugin indent on
filetype indent on
syntax on