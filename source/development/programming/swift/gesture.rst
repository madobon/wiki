.. include:: base.rst

=======================
ジェスチャーを認識する
=======================

`UIGestureRecognizer`_ によって提供される、ジェスチャー認識機能を駆使しましょう。

- ジェスチャーの種類
    - `UITapGestureRecognizer`_ : タップ
    - `UIPinchGestureRecognizer`_ : ピンチインアウト
    - `UIPanGestureRecognizer`_ : パン（ドラッグ）
    - `UISwipeGestureRecognizer`_ : スワイプ
    - `UIRotationGestureRecognizer`_ : 回転（指２本で）
    - `UILongPressGestureRecognizer`_ : 長押し

.. contents:: 目次
    :depth: 2


タップを認識する
=======================

| タップをしたタイミングで何か行いたい時などに使います。
| 例えば、地図アプリでダブルタップしたらズームするとか。

.. code:: Swift


    import UIKit

    class ViewController: UIViewController {

        override func viewDidLoad() {

            super.viewDidLoad()

            // タップ検知用
            addTapRecognizer()
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }

        /**
        * タップ検知用に登録
        */
        func addTapRecognizer() {
            var singleTap = UITapGestureRecognizer(target: self, action: "taped:")
            singleTap.numberOfTapsRequired = 1

            var doubleTap = UITapGestureRecognizer(target: self, action: "taped:")
            doubleTap.numberOfTapsRequired = 2

            var tripleTap = UITapGestureRecognizer(target: self, action: "taped:")
            doubleTap.numberOfTapsRequired = 3

            self.view.addGestureRecognizer(singleTap)
            self.view.addGestureRecognizer(doubleTap)
            self.view.addGestureRecognizer(tripleTap)
        }

        /**
        * タップ
        */
        func taped(gesture: UIGestureRecognizer) {

            if let tapGesture = gesture as? UITapGestureRecognizer {

                switch tapGesture.numberOfTapsRequired {
                case 1:
                    // シングル
                    println("single tap")
                case 2:
                    // ダブル
                    println("double tap")
                case 3:
                    // トリプル
                    println("triple tap")
                default:
                    // その他
                    println("other")
                    break
                }
            }
        }
    }

.. note::
    | コールバック用に設定する関数名は任意ですが、引数をもつ場合は末尾に :(coron) をつける必要があります。
    | Swift の switch 文は break しなくても break してくれます。 break したくない時は fallthrough をつけてあげましょう。

スワイプを認識する
=======================

| スワイプをしたタイミングで何か行いたい時などに使います。
| 例えば、音楽プレーヤーで右スワイプで前の曲を再生、左スワイプで次の曲を再生などを実現できるようになります。

.. code:: Swift

    import UIKit

    class ViewController: UIViewController {

        override func viewDidLoad() {

            super.viewDidLoad()

            // スワイプ検知用
            addSwipeRecognizer()
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }

        /**
         * スワイプ検知用に登録
         */
        func addSwipeRecognizer() {
            var swipeLeft = UISwipeGestureRecognizer(target: self, action: "swiped:")
            swipeLeft.direction = UISwipeGestureRecognizerDirection.Left

            var swipeRight = UISwipeGestureRecognizer(target: self, action: "swiped:")
            swipeRight.direction = UISwipeGestureRecognizerDirection.Right

            var swipeUp = UISwipeGestureRecognizer(target: self, action: "swiped:")
            swipeUp.direction = UISwipeGestureRecognizerDirection.Up

            var swipeDown = UISwipeGestureRecognizer(target: self, action: "swiped:")
            swipeDown.direction = UISwipeGestureRecognizerDirection.Down

            self.view.addGestureRecognizer(swipeLeft)
            self.view.addGestureRecognizer(swipeRight)
            self.view.addGestureRecognizer(swipeUp)
            self.view.addGestureRecognizer(swipeDown)
        }

        /**
         * スワイプ
         */
        func swiped(gesture: UIGestureRecognizer) {

            if let swipeGesture = gesture as? UISwipeGestureRecognizer {

                switch swipeGesture.direction {
                case UISwipeGestureRecognizerDirection.Left:
                    // 左
                    println("left")
                case UISwipeGestureRecognizerDirection.Right:
                    // 右
                    println("right")
                case UISwipeGestureRecognizerDirection.Up:
                    // 上
                    println("up")
                case UISwipeGestureRecognizerDirection.Down:
                    // 下
                    println("down")
                default:
                    // その他
                    println("other")
                    break
                }

            }
        }
    }

.. note::
    コールバック用に設定する関数名は任意ですが、引数をもつ場合は末尾に :(coron) をつける必要があります。