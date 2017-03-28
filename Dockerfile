# ベースイメージ
FROM ubuntu

# ubuntuのアップデート
RUN apt-get update -y && \
    apt-get upgrade -y && \
# pip
    apt-get install -y python-pip && \
# sphinx関連
    pip install sphinx_rtd_theme && \
    apt-get install -y python-sphinx make

# ファイルコピー
# ADD . /usr/local/etc/doc
COPY . /usr/local/etc/doc

# 作業ディレクトリ
WORKDIR /usr/local/etc/doc

# ビルド
CMD make html