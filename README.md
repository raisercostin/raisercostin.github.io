---
layout: none
---
# raisercostin's blog
My blog

## Configure generation
- Use `excerpt_separator: "{{ more }}"` to configure the separator between excerpt and the rest of post's content.

## Configure posts
- disable disqus display comments in minima theme `comments: false`
- add `noindex:   true` to remove article from robots.txt and/or sitemap.xml
- add `update:    true` to add article to sitemap.xml as updated
- to separate excerpt from the rest of article add `"{{ more }}"` after a phrase or two.
- add `slug:` to override the way permalink is computed. the default value will use the date from markdown filename
- add `permalink:` to override the way permalink is computed.

# Docs

## Cheatsheets
- http://ricostacruz.com/cheatsheets/jekyll.html

## Templates
- https://github.com/jekyll/minima

## Designes that I like or have specific features
- http://movingtofreedom.org/ - design, next/prev post
- http://www.scottaaronson.com/blog/?m=200601 - archive
- http://ricostacruz.com/til/ - https://github.com/rstacruz/til 
- http://ricostacruz.com/cheatsheets/jekyll.html - https://github.com/rstacruz/cheatsheets
- https://github.com/google/dagger/tree/gh-pages

# TODO
- fix title, h1-h6 styles
- notations/syntax for
  - alternative terms in romanian `(ro:romanian term)`
  - wiki style references to "upcomming disambiguation"
  - use hashtags & wiki ? or maybe use `^LinkToWikiTerm`
  - comments rendered
  - comments unrendered
  - inspired by
    - waitbutwhy
      - side nodes
      - note
      - boring note
    - medium
      - section comment?
    - wiki
      - metadata/edit talk/comments
  - render markdown in javascript
    - enables you to see the source
    - enables to edit via a comment/edit microservice?
      - maybe send colaborative commits/pull requests
  - microservice to generate image based on words
  - include image at the beggining of a heading
  - use wiki instead jekyll to generate a static site.
  - use wiki with javascript (tin*..) to edit locally in firefox the wiki and add it to git

  - start to use wiki
    - https://www.quora.com/What-are-some-examples-of-very-well-made-GitHub-wiki-pages-for-open-source-projects
	- https://github.com/showcases/projects-with-great-wikis
	- https://github.com/integrations
	- https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
  - study
    - http://brm.io/jekyll-post-links/
	
Meniu: Bliki(bliki) Talks(talk) Resume(resume) Blog(blog)
