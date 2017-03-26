<p class="post-meta">
	{% capture readtime %}{{ include.article.content | number_of_words | plus:91 | divided_by:180.0 | append:'.' | split:'.' | first }}{% endcapture %}
	{% if include.article.date %}<time datetime="{{ include.article.date | date_to_xmlschema }}" itemprop="datePublished">{{ include.article.date | date: "%Y %b %-d" }}</time>{% endif %}
	 • {% if readtime == '0' %} &lt; 1{% else %}{{ readtime }}{% endif %} min. read
	{% if include.article.author %} • <span itemprop="author" itemscope itemtype="http://schema.org/Person"><span itemprop="name">{{ include.article.author }}</span></span>{% endif %}
	<a href="{{ include.article.url | relative_url }}#comments" data-disqus-identifier="{{ include.article.path | split:'/' | last | cgi_escape }}">Comments</a>
	{% if include.article.category %} • {% for category in include.article.category %} {{ category }} {% endfor %}{% endif %}
	{% if include.article.categories %} • {% for category in include.article.categories %} {{ category }} {% endfor %}{% endif %}
	{% if include.article.tags %} • {% for category in include.article.tags %} {{ category }} {% endfor %}{% endif %}
</p>
