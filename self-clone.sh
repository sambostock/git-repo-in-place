#! /usr/bin/env bash

REPO=sambostock/self-cloning-repo
URL="https://$REPO.git"

tmpdir=$(mkdir -d)

# https://stackoverflow.com/a/13852329
# `git clone` will only clone into an existing directory if it is empty
# instead, we clone only .git into a temp directory, and copy it over
git clone --no-checkout --verbose --progress $URL $tmpdir
mv $tmpdir/.git .
rm -rf $tmpdir

# TODO: need to figure out what to checkout
echo "figure out what to checkout now"
