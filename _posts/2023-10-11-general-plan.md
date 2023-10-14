---
layout: post
title: Lute - The general plan forward
categories: lute
---

Currently, I have a few main areas of work:

# Lute v3

As mentioned in the [Project goal](https://github.com/jzohrab/lute/wiki/Project-goal) in the Lute wiki, Lute v3 will be written in Python.  I've started some work on that (the [Lute v3](https://github.com/jzohrab/lute_v3) repo in GitHub contains some initial scratches), but it's still a ways off.  No ETA in mind yet!

The transition from v2 (PHP) to v3 (Python) is _reasonably_ clear:

| Category | v2 | v2 |
| --- | --- | --- |
| Language | php | python |
| Framework | Symfony | Flask |
| Database | Sqlite | Sqlite |
| ORM | Doctrine | Sqlalchemy |
| Layout | Twig | Jinja2 |
| Testing | PHPUnit | pytest |
| Acceptance Testing | Panther | (tbd) |

Though they're all different, they're surprisingly similar, at least conceptually.  I've used ChatGPT to help translate some code, and it provides a decent first draft, even if it's garbage.

The general approach for the transition of any feature/function is (or will be) as follows:

* get an approximate idea how the code might look in v3
* simplify or refactor that feature/function in Lute v2 as much as possible, to get it closer to the proposed v3 design.  For example, splitting parts of code out into separate namespaces, refactoring, etc.  These changes get released as part of regular Lute releases, so that I'm sure that the redesign is moving in the right direction.
* transition the feature and relevant tests

Some of the Lute v2 code needs real cleanup.  Some of it is over-tested in the unit tests, and the tests can be simplified for v3.

# Fixing issues, adding reasonable new features

Since v3 is a ways out, I'm still considering and implementing new features for Lute.  It's a hard call to make sometimes, because there are some features that are really necessary, in my opinion -- but then, I have to consider if my time is better spent on v3, which is the _right way forward_.

Some features seem easy, but aren't.  Sometimes I seem to make arbitrary choices about what to implement: in these cases, it's either because the feature seems immediately useful, or because implementing it will help me fix design issues and simplify the port to v3.

# Supporting new installs (and Docker installs)

It's super getting new people on board!  But sometimes installs are rough.  With some pushing from an open GitHub pull request, I've started to look at pre-built images, which may simplify installs for some people.

Ultimately, I don't think Docker is the right way to go for Lute.  Docker is kind of a high bar for some, and Docker was never really intended as a mode of application delivery, it's more an operations and software development/delivery/deployment tool.  With Lute v3 in Python, installs should be much easier ... but since Lute v2 is what _exists now_ and is what people can _use now_, Docker's still important!