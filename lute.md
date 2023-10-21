---
layout: page
title: Lute
permalink: /lute/
---

Lute is free software for learning foreign languages through reading that you install on your machine.  It's free and open source, and always will be.

* [GitHub repository](https://github.com/jzohrab/lute)
* [GitHub wiki](https://github.com/jzohrab/lute/wiki)
* [Lute Discord](https://discord.gg/CzFUQP5m8u)

## Lute v3

Lute v3 is a total rewrite (sigh) of the current Lute in Python.  This is to help meet the [project goal](https://github.com/jzohrab/lute/wiki/Project-goal) of simpler installs and dev participation.

The v3 repo is currently here: https://github.com/jzohrab/lute_v3

### Rewrite progress

The bulk of the rewrite is driven by porting the PHP unit tests to Python, along with the code that makes the tests pass.

![Burndown](/docs/assets/lute/test_burndown.png)

<!-- ref https://tomcam.github.io/least-github-pages/adding-images-github-pages-site.html -->

## Posts

{% for post in site.categories.lute %}
{% if post.url %}
<p>{{ post.date | date_to_long_string }}: <a href="{{ post.url }}">{{ post.title }}</a></p>
{% endif %}
{% endfor %}
