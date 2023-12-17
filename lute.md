---
layout: page
title: Lute
permalink: /lute/
---

Lute is free software for learning foreign languages through reading that you install on your machine.  It's free and open source, and always will be.

Lute was originally in PHP, but then was rewritten to Python to make user installation much easier, and hopefully drive some more developer participation.

* [A short YouTube video](https://www.youtube.com/watch?v=7X3OkcljoCk) showing installation and usage.
* [GitHub repository](https://github.com/jzohrab/lute-v3)
* [The manual](https://jzohrab.github.io/lute-manual), with installation notes, usage, etc.
* [Lute Discord](https://discord.gg/CzFUQP5m8u)

Lute v3 was launched Nov 2023.

## Posts

{% for post in site.categories.lute %}
{% if post.url %}
<p>{{ post.date | date_to_long_string }}: <a href="{{ post.url }}">{{ post.title }}</a></p>
{% endif %}
{% endfor %}
