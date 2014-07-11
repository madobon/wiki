基本コマンド
=================

.. contents:: 目次
   :depth: 2

boxの追加
----------------------------------------

http://www.vagrantbox.es/

.. code-block:: bash

    $ vagrant box add {title} {url}

boxの初期化（VagrantFileの生成）
----------------------------------------

.. code-block:: bash

    $ vagrant init {title}

vagrantの起動
----------------------------------------

.. code-block:: bash

    $ vagrant up

vagrantへログイン
----------------------------------------

.. code-block:: bash

    $ vagrant ssh

.. code-block:: bash

    $ ssh vagrant@localhost -p 2222

.. code-block:: bash

    $ ssh vagrant@{guestIP} -p 22
    
vagrantの終了
----------------------------------------

.. code-block:: bash

    $ vagrant halt
