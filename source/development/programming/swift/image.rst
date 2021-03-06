.. include:: base.rst

=================
画像を取得する
=================

- `UIKit Framework`_
- `Foundation Framework`_

.. contents:: 目次
    :depth: 3

Web上から同期的に画像を取得する
===================================

ここでいう同期的とは、画像の取得が終わるまで待ってから次の処理を行うことを指します。

----------------------------------------
NSData(エラーハンドリングなし)
----------------------------------------

.. code-block:: Swift

    let url = NSURL(string: "画像のURL")
    var imageData = NSData(contentsOfURL: url!)
    var image = UIImage(data:imageData!)

----------------------------------------
NSData(エラーハンドリングあり)
----------------------------------------

.. code-block:: Swift

    let url = NSURL(string: "画像のURL")
    var error: NSError?
    var imageData = NSData(contentsOfURL: url!, options: NSDataReadingOptions.DataReadingMappedIfSafe, error: &error)

    if error == nil {
        var image = UIImage(data:imageData!)
    } else {
        println(error)
    }

.. note::
    | NSData の第3引数は NSErrorPointer を引数にする。
    | この場合 NSError の変数の先頭に &(ampersand) をつけることでポインタとして扱われる。

----------------------------------------------------------------------
NSURLConnection.sendSynchronousRequest(エラーハンドリングあり)
----------------------------------------------------------------------

.. code-block:: Swift

    let url = NSURL(string: "画像のURL")
    let request = NSURLRequest(URL:url!)
    var response: NSURLResponse?
    var error: NSError?
    var data = NSURLConnection.sendSynchronousRequest(request, returningResponse: &response, error: &error)

    if (error == nil ) {
        let image = UIImage(data: data!)
    } else {
        println(error)
    }

.. note::
    | NSURLConnection.sendSynchronousRequest(...) の第3引数は NSErrorPointer を引数にする。
    | この場合 NSError の変数の先頭に &(ampersand) をつけることでポインタとして扱われる。

Web上から非同期的に画像を取得する
===================================

ここでいう非同期的とは、画像の取得を待たずに次の処理を行うことを指します。


----------------------------------------------------------------------
NSURLConnection.sendAsynchronousRequest(エラーハンドリングあり)
----------------------------------------------------------------------

.. code-block:: Swift

    let url = NSURL(string: "画像のURL")
    let request = NSURLRequest(URL:url!)
    NSURLConnection.sendAsynchronousRequest(request, queue: .mainQueue()){
        (reponse, data, error) in

        if error == nil {
            let image = UIImage(data:data)
        } else {
            println(error)
        }
    }
