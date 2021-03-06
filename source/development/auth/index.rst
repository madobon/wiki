=======================
HTTP認証
=======================

HTTP/1.1 における初期の認証スキームは以下の 5 つ

* Basic(RFC2617)
* Bearer(RFC6750)
* Digest(RFC2617)
* Negotiate(RFC4559)
* OAuth(RFC5849)

API における認可の枠組みで真っ先に検討すべきなのは OAuth 2.0 。

「OAuth」は OAuth 1.0 を指しており、Bearer は OAuth 2.0 の認証スキームの 1 つ である。

Basic認証
------------

Basic認証では、ユーザ名とパスワードの組みをコロン ":" でつなぎ、Base64でエンコードして送信する。
このため、盗聴や改竄が簡単であるという欠点を持つが、ほぼ全てのWebサーバおよびブラウザで対応しているため、広く使われている。


Digest認証
-----------

Digest認証では、ユーザ名とパスワードをMD5でハッシュ（ダイジェスト）化して送る。
Basic認証では防げなかった盗聴や改竄を防ぐために考案された。

参考文献
----------

WEB+DB PRESS Vol.82 P.26
