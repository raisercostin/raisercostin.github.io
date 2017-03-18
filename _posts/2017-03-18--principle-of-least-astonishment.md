---
title: The Principle of Least Astonishment is the One
tags: POLA, software principle, common sense, devJargon, surprise
image: 2017-03-18--wtf-wtf-wtf.png
talk: 2017-03-18--principle-of-least-astonishment--talk
talk-title: "What triggered this: DevJargon"
---
![2017-03-18--wtf-wtf-wtf.png](http://raisercostin.org/2017-03-18--wtf-wtf-wtf.png)

It could be that the [Principle of Least Astonishment - POLA](https://en.wikipedia.org/wiki/Principle_of_least_astonishment) is governing our world.

## Simptoms
You're affected if you've been astonished by:
- long debug session - A lot of WTF's take some time.
- long learning/rampup time
- you get explanations like:
  - It's complicated because it is.
  - You can't simplify it.
  - This library/framework needs a paradigm swift in your thinking: scala, playframework, scalaz.
  
## Surprises
The surprises list is long and ranges from benign code smells, non-idioms to anti-patterns and violations of the conventions and common sense.
- logs/exceptions are missing, are swallowed or reported at the wrong level
- conventions are broken
- default coventions/values/things are not intuitive or go against common sense
- overdesign
	- there are multiple concepts to learn when simple ones are enough
	- you need to learn advanced topics to do simple stuff
- scala
  - implicits
  - overdesign - It's very easy to overdesign things in scala. Much easier than in java.
- scalaz
  - operator usage as replacement for good names
  - speciality jargon is mandatory and not optional
- compatibility surprises on the library upgrades: java wasn't that surprising
- global state exists and influences unkown, hard to know places
- there are colateral effects
- magic numbers are surprising
  
If you're an genius in your field you will be able to explain it in simple words: take examples from Feynman, Eninstein, Russel.
