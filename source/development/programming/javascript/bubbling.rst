.. include:: base.rst

================
バブリング
================

子から親へしゃぼん玉のように伝播していく

|eventflow|
  :width: 50%

http://jsfiddle.net/madobon/d3my03cq/

.. code-block:: html

  <p>Default</p>
  <div id="a3" class="box size3">
    <div id="a2" class="box size2">
      <div id="a1" class="box size1">
      </div>
    </div>
  </div>

  <p>e.stopPropagation()</p>
  <div id="b3" class="box size3">
    <div id="b2" class="box size2">
      <div id="b1" class="box size1">
      </div>
    </div>
  </div>

  <p>e.preventDefault()</p>
  <div id="c3" class="box size3">
    <div id="c2" class="box size2">
      <div id="c1" class="box size1">
      </div>
    </div>
  </div>

  <p>return false;</p>
  <div id="d3" class="box size3">
    <div id="d2" class="box size2">
      <div id="d1" class="box size1">
      </div>
    </div>
  </div>

  <p>e.preventDefault()</p>
  <a id="e1" href="http://google.co.jp" class="box size3">
  </a>
  <a id="e2" href="http://yahoo.co.jp" class="box size2">
      <a id="e3" class="box size1">
      </a>
  </a>

.. code-block:: js

  $(function() {
    $(".box").click(function (e) {
      alert(this.id);
    });
    $("#b2").click(function (e) {
      // 親要素への伝播をキャンセルする
      alert("e.stopPropagation()");
      e.stopPropagation();
    });
    $("#c2").click(function (e) {
      // その要素のイベントをキャンセル
      alert("e.preventDefault()");
      e.preventDefault();
    });
    $("#d2").click(function (e) {
      // その要素のイベントも親要素への伝播も両方キャンセルする
      alert("return false;");
      return false;
    });
    $("#e2").click(function (e) {
      // その要素のイベントをキャンセル
      alert("e.preventDefault()");
      e.preventDefault();
    });
  });

.. code-block:: css

  * { padding: 0px; margin:0px }

  .box { border-style:solid; display:block; }

  .size3 { width:300px; height:300px; background-color:green; }
  .size2 { width:200px; height:200px; background-color:blue; }
  .size1 { width:100px; height:100px; background-color:red; }
