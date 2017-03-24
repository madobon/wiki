===============
Typescript
===============

インタフェース
==============

.. code-block:: ts

  /**
   * 動物クラス
   */
  class Animal {
      /** 名前 */
      private name: string;

      /** 年齢 */
      private age: number;

      /** コンストラクタ */
      constructor(name, age) {
          this.name = name;
          this.age = age;
      }
  }

  /**
   * ペットインタフェース
   */
  interface IPet {
      nickname: string;
  }

  /**
   * 犬クラス
   */
  class Dog extends Animal implements IPet {
      public nickname: string;
      constructor(name: string, age: number, nickname: string) {
          super(name, age);
          this.nickname = nickname;
      }
  }

  /**
   * 猫クラス
   */
  class Cat extends Animal implements IPet {
      public nickname: string;
      constructor(name: string, age: number, nickname: string) {
          super(name, age);
          this.nickname = nickname;
      }
  }

  console.log(new Dog('パグ', 10, 'ぽち'));
  console.log(new Cat('アメリカンショートヘア', 12, 'たま'));

