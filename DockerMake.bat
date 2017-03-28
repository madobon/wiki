@ECHO OFF

REM 現在日付
set dat=%date:/=%

REM イメージをビルド
docker build -t sphinx-doc .

REM コンテナ起動
docker run --name="sphinx-doc%dat%" sphinx-doc

REM コピーする
docker cp "sphinx-doc%dat%":/usr/local/etc/doc/build/html .
