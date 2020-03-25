# 概要
WSLをセットアップするためのシェルスクリプト。

純粋なLinuxやmacのターミナルのセットアップに利用するには若干の変更が必要です。

# basic.sh
## 前提
特になし。一番最初に実行される想定。

## 設定事項
- 環境変数
- エイリアス
- 関数
- ssh関連
- (brew)

## 備考
brewのインストールはコメントアウトしている（`pyenv install x.x.x`に影響することがあるため）。
gitのエディタをnvimに設定しているため、nvim.shの実行前はエラーになる想定。

# python_x.sh
## 前提
特になし

## 設定事項
- pyenv
- pipenv
- library

## 備考
`python_1.sh`を実行したら、シェルを再起動して`python_2.sh`を実行する。

# nvim.sh
## 前提
- basic.shを実行済み
- pyenv.shを実行済み

## 設定事項
- nvim
- dein

## 備考
初回はnvim内で`:call dein#install()`（と、もしかしたら`:UpdateRemotePlugins`）を実行する必要がある

# docker.sh
## 前提
- docker for windowsをインストール済み

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


# r.sh
## 前提
- docker.shを実行済み

## 設定事項
- dr666m1/rjupyterのdockerイメージを取得
- データコンテナの作成
- aliasの設定

# mecab.sh
## 前提
特になし
