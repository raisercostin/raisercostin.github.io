---
layout: default
---
<article class="post" itemscope itemtype="http://schema.org/BlogPosting">
  <header class="post-header">
    <h1 class="post-title" itemprop="name headline">{{ page.title | escape }}</h1>
	{% include article-header.md article=page %}
  </header>
  <div class="post-content" itemprop="articleBody">
    {{ content }}
  </div>
  <footer>
	{% if page.talk %}
		<a href="/talk/{{ page.talk }}">{{page.talk-title}}</a>
	{% endif %}
	<div class="pagination">  
	  {% if page.previous.url %}  
		<a class="prev" href="{{page.previous.url | relative_url }}">&laquo; Previous - {{page.previous.title}}</a>  
	  {% endif %}  
	  {% if page.next.url %}  
		<a class="next" href="{{page.next.url | relative_url }}">Next - {{page.next.title}} &raquo;</a>  
	  {% endif %}  
	</div>
   <a name="comments"></a>
  {% if site.disqus.shortname %}
    {% include disqus_comments.html %}
  {% endif %}
  </footer>
</article>
