#===== mecab =====
export SYSTEM_DIC="$(mecab-config --dicdir)/mecab-ipadic-neologd"
export USER_DIC="$HOME/.dic/user.dic"
alias mydic="/usr/lib/mecab/mecab-dict-index -d $SYSTEM_DIC -u $USER_DIC -f utf-8 -t utf-8 $HOME/.dic/user.csv"
