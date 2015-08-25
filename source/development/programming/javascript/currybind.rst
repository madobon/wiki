===================================
関数のカリー化と部分適用
===================================

通常メソッド
===============

.. code-block:: js

  var func = function(x, y, z) { return x + y + z }

  func(3, 2, 1)

カリー化メソッド
=================

| 複数の引数を取る関数を、引数をひとつだけ取る関数になおすイメージ

.. code-block:: js

  var curriedFunc = function(x) {
    return function(y) {
      return function(z) {
        return x + y + z;
      }
    }
  }

  curriedFunc(1)(2)(3) // 6

部分適用メソッド
================

| 複数の引数を取る関数を、一部の引数を束縛（固定化）した関数になおすイメージ

.. note::

  Function.prototype.bind を利用することで、部分適用が簡単に実現できる。
  第一引数: 新しい関数のthisキーワードにセットされる。
  第二引数以降: ターゲット関数の引数として、第一引数から順に与えられる。

.. code-block:: js

  var bindXFunc = function(x) {
    return function(y, z) {
      return x + y + z;
    }
  }

  bindXFunc(1)(2, 3) // 6

.. code-block:: js

  var func = function(x, y, z) { return x + y + z }

  func.bind(this)(1, 2, 3) // 6 値の束縛をしない関数を返却し、引数(1, 2, 3) を与える。
  func.bind(this, 1)(2, 3) // 6 引数(1)を束縛した関数を返却し、引数(2, 3) を与える。
  func.bind(this, 1, 2)(3) // 6 引数(1, 2)を束縛した関数を返却し、引数(3) を与える。
