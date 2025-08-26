# Non-blog

Based on Lanyon - https://github.com/poole/lanyon

When pushed to GitHub, GitHub actions build https://jzohrab.github.io/

## New posts

To make a new post:

```
pushd _posts
./__new.sh filename-stuff
popd
```

## Running locally

Install the dependencies (there is probably a better way to do this):

```
gem install bundler jekyll
```

and then to run:

```
bundle exec jekyll serve
```

and the site runs:

```
...
Server address: http://127.0.0.1:4000//
Server running... press ctrl-c to stop.
```