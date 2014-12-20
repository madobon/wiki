.. include:: base.rst

=======================
色付けする
=======================

.. contents:: 目次
    :depth: 2

プリセットで用意されている色
============================

基本的な色は用意されているようです。

- UIColor#blackColor()
- UIColor#darkGrayColor()
- UIColor#lightGrayColor()
- UIColor#whiteColor()
- UIColor#grayColor()
- UIColor#redColor()
- UIColor#greenColor()
- UIColor#blueColor()
- UIColor#cyanColor()
- UIColor#yellowColor()
- UIColor#magentaColor()
- UIColor#orangeColor()
- UIColor#purpleColor()
- UIColor#brownColor()
- UIColor#clearColor()

UIColor()を拡張して便利に
=============================

| やはり同じように思った方は大勢いるんですね。
| CSSなどの16進数表記のカラーコードで色指定できれば便利だと思いませんか？
| そんなときは UIColor を拡張してしまいましょう。

| 今回はこれを使ってみたいと思います。
| https://github.com/yeahdongcn/UIColor-Hex-Swift

--------------
実装方法
--------------

| CSSと同じ感覚で使えます。

.. code:: Swift

    var strokeColor = UIColor(rgba: "#ffcc00").CGColor // Solid color
    var fillColor = UIColor(rgba: "#ffcc00dd").CGColor // Color with alpha
    var backgroundColor = UIColor(rgba: "#FFF") // Supports shorthand 3 character representation
    var menuTextColor = UIColor(rgba: "#013E") // Supports shorthand 4 character representation (with alpha)

--------------
コード
--------------

| せっかくなので、仕組みを理解しておきましょう。
| 基本的には16進数 を 0.0 〜 1.0 の範囲に変換しているだけです。
| alphaにも対応しているので、透明にもできます。

.. code:: Swift

    //
    //  UIColorExtension.swift
    //  RSBarcodesSample
    //
    //  Created by R0CKSTAR on 6/13/14.
    //  Copyright (c) 2014 P.D.Q. All rights reserved.
    //

    import UIKit

    extension UIColor {
        convenience init(rgba: String) {
            var red:   CGFloat = 0.0
            var green: CGFloat = 0.0
            var blue:  CGFloat = 0.0
            var alpha: CGFloat = 1.0

            if rgba.hasPrefix("#") {
                let index   = advance(rgba.startIndex, 1)
                let hex     = rgba.substringFromIndex(index)
                let scanner = NSScanner(string: hex)
                var hexValue: CUnsignedLongLong = 0
                if scanner.scanHexLongLong(&hexValue) {
                    switch (countElements(hex)) {
                    case 3:
                        red   = CGFloat((hexValue & 0xF00) >> 8)       / 15.0
                        green = CGFloat((hexValue & 0x0F0) >> 4)       / 15.0
                        blue  = CGFloat(hexValue & 0x00F)              / 15.0
                        break
                    case 4:
                        red   = CGFloat((hexValue & 0xF000) >> 12)     / 15.0
                        green = CGFloat((hexValue & 0x0F00) >> 8)      / 15.0
                        blue  = CGFloat((hexValue & 0x00F0) >> 4)      / 15.0
                        alpha = CGFloat(hexValue & 0x000F)             / 15.0
                        break
                    case 6:
                        red   = CGFloat((hexValue & 0xFF0000) >> 16)   / 255.0
                        green = CGFloat((hexValue & 0x00FF00) >> 8)    / 255.0
                        blue  = CGFloat(hexValue & 0x0000FF)           / 255.0
                        break
                    case 8:
                        red   = CGFloat((hexValue & 0xFF000000) >> 24) / 255.0
                        green = CGFloat((hexValue & 0x00FF0000) >> 16) / 255.0
                        blue  = CGFloat((hexValue & 0x0000FF00) >> 8)  / 255.0
                        alpha = CGFloat(hexValue & 0x000000FF)         / 255.0
                        break
                    default:
                        print("Invalid RGB string, number of characters after '#' should be either 3, 4, 6 or 8")
                        break
                    }
                } else {
                    println("Scan hex error")
                }
            } else {
                print("Invalid RGB string, missing '#' as prefix")
            }
            self.init(red:red, green:green, blue:blue, alpha:alpha)
        }
    }

-------------
実践
-------------

正方形
-------------

|button1|

.. code:: Swift

    // ボタン：Yes
    let buttonYes = UIButton(frame: CGRectMake(0, 0, 100, 100))
    buttonYes.backgroundColor = UIColor(rgba: "#2980b9")
    buttonYes.layer.masksToBounds = true
    buttonYes.setTitle("Yes!", forState: .Normal)

    // ボタン：No
    let buttonNo = UIButton(frame: CGRectMake(0, 0, 100, 100))
    buttonNo.backgroundColor = UIColor(rgba: "#e74c3c")
    buttonNo.layer.masksToBounds = true
    buttonNo.setTitle("No!", forState: .Normal)

長方形
-------------

|button2|

.. code:: Swift

    // ボタン：Yes
    let buttonYes = UIButton(frame: CGRectMake(0, 0, 200, 100))
    buttonYes.backgroundColor = UIColor(rgba: "#2980b9")
    buttonYes.layer.masksToBounds = true
    buttonYes.setTitle("Yes!", forState: .Normal)

    // ボタン：No
    let buttonNo = UIButton(frame: CGRectMake(0, 0, 200, 100))
    buttonNo.backgroundColor = UIColor(rgba: "#e74c3c")
    buttonNo.layer.masksToBounds = true
    buttonNo.setTitle("No!", forState: .Normal)

正方形（かどまる）ボタン
-------------

|button3|

.. code:: Swift

    // ボタン：Yes
    let buttonYes = UIButton(frame: CGRectMake(0, 0, 100, 100))
    buttonYes.backgroundColor = UIColor(rgba: "#2980b9")
    buttonYes.layer.masksToBounds = true
    buttonYes.layer.cornerRadius = 30.0
    buttonYes.setTitle("Yes!", forState: .Normal)

    // ボタン：No
    let buttonNo = UIButton(frame: CGRectMake(0, 0, 100, 100))
    buttonNo.backgroundColor = UIColor(rgba: "#e74c3c")
    buttonNo.layer.masksToBounds = true
    buttonNo.layer.cornerRadius = 30.0
    buttonNo.setTitle("No!", forState: .Normal)

長方形（かどまる）ボタン
-------------

|button4|

.. code:: Swift

    // ボタン：Yes
    let buttonYes = UIButton(frame: CGRectMake(0, 0, 200, 100))
    buttonYes.backgroundColor = UIColor(rgba: "#2980b9")
    buttonYes.layer.masksToBounds = true
    buttonYes.layer.cornerRadius = 30.0
    buttonYes.setTitle("Yes!", forState: .Normal)

    // ボタン：No
    let buttonNo = UIButton(frame: CGRectMake(0, 0, 200, 100))
    buttonNo.backgroundColor = UIColor(rgba: "#e74c3c")
    buttonNo.layer.masksToBounds = true
    buttonNo.layer.cornerRadius = 30.0
    buttonNo.setTitle("No!", forState: .Normal)

まるいボタン
-------------

|button5|

.. code:: Swift

    // ボタン：Yes
    let buttonYes = UIButton(frame: CGRectMake(0, 0, 100, 100))
    buttonYes.backgroundColor = UIColor(rgba: "#2980b9")
    buttonYes.layer.masksToBounds = true
    buttonYes.layer.cornerRadius = 50.0
    buttonYes.setTitle("Yes!", forState: .Normal)

    // ボタン：No
    let buttonNo = UIButton(frame: CGRectMake(0, 0, 100, 100))
    buttonNo.backgroundColor = UIColor(rgba: "#e74c3c")
    buttonNo.layer.masksToBounds = true
    buttonNo.layer.cornerRadius = 50.0
    buttonNo.setTitle("No!", forState: .Normal)