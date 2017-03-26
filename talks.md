---
layout: default
permalink: /talk/
#title: Talks
---
<div class="home">
  <ul class="post-list">
    {% for post in site.talk %}
      <li>
        {% include post-sample.html %}
      </li>
    {% endfor %}
  </ul>
</div>
