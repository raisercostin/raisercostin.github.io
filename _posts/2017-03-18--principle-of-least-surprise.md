---
title: The Principle of Least Surprise is the One
tags: PLS, software principle, common sense
image: 
---
I've worked with playframework-2.5 and I had enough.
It's a nice library but it hits you hard for no apparent reasons. After a debugging session that lasted for 9 days I understood some things.
It might be me, it might be the "stackoverflow programming sindrom", it might be the Donald-Kruger effect or It could be that PLS is broken by this framework.

My thesis is that because of PLS breaches you will observe some simptomps.

Simptoms
	- increased debug time
	- increased learning/rampup time
	- You get explanations like:
	  - It's complicated because it is.
	  - You can't simplify it.
	  - This library/framework needs a paradigm swift in your thinking: scala, playframework, scalaz.
  
It will be surprising that
	- logs/exceptions are missing, are swallowed or reported at the wrong level
	- conventions are broken
	- default coventions/values/things are not intuitive or go against common sense
	- overdesign
		- there are multiple concepts to learn when simple ones are enough
		- you need to learn advanced topics to do simple stuff
	- scala - implicits
	- scalaz - operator usage
	- speciality jargon is mandatory and not optional: scalaz
	- compatibility problems when libraries are upgraded: java wasn't surprising
	- global state exists and influences unkown, hard to know places
	- there are colateral effects

  
If you're an genius in your field you will be able to explain it in simple words: take examples from Feynman, Eninstein, Russel.

What triggered this:
- debugging CSRF swallow of a problem with a unparsable json request that is reported as 403 and logged only at trace level.
- trying to configure handlers in silhouette for exceptions
- upgrading an app from playframework-2.3 to 2.4