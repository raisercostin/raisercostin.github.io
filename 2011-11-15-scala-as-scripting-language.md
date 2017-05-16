---
Date: 2011-11-15
Title: Scala as scripting language
Tags: howto
Slug: scala-scripting
Created: 2011-11-15
Update: 2017-05-16
---
# Problem
What is the solution that satisfies all these constraints:
* Write a script in scala (for example to process some files pdf files via apache poi library)
* You have dependencies on some external libraries. And want to solve the transitive dependencies.
* You want auto-completion to work in your favorite IDE (years ago I didn't realized that)

# Solution

# Analysis

## Solution space
A solution must be along the lines:
* Add libraries on the classpath but you don't have transitive dependencies.
* Clearly you must use a proper build tool: sbt, maven for two purposes:
  * transitive dependencies
  * project generation in your IDE
  * use features like autocompletion (does it work in REPL?)

# Resouces
* http://stackoverflow.com/questions/8254706/scala-as-a-shell-script-jars-on-the-classpath
* http://stackoverflow.com/questions/18812399/how-to-use-third-party-libraries-with-scala-repl

# Deprecated

## Solution 1 - Windows

### Configure file type associations
As admin you should run the following in console:

    assoc .scala=scalafile
    ftype scalafile=<replace_with_scala_home>\bin\scala.bat -savecompiled "%1" %*

If you don’t want to always add the extension make sure .scala is executable by adding .scala to the PATHEXT variable

    set PATHEXT=.scala;%PATHEXT%

(to make it long term you should actualy use this method http://www.itechtalk.com/thread3595.html)


### Configure a folder for scripts
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

