---
layout: post
title:  Lute v3 porting milestone
categories: lute
---

Lute v3 is getting pretty close to ready:

* All tests ported: check
* All features implemented: check (I think)
* All obvious codo TODOs addressed: check
* Packaged and up on testpypi: check
* Dogfooded and user feedback implemented: **not yet**
* Documentation updates (porting, wiki updates): **not yet**
* etc ...

So I guess it's time to start dogfooding and to get some user notes.

<!--end_excerpt-->

# Time for user feedback?

Lute v3 is a full rewrite in Python, and is (initially) available as alpha software at https://test.pypi.org/project/lute3/.

test.pypy.org is a testing ground before I publish the "for-realsies" `lute3` application to the official PyPi.  I may have messed up some packaging things, so keeping it on test.pypi.org helps keep the release clean.

> It's called `lute3`, and not just `lute`, because there's already a (junk) package called `lute` up on PyPi.

## Pre-reqs

* `lute3` requires Python 3.11, _as far as I know_.  The package specifies 3.11+ as a requirement ... perhaps that can be relaxed, I'm honestly not sure.
* You'll need `pip3` to install it, again as far as I know.

## Installation using pip3

While it's not a necessity, I assume you'll install into some kind of virtual/sandboxed environment.

E.g., using python3 venv, in some empty directory:

```
python3 -m venv .venv
source .venv/bin/activate
```

If you don't want to use a virtual environment, you don't have to.

Then, get the stuff.  test.pypi.org doesn't have all of the packages `lutev3` needs, so you need to install it like this.

```
# In your virtual environment, or not :-)
pip3 install --upgrade --index-url https://test.pypi.org/simple/ --extra-index-url https://pypi.org/simple/ lute3
```

## Running

Assuming you've set up a virtual environment and installed `lute3`:

```
source .venv/bin/activate
python -m lute.main
```

This will start a python process and print a short message:

```
python -m lute.main
  
  Starting Lute:
  
  data path: /Users/jeff/Library/Application Support/Lute3
  database: /Users/jeff/Library/Application Support/Lute3/lute.db
  
  Running at:
  
  http://localhost:5000
  
  When you're finished reading, stop this process
  with Ctrl-C or your system equivalent.
```

Open your web browser to http://localhost:5000 and do your thing ... then when done, go back to that terminal/command line running the `python -m lute.main`, and hit Ctrl-C to stop it.  Then `deactivate` to exit/deactivate the virtual environment if you're using one.

## DON'T USE THIS FOR YOUR REAL DATA JUST YET

If you're feeling sassy, sure, _copy_ your data files from your current lute location to the `data path` shown in the "Starting Lute" message (or in the "software info" link on the main screen).

**BUT** don't _move_ the data.

Lute v3 is pretty damn good, but it's still alpha.  I haven't dogfooded it yet on my own data ("dogfooding" = "use the crap I built so that I suffer firsthand any adverse effects, and am forced to fix them").  I've used it on test data, and the algorithms and tests are the same as were used in Lute v1 and v2, so it should be good.  But you never know!  And I'm going to repackage it eventually anyway for the real pypi release.

# What's different?

Honestly, right now, not much, from the user's perspective:

* No more .env file.  Backup settings are managed through the UI
* Data is -- or _should be_ -- stored in the appropriate spot, as determined by your operating system.  Lute v3 uses a Python library called [PlatformDirs](https://pypi.org/project/platformdirs/) to determine where to store data.  The approach _should_ ensure a relatively smooth installation.
* Configuration for backup settings and custom styles are managed through a "settings" link, as opposed to external files.
* ummmm ... the Lute logo now has three little slashes, to mean "3" ...

From the back-end perspective, of course, everything is completely different.  This is a full rewrite (again!), and IMO the project has taken a big step in the right direction.

# No Docker just yet

I've been scrambling to get the TestPyPi install right, as I feel that's the right first step for packaging.  I haven't made a Dockerfile or Docker image.

Docker work should be pretty straightforward:

* find a base image with Python 3.11
* the lute image build process should:
  * copy the `lute/config/config.yml.docker` file to `lute/config/config.yml`
  * specify some container folder as the config.yml `DATAPATH`
  * specify some container folder as a backup folder
  * blah blah entry point yadda yadda
* a docker-compose.yml file should mount host folders to the datapath and backup folders

# Final state

Well, who knows, we'll get there when we get there.  I expect some kind of thing like:

* a desktop installer (maybe using `pyinstall` or whatever it is, so _really non-techie_ users double-click to run it.
* PyPi package
* Docker for super-keeners
* Source code installs.

Cheers!