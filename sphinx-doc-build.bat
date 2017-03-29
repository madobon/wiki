@ECHO OFF

REM イメージをビルド
docker build -t sphinx-doc .

REM コンテナ起動
docker run --rm -v "%cd%":/usr/local/etc/doc sphinx-doc