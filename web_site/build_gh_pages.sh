#!/bin/sh

# simple script to build and push to gh-pages
# designed to be run from master

# this version used a separate copy of the repo in a parallel dir
# to keep the gh-pages branch nicely separate from the main branch.
# this makes it easier to have the index.html in the root dir
#  -- to be nicely served by gh-pages


GHPAGESDIR=../../ADIOS-gitHub.gh-pages

# make sure gh-pages dir is there -- exit if not
if [ ! -d $GHPAGESDIR ]; then
    echo "To build the gitHub pages, you must first create a parallel repo: $GHPAGESDIR"
    exit
fi

if [ ! -d $GHPAGESDIR/.git ]; then
    echo "To build the gitHub pages, you must first create a parallel repo: $GHPAGESDIR"
    echo "It must be a git repo -- do a new git clone"
    echo "if the repo does not already have a gh_pages branch, be sure to create it"
    echo "in the new $GHPAGESDIR dir"
    exit
fi

# make sure that the main branch is pushed, so that pages are in sync with master
git commit -a -m "committing before bulding gh_pages"
git push

# make sure the gh pages repo is in the right branch
pushd $GHPAGESDIR
git checkout gh-pages
popd

# make the docs
make html
# copy to the copy of the repo (on the gh-pages branch)
cp -fR build/html/* $GHPAGESDIR

pushd $GHPAGESDIR
git add .  # in case there are new files added
git commit -a -m "updating rendered web page"
git branch -u origin/gh-pages  # make sure we're tracking origin
git pull -s ours --no-edit  # gotta pull before push -- yet maintain local updates
git push
popd

echo "Now verify the render on github.io at the following link:"
echo "https://noaa-orr-erd.github.io/ADIOS/"


