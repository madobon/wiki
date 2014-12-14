スワイプ検知
=================

.. contents:: 目次
    :depth: 2

.. code:: Swift

    override func viewDidLoad() {

        super.viewDidLoad()

        // スワイプ検知用
        addSwipeRecognizer()
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
