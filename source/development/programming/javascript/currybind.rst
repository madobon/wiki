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
        return x + y + x;
      }
    }
  }

  curriedFunc(1)(2)(3) // 6

部分適用メソッド
================

| 複数の引数を取る関数を、一部の引数を固定化した関数になおすイメージ

.. code-block:: js

  var bindXFunc = function(x) {
    return function(y, z) {
      return x + y + z;
    }
  }

  bindXFunc(1)(2, 3) // 6
