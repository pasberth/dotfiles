dotfiles です。

setup.sh は home/ 以下のものをぜんぶ $HOME にコピーしようとします (もちろん、既に存在するファイルは上書きしません)。
全設定をそのまま使いたい自分用のスクリプト。通常は実行しない方がいいと思う。

でも、このdotfilesは最初の一度だけ prefix/dotfiles-functions.sh にある dotfiles-setup 関数を実行しないといけません。
外部のスクリプトは別のリポジトリに分けてあるのでそれがないといけない。

home/ に置かれたファイルは $HOME に置くべきファイルへのシンボリックリンクになっており、 zsh/ とかには $HOME に置かなくてもいいけど
分けておきたいファイルとかが置かれています。

zshrc とかなら、わざわざ zshrc をコピーしなくても、 source で

  source $DOTFILES_PREFIX/home/.zshrc

って感じに読み込めば設定を試す事ができます (ただし、 $DOTFILES_PREFIX は zshrc で定義されているので、適正な場所に書き換えてください。)

あと、とりあえず Ubuntu ではうまく動かない事を確認してます。
修正しようと思ったけど Ubuntu そんな使わないし〜。
