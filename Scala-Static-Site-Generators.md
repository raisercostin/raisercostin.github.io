# Sekyll - A static site generator

# Requirements
- articles in markdown
- 


# Technology Selection/Overview
Aspects that should be investigated
- scala
- template engine
  - twril?
  - scala functions?
- how you generate
  - compilation? might need sbt or maven

**Best is lagom.**

# Why not
- twril
  - needs compile of templates (needed if you want type safety)
- scalatex
  - identation matter
  - 

# Resources
## Other implementations
Top: https://www.staticgen.com/

- https://github.com/denisftw/s2gen
- scalatext
  - https://github.com/lihaoyi/Scalatex/blob/master/readme/advanced/CustomTags1.scalatex 
  - http://www.lihaoyi.com/Scalatex/#GettingStarted
- twirl (now relased in playframework)
  - https://github.com/playframework/twirl
  - https://github.com/JakeWharton/twirl-maven-plugin
- punch - site publishing
  - http://laktek.github.io/punch/ - nodejs
- Soapbox - via sbt plugin started from SPublisher
  - https://github.com/arnolddevos/Soapbox
  - https://github.com/arnolddevos/SPublisher (old continued by Soapbox)
- Monkeyman - similar to Middleman
  - https://github.com/wspringer/monkeyman
- Lagom sample
  - https://github.com/lagom/lagom.github.io
  - https://www.lagomframework.com/
  
## Integration with tools
- https://github.com/JakeWharton/twirl-maven-plugin

## Template engines
- http://scalate.github.io/scalate/documentation/mustache.html#features
- http://laktek.github.io/punch/

## Others
- scala code generation http://yefremov.net/blog/scala-code-generation/