---
title: The Principle of Least Surprise is the One
tags: PLS, software principle, common sense
image: 2017-03-18--wtf-wtf-wtf.png
---
# **The Principle of Least Surprise is the One**

I've worked with playframework-2.5 and I had enough.
It's a nice library but it hits you hard for no apparent reasons. After a debugging session that lasted for 9 days I understood some things.
It might be me, it might be the "stackoverflow programming sindrom", it might be the Donald-Kruger effect or it could be that PLS is broken by this framework.

My thesis is that because of PLS breaches you will observe some simptomps.

## Simptoms
- increased debug time
- increased learning/rampup time
- you get explanations like:
- It's complicated because it is.
  - You can't simplify it.
  - This library/framework needs a paradigm swift in your thinking: scala, playframework, scalaz.
  
## It will be surprising that
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

# What triggered this:
- debugging CSRF swallow of a problem with a unparsable json request that is reported as 403 and logged only at trace level.
- trying to configure handlers in silhouette for exceptions
- upgrading an app from playframework-2.3 to 2.4

## Complain - Playframework 2.5 doesn't process POST requests in json

In play framework I wrote this simple action:

    def watch = {
        logger.info("here watch")
        Action{ implicit request =>
            logger.info("save watch" + Try { parse.json(request) })
            Ok("watch post worked")
        }
    }

If I enable logging to trace level and I'm adding a LoggingFilter besides the other CSRF filters I get the following:

	1177826 [trace] [ent-loop-4] Http request received by netty: com.typesafe.netty.http.DelegateStreamedHttpRequest(DefaultHttpRequest(decodeResult: success, version: HTTP/1.1)
	POST /watch HTTP/1.1
	Host: localhost:9000
	Connection: keep-alive
	Content-Length: 26
	Accept: application/json, text/plain, */*
	Origin: http://localhost:9000
	User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36
	Content-Type: application/json;charset=UTF-8
	Referer: http://localhost:9000/search?query=
	Accept-Encoding: gzip, deflate, br
	Accept-Language: en-US,en;q=0.8,ro;q=0.6,fr;q=0.4
	Cookie: PLAY_SESSION=14b9dda4b4e56c617c99d54794c0baf17490f807-csrfToken=0730cf93ba3ce1414c6d1c9b7426fb3a5f881a52-1489587967714-c19531885d415be4d773639f; JSESSIONID=94B89D1BDD60F3E551C38A1D37F7EBDC; atlassian.xsrf.token=B062-EBCU-7YKG-J0PQ|3b241c97534b549e1326931d96d97a026bc45e36|lin; jira.editor.user.mode=wysiwyg; _ga=GA1.1.1257800365.1489587969; authenticator=1-07fb211abfd5e90a0602d6db424e92415d00d689-1-0hU0bOvTkxIXPhdS62Pmr5z/2f3LC9M2ItCf0vm0UpgnTUr2DshomZ9nn4/EYCo41SnMEg/lqa14+H4ABEoniesVsKwroHX4yIzKkGRipQobO021nwBjkCK+W6F39+ramhXxqGfZG6vcU64qlqGp1mhuRJF83kTwDOCZRT/AVSzPFS8GA6BvGSxynOJMPga6+LspCBcs7Q86KieVtBjIWJyYl+TwHYfoax5KRyjsyMmcL5nhWTXCZYKAdPeCc+fSKxA7368dNmq2kwT1ENUKF/9+NpsRfZCPP2btlUyaXppH2hqTS9sXjyD7vruTZpm7zRdMeaSxA2zSERUjx+7cb+t2DqSm4QaLhtSC8PaTdnpMpu0L9tS6I0c3q5icDWKSTCF0sst9QPsdvN024tPk78pLQAFxtHTxJU7H3ba22q2VA0rwGRr3vaaKmYVxpwaaCvrjiOJ9yv2j36X+uw27xuJU+JKgZ/vrRACP5i/bZwLpn+nQO3eindxUxKmZUjnMuSJAb6BPSkfJm3cvOHQMC6bC6k89krCUgYg+bcvrqVZJW8QoxCvlemU6Cs2+A2SP3GKAjGj9qtuWAJJfM3b5DBN0/4Y4mQIM1DFwTrAH3rRXjbG3n2lDY4tbdy+KilUaLW8b1VzO/Gkcow05PNnFOXPQ3w==; mp_243b76440aa5c5fad0a1ad780feff445_mixpanel=%7B%22distinct_id%22%3A%20%2215ad25c9b5755d-0f0542f644f8c7-5f4e2e1b-232800-15ad25c9b587d5%22%2C%22%24initial_referrer%22%3A%20%22http%3A%2F%2Flocalhost%3A9000%2F%22%2C%22%24initial_referring_domain%22%3A%20%22localhost%3A9000%22%7D; mp_mixpanel__c=3) - play.core.server.netty.PlayRequestHandler.handle               (PlayRequestHandler.scala:59) -
	1177830 [info] [ent-loop-4] here watch                                                                                                               - namek.app.Application$.watch
	   (MessageController.scala:279) -
	1177831 [trace] [ent-loop-4] channelReadComplete: ctx = io.netty.channel.DefaultChannelHandlerContext@4a1c1955                                        - play.core.server.netty.PlayRequestHandler.channelReadComplete  (PlayRequestHandler.scala:187) -
	1177831 [info] [spatcher-5] method=POST uri=/watch remote-address=0:0:0:0:0:0:0:1 domain=localhost query-string= referer=http://localhost:9000/search?query= user-agent=[Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36] - accesslog.apply                (LoggingFilter.scala:25) -
	1177835 [trace] [spatcher-5] [CSRF] Check failed because application/json request                                                                     - play.filters.apply                (CSRFActions.scala:82) -
	1177836 [info] [spatcher-3] POST controllers.MessageController.watch /watch took 5ms and returned 403                                                - utils.LoggingFilter.applyOrElse
	(LoggingFilter.scala:36) -

Request Body

	{"alerts":[{"url":"aaa"}]}
