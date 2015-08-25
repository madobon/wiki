
.. code-block:: shell

  $ brew install typesafe-activator


.. code-block:: shell

  $ activator new

.. code-block:: shell

  Fetching the latest list of templates...

  Browse the list of templates: http://typesafe.com/activator/templates
  Choose from these featured templates or enter a template name:
    1) minimal-akka-java-seed
    2) minimal-akka-scala-seed
    3) minimal-java
    4) minimal-scala
    5) play-java
    6) play-scala
  (hit tab to see a list of all templates)
  > play-scala-2.3
  Enter a name for your application (just press enter for 'play-scala-2.3')
  > SecondPlayScala
  OK, application "SecondPlayScala" is being created using the "play-scala-2.3" template.

  To run "SecondPlayScala" from the command line, "cd SecondPlayScala" then:
  /Users/madobon/dev/env/workspace/SecondPlayScala/activator run

  To run the test for "SecondPlayScala" from the command line, "cd SecondPlayScala" then:
  /Users/madobon/dev/env/workspace/SecondPlayScala/activator test

  To run the Activator UI for "SecondPlayScala" from the command line, "cd SecondPlayScala" then:
  /Users/madobon/dev/env/workspace/SecondPlayScala/activator ui

.. code-block:: shell

  $ play-scala-2.3

eclipse のプロジェクトとして扱えるようにします。

.. code-block:: shell

  $ activator eclipse

起動（ http://localhost:9000/ ）

.. code-block:: shell

  $ activator run
