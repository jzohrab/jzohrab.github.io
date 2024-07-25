---
layout: page
title: Guitar
permalink: /guitar/
---

I've been playing for a long time.  I used to be a real showoff, sadly.  Now I'm trying to actually play well, and hopefully help others do the same.

* [Practicing guitar](https://practicing-guitar.readthedocs.io/en/latest/).  A collection of techniques collected from other teachers, books, and websites.
* [YouTube: Relaxing your picking hand and arm](https://www.youtube.com/watch?v=0w0Snc40ejY).  Relaxation is a critical part of playing, and in my opinion hasn't been covered sufficiently for electric guitar.  I adapted some drills from piano, so some of them look really weird, as they're really novel when applied to guitar.  They made a world of difference for me.

## Posts

{% for post in site.categories.guitar %}
{% if post.url %}
<p>{{ post.date | date_to_long_string }}: <a href="{{ post.url }}">{{ post.title }}</a></p>
{% endif %}
{% endfor %}
