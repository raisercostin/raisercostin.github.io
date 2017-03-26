---
layout: default
permalink: /bliki/
#title: Bliki
---
<div class="home">
  <ul class="post-list">
    {% for post in site.blikis %}
      <li>
        {% include post-sample.html %}
      </li>
    {% endfor %}
  </ul>
</div>
