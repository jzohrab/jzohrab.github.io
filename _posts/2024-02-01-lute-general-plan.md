---
layout: post
title:  Lute general plan (Feb 2024)
categories: lute
---

Lute's going well.

I'm not using Lute enough myself, so I'm losing a feel for what's lacking as an end user, but that's ok.  At some point that will change.

In addition to the regular "keep the lights on work" -- bug fixes and usability changes -- there are a few larger items that should be dealt with.

<!--end_excerpt-->

In no particular order, these are:

## Change to a new organizations for GitHub, PyPi, and Docker Hub.

Currently Lute v3 exists in my personal GitHub, and under my name in PyPI and Docker Hub.  That was fine to start, but I would prefer it to be under a projec or community name.  Anki uses "Ankitects" for GitHub and PyPI: I like this approach.

## Investigate saving all terms, including "Unknown" terms, in the db.

Currently, Lute only stores terms in the db when the user says so, i.e. when I set a status for a term.  All "unknown" terms are excluded from the db.

## Support some kind of "plug in" architecture.

... perhaps.  Originally, I had felt that this was necessary to support different parsers/tokenizers, such as having a "spaCy plugin" to use spaCy to parse different languages; however, this might not be necessary, perhaps this can just be baked in to Lute itself.



