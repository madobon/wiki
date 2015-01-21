==========================================
Vagrant
==========================================

.. contents:: コンテンツ
   :depth: 3
   :local:

概要
==========

* 仮想環境の雛形を作成し、どこでも簡単に同じ環境を再現できるようにするもの
* http://www.vagrantup.com/

基本コマンド
=================

---------
早見表
---------
.. code::

     box             manages boxes: installation, removal, etc.
     connect         connect to a remotely shared Vagrant environment
     destroy         stops and deletes all traces of the vagrant machine
     global-status   outputs status Vagrant environments for this user
     halt            stops the vagrant machine
     help            shows the help for a subcommand
     init            initializes a new Vagrant environment by creating a Vagrantfile
     login           log in to Vagrant Cloud
     package         packages a running vagrant environment into a box
     plugin          manages plugins: install, uninstall, update, etc.
     provision       provisions the vagrant machine
     rdp             connects to machine via RDP
     reload          restarts vagrant machine, loads new Vagrantfile configuration
     resume          resume a suspended vagrant machine
     share           share your Vagrant environment with anyone in the world
     ssh             connects to machine via SSH
     ssh-config      outputs OpenSSH valid configuration to connect to the machine
     status          outputs status of the vagrant machine
     suspend         suspends the machine
     up              starts and provisions the vagrant environment
     vbguest
     version         prints current and latest Vagrant version

----------------------------------------
boxの追加
----------------------------------------

http://www.vagrantbox.es/

.. code:: bash

    $ vagrant box add {title} {url}

----------------------------------------
boxの初期化（VagrantFileの生成）
----------------------------------------

.. code:: bash

    $ vagrant init {title}

----------------------------------------
vagrantの起動
----------------------------------------

.. code:: bash

    $ vagrant up

----------------------------------------
vagrantへログイン
----------------------------------------

.. code:: bash

    $ vagrant ssh

.. code:: bash

    $ ssh vagrant@localhost -p 2222

.. code:: bash

    $ ssh vagrant@{guestIP} -p 22

----------------------------------------
vagrantの終了
----------------------------------------

.. code:: bash

    $ vagrant halt
