:tocdepth: 2

スワイプを検知する
=================

| スワイプをしたタイミングで何か行いたい時などに使います。
| 例えば、音楽プレーヤーで右スワイプで前の曲を再生、左スワイプで次の曲を再生などを実現できるようになります。

.. contents:: 目次
    :depth: 2

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
                    break
                case UISwipeGestureRecognizerDirection.Right:
                    // 右
                    break
                case UISwipeGestureRecognizerDirection.Up:
                    // 上
                    break
                case UISwipeGestureRecognizerDirection.Down:
                    // 下
                    break
                default:
                    // その他
                    break
                }

            }
        }
    }

.. note::
    コールバック用に設定する関数名は任意ですが、引数をもつ場合は末尾に :(coron) をつける必要があります。