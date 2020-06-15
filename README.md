## 概要
WSL2（Ubuntu-18.04を想定）のオレオレ環境構築スクリプト。

## fish.sh
### 前提
特になし。一番最初に実行される想定

### 設定事項
- fishのインストール
- ログインシェルの変更

## basic.fish
### 前提
- fish.shを実行済み
- githubでメールアドレスを非公開に設定

### 設定事項
- 作業ディレクトリの整理
- `~/.config/fish/functions`の設定
- gitの設定
- 秘密鍵・公開鍵の作成

### 備考
brewのインストールは断念した（`pyenv install x.x.x`に影響することがあるため）。

## python_x.fish
### 前提
- fish.shを実行済み

### 設定事項
- pyenv
- pipenv
- poetry
- library

### 備考
`python_1.fish`を実行したら、シェルを再起動して`python_2.fish`を実行する。
自作libraryの中にはMeCabが必要なものもあるため、必要に応じて`mecab.fish`も実行する。

## nvim.fish
### 前提
- fish.shを実行済み
- basic.fishを実行済み
- pyenv.fishを実行済み

### 設定事項
- nvim
- dein

### 備考
初回はnvim内で`:call dein#install()`（と、もしかしたら`:UpdateRemotePlugins`）を実行する必要がある

## docker.fish
### 前提
- fish.shを実行済み

### 設定事項
- docker
- docker-compose

### 備考
docker-composeの動作確認をしたければ、[ここ](https://docs.docker.com/compose/gettingstarted/)に短めのスクリプトがある。

ログイン時に`sudo service docker start`するので、[ここ](https://qiita.com/RyodoTanaka/items/e9b15d579d17651650b7)を見て、sudoersの設定を済ませる。

## gcp.fish
### 前提
- python_x.fishを実行済み

### 設定事項
- Cloud SDK

### 備考
サ―ビスアカウントを作成し、jsonファイルを任意の場所に保存すると各種権限を付与できる。以下のようにパスを指定すること。
```
set -Ux GOOGLE_APPLICATION_CREDENTIALS $HOME/.gcp/xxxxxx.json
```

## mecab.fish
### 前提
- fish.shを実行済み

### 設定事項
- MeCabのインストール
- NEologdのインストール

## bat.fish
### 前提
- dockerのインストール

### 設定事項
- batのDockerイメージをプル
- エイリアスの設定

### 備考
dockerでインストールするのは、Ubuntuだとbatとfishの相性が悪いため。Debianなら公式の方法でインストールして問題ない。

## r.fish
### 前提
- dockerのインストール
### 設定事項
- dr666m1/myrを利用するfunctionsの設定

## node.fish
### 前提
特になし

### 設定事項
- nを使ったnodejsのインストール

## clasp.fish
### 前提
- nodejsのインストール

### 設定事項
- claspのインストール

### 備考
- 利用前に[APIを有効化](https://script.google.com/home/usersettings)する必要がある。
- 一度`clasp login`を実行すると`~/.clasprc.json`に認証情報が保存される。


