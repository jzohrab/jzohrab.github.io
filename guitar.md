---
layout: page
title: Guitar
permalink: /guitar/
---

I've been playing guitar for a long time.  I used to be a real showoff, sadly.  Now I'm trying to actually play well, and hopefully help others do the same.

* [YouTube: Relaxing your picking hand and arm](https://www.youtube.com/watch?v=0w0Snc40ejY).  This is a series of exercises to find "zero tension" while picking.  The exercises were adapted from a super piano instruction video named "Freeing the Caged Bird" by instructor Barbara Lister-Sink, so they look pretty weird, but they're a novel approach and made a world of difference for me.  I feel this video is a great contribution to guitar technique, and I can say that because nothing here is my idea.
* [Practicing guitar](https://practicing-guitar.readthedocs.io/en/latest/).  A collection of techniques collected from other teachers, books, and websites.

## Posts

{% for post in site.categories.guitar %}
{% if post.url %}
<p>{{ post.date | date_to_long_string }}: <a href="{{ post.url }}">{{ post.title }}</a></p>
{% endif %}
{% endfor %}
