# Sphinx Document Builder
#
# dispatch sphinx-doc-build.bat
# VERSION               0.0.1

# ベースイメージ
FROM ubuntu

# 作者
MAINTAINER madobon <madobonjour@gmail.com>

# ubuntuのアップデート
RUN apt-get update -y && apt-get upgrade -y && \
# pip
    apt-get install -y python-pip && \
# sphinx
    apt-get install -y python-sphinx make && \
# sphinxテーマ
    pip install sphinx_rtd_theme && \
    pip install alabaster && \
    pip install sphinx_bootstrap_theme

# 作業ディレクトリ
WORKDIR /usr/local/etc/doc

# ビルド
CMD make html