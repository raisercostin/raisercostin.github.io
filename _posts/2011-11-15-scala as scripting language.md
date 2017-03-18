---
Date: 2011-11-15
Title: Scala as scripting language
Tags: howto
Slug: scala-scripting
---
# Windows
## Configure file type associations
As admin you should run the following in console:

    assoc .scala=scalafile
    ftype scalafile=<replace_with_scala_home>\bin\scala.bat -savecompiled "%1" %*

If you don’t want to always add the extension make sure .scala is executable by adding .scala to the PATHEXT variable

    set PATHEXT=.scala;%PATHEXT%

(to make it long term you should actualy use this method http://www.itechtalk.com/thread3595.html)


## Configure a folder for scripts
Now you can add to the path a place where you can put your .scala scripts

    set PATH=<replace_with_scala_scripts_folder>;%PATH%

Create first script
In <replace_with_scala_scripts_folder>\hi.scala you should add:

    #!/bin/sh
    exec scala "$0" "$@"
    !#
    println("hello world in scala script")
    args foreach println
    println("done")

Execute first script
Now from anywhere you can execute:

    hi 1 2 3
This will print

    hello world in scala script
    1
    2
    3
    done

