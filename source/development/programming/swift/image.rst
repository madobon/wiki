=================
画像の取得
=================

.. contents:: 目次
    :depth: 3

同期的に画像を取得する
===========================

--------------------
パターン1
--------------------

.. code:: Swift

    let url = NSURL(string: "http://www.10wallpaper.com/wallpaper/medium/1209/Cute_Pug-dog_photo_wallpaper_medium.jpg")
    var imageData = NSData(contentsOfURL: url!)
    var image = UIImage(data:imageData!)

--------------------
パターン2
--------------------

.. code:: Swift

    let url = NSURL(string: "http://www.10wallpaper.com/wallpaper/medium/1209/Cute_Pug-dog_photo_wallpaper_medium.jpg")
    let request = NSURLRequest(URL:url!)
    var response: AutoreleasingUnsafeMutablePointer<NSURLResponse?
    >=nil
    var error: NSErrorPointer = nil
    var data = NSURLConnection.sendSynchronousRequest(request, returningResponse: response, error: error)
    image = UIImage(data: data!)

非同期的に画像を取得する
===========================
.. code:: Swift

    let url = NSURL(string: "http://www.10wallpaper.com/wallpaper/medium/1209/Cute_Pug-dog_photo_wallpaper_medium.jpg")
    let request = NSURLRequest(URL:url!)
    NSURLConnection.sendAsynchronousRequest(request, queue: .mainQueue()){
        (reponse, data, error) in

        if error != nil {
            let image = UIImage(data:data)
        } else {
            println(error)
        }
    }
