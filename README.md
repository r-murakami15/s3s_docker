Dockerで動作できるようにしました。
## 使い方 🐙
1.
    ```
    # ビルド & Dockerコンテナ立ち上げ
    $ docker compose up -d --build
    ```

1. コンテナ起動後[QiSetup instructions 🔰](https://github.com/frozenpandaman/s3s#setup-instructions-)の5番目を行う。
やってることはstat.inkで会員登録をし、APIキーをコピーすれば良い。

1. 
    ```
    # 起動
    # docker compose exec python3 python s3s.py -M -r -nsr
    ```

1. `stat.ink API key:` と表示されるので、コピーしたAPIキーを貼り付ける。
1. URLが表示されるのでブラウザで開く。「この人にする」ボタンを右クリックし、リンクをコピーして、ターミナルに貼り付ける。
1. `config.txt` が生成されれば成功

### コンテナのシャットダウン
```
# Dockerコンテナ シャットダウン
$ docker compose down
```

## フォーク元 🍴
[frozenpandaman/s3s](https://github.com/frozenpandaman/s3s)