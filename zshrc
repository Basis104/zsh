# Emacs style key binding
bindkey -e
# 全履歴の一覧を出力する
function history-all { history -E 1 }
# プロンプトのカラー表示を有効
autoload -U colors
colors
# デフォルトの補完機能を有効
autoload -U compinit
compinit
# 補完侯補をEmacsのキーバインドで動き回る
zstyle ':completion:*:default' menu select=1
# 補完の時に大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 先頭がスペースならヒストリーに追加しない。
setopt hist_ignore_space
# cdでpushdする。
setopt auto_pushd
# pushdで同じディレクトリを重複してpushしない。
setopt pushd_ignore_dups
# 補完時にスペルチェックをする。
#setopt auto_correct
# リターンを押す度にスペルチェックをする。
#setopt correct_all
# 補完時にヒストリを自動的に展開する。
setopt hist_expand
# pushd を引数無しで実行した時に pushd ~ とする。
setopt pushd_to_home
# ディレクトリ名だけで移動できる。
setopt auto_cd
# rm * を実行する前に確認される。
setopt rmstar_wait
# カレントディレクトリ中にサブディレクトリが
# 見付からなかった場合に cd が検索する
# ディレクトリのリスト
cdpath=($HOME)
#履歴を保存するファイル指定
HISTFILE="$HOME/.zsh_history"
#履歴の件数
HISTSIZE=100000
SAVEHIST=100000
# 履歴の共有
setopt share_history
# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
# 直前と同じコマンドラインはヒストリに追加しない
setopt hist_ignore_dups
# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space
# ヒストリを呼び出してから実行する間に一旦編集可能
setopt hist_verify
# 補完候補リストの日本語を正しく表示
setopt print_eight_bit

# 色の設定
export LS_COLORS='fi=34:di=31'
export LANG=ja_JP.UTF-8
export LD_LIBRARY_PATH=/usr/local/lib
export PATH=$HOME/.nodebrew/current/bin:$PATH

alias ll='ls -l'
alias ls='ls -G'
alias java='java -Duser.language=en'
alias javac='javac -J-Duser.language=en'

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
