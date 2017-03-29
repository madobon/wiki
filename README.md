# wiki

## 概要

メモ帳のかわりです。

readthedocsでホスティングしてます。
http://madobon-wiki.readthedocs.org/

## ドキュメントのビルド

sphinx-doc-build.batを実行することで、ドキュメントがビルドされます。

### 中でやっていること

```batch
@ECHO OFF

REM イメージをビルド
docker build -t sphinx-doc .

REM コンテナ起動
docker run --rm -v "%cd%":/usr/local/etc/doc sphinx-doc
```

### 前提条件

* OS: Windows 10
* Docker Community Edition がインストールされていること（以下の環境で動作確認済み）
    ```
    Version 17.03.0-ce-win1 (10296)
    Channel: stable
    e5a07a1
    ```
* Docker > Settings > Shared Drives でビルド対象ドキュメントのドライブがシェアされていること