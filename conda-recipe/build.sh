#!/bin/sh

# hack: using the checked source as if it was fetched by 'go get ...'
mkdir -p go/src/github.com/github
ln -s `pwd` go/src/github.com/github/hub
export GOPATH=`pwd`/go

make install
