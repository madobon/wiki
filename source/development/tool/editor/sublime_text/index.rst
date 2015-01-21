==============
Sublime Text
==============

.. contents:: コンテンツ
   :depth: 3
   :local:

概要
=================

* 生産性を３倍にテキストエディタ

おすすめのパッケージ
=================


SublimeLinter
-------------------

文法チェックをしてくれる。

-------------------------
SublimeLinter-annotations
-------------------------

TODO や FIXME などをチェックしてくれる

-------------------------
SublimeLinter-html-tidy
-------------------------

html5

-------------------------
SublimeLinter-jshint
-------------------------

javascript

-------------------------
SublimeLinter-csslint
-------------------------

css

-------------------------
SublimeLinter-json
-------------------------

json

BracketHighlighter
-------------------

開始/終了タグの強調をしてくれる。


ConvertToUTF8
------------------

UTF-8以外の文字に対応させる。Shift_JISとかね。

Emmet
-------

SideBarEnhancements
-----------------------

サイドバーの右クリックメニューを充実させる。

SyncedSideBar
-----------------

今編集しているファイルがサイドバーのどの位置にあるかすぐわかる。

SyncedSideBarBg
-----------------

サイドバーにもテーマを適用してくれる。


TrailingSpaces
------------------

「半角スペースではなく、実は全角スペースが入っていたから・・・」
という障害報告をすることを無くすことが出来ます。

PackageSetting > TrailingSpaces > Setting - User に、以下を追加します。

.. code:: json

    {
        "trailing_spaces_regexp": "\u0085|\u00a0|\u1680|\u180e|[\u2000-\u200a]|\u2028|\u2029|\u202f|\u205f|\u3000|[ \t]+"
    }


参考：`Sublime Text で、空白を可視化する`_

PrettyJSON
-------------

JSONの整形をしてくれる。

* 整形前
    .. code:: json

        {
            "json":{
                "array":[
                "a","b","c","d"
                ],
                "name":"tarou",
                "age":3,
                "like":["mother","father","train"]
            }
        }
* 整形後
    .. code:: json

        {
          "json": {
            "array": [
              "a",
              "b",
              "c",
              "d"
            ],
            "name": "tarou",
            "age": 3,
            "like": [
              "mother",
              "father",
              "train"
            ]
          }
        }

インデントがデフォルトで2なので4に変更したい場合

.. code:: json

    {
        "indent" : 4,
    }


DocBlockr
------------

ソースのDocコメント作成を補助してくれる。

.. code:: js

    /**
     * [description]
     * @param  {[type]} window   [description]
     * @param  {[type]} document [description]
     * @param  {[type]} $        [description]
     * @return {[type]}          [description]
     */
    (function(window, document, $){
        ...




.. link
.. _Sublime Text で、空白を可視化する: http://qiita.com/Nabetani/items/6ab4ff4dd257dc53cef0

OmniMarkupPreviewer
---------------------

マークアップをプレビューしながら書ける。対応言語も沢山。

- Markdown
- reStructuredText
- WikiCreole
- Textile
- Pod (Requires Perl >= 5.10 and can be found in PATH, if the perl version < 5.10, Pod::Simple should be installed from CPAN.)
- RDoc (Requires ruby in your PATH)
- Org Mode (Requires ruby, and gem org-ruby should be installed)
- MediaWiki (Requires ruby, as well as gem wikicloth)
- AsciiDoc (Requires ruby, as well as gem asciidoctor)
- Literate Haskell

プレビューで目次を追加したい場合は末尾に toc を追加してあげましょう。

.. code:: json

    {
        "renderer_options-MarkdownRenderer": {
            "extensions": ["tables", "strikeout", "fenced_code", "codehilite", "toc"]
        }
    }

SublimeCodeIntel
---------------------

Go To Definition
---------------------

Inc-Dec-Value
---------------------

TernJS
---------------------

