# 概要
WSL2をセットアップするためのシェルスクリプト。
Ubuntu-18.04を想定

# fish.sh
## 前提
特になし。一番最初に実行される想定。

## 設定事項
fishのインストール

# basic.fish
## 前提
- fish.shを実行済み

## 設定事項
- パス
- 自作関数
- 基本的なコマンド
- ssh関連

## 備考
brewのインストールは断念した（`pyenv install x.x.x`に影響することがあるため）。

# python_x.fish
## 前提
- fish.shを実行済み

## 設定事項
- pyenv
- pipenv
- library

## 備考
`python_1.sh`を実行したら、シェルを再起動して`python_2.sh`を実行する。

自作libraryの中にはMeCabが必要なものもあるため、必要に応じて`mecab.fish`も実行する。

# nvim.fish
## 前提
- fish.shを実行済み
- basic.fishを実行済み
- pyenv.fishを実行済み

## 設定事項
- nvim
- dein

## 備考
初回はnvim内で`:call dein#install()`（と、もしかしたら`:UpdateRemotePlugins`）を実行する必要がある

# docker.sh
## 前提
- fish.shを実行済み

## 設定事項
- docker
- docker-compose

# gcp.sh
## 前提
- python.shを実行済み

## 設定事項
- Cloud SDK

## 備考
サ―ビスアカウントの作成（https://console.cloud.google.com/iam-admin/serviceaccounts）し、任意の場所に保存。
.bashrcに以下を書き込んでおくとよい。
```
export GOOGLE_APPLICATION_CREDENTIALS="$HOME/.gcp/xxxxxx.json"
```

# mecab.fish
## 前提
- fish.shを実行済み

## 設定事項
- MeCabのインストール
- NEologdのインストール

# bat.fish
## 前提
- dockerのインストール

## 設定事項
- batのDockerイメージをプル
- エイリアスの設定

## 備考
- dockerでインストールするのは、なぜかfishと相性が悪いため。Debianなら公式の方法でインストールして問題ない。
