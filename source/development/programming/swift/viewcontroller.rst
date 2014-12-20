.. include:: base.rst

===================================
ViewControllerのイベント発火順序について
===================================

- イベント種類
    - `viewDidLoad()`_ : インスタンス化された直後（初回のみ）
    - `viewWillAppear()`_ : 画面が表示される直前
    - `viewDidAppear()`_ : 画面が表示された直後
    - `viewWillDisappear()`_ : 別の画面に遷移する直前
    - `viewDidDisappear()`_ : 別の画面に遷移した直後

.. contents:: 目次
    :depth: 2


初期画面を起動したとき
==================================================================================

#. FirstViewController#viewDidLoad
#. FirstViewController#viewWillAppear
#. FirstViewController#viewDidAppear

初期画面から次画面に遷移したとき
==================================================================================

#. NextViewController#viewDidLoad
#. FirstViewController#viewWillDisappear
#. NextViewController#viewWillAppear
#. FirstViewController#viewDidDisappear
#. NextViewController#viewDidAppear

.. note::
    | NextViewController#viewDidLoad は起動時には呼ばれない。
    | 遷移した時に初めて呼ばれる。

次画面から初期画面に遷移したとき
==================================================================================

#. NextViewController#viewWillDisappear
#. FirstViewController#viewWillAppear
#. NextViewController#viewDidDisappear
#. FirstViewController#viewDidAppear

.. note::
    FirstViewController#viewDidLoad は最初の起動で呼ばれているので、この時は呼ばれない。

再び、初期画面から次画面に遷移したとき
==================================================================================

#. FirstViewController#viewWillDisappear
#. NextViewController#viewWillAppear
#. FirstViewController#viewDidDisappear
#. NextViewController#viewDidAppear

.. note::
    NextViewController#viewDidLoad は最初の遷移で呼ばれたので、2回目以降は呼ばれない。