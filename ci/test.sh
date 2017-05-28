#!/bin/bash

set -e -x

pushd perilous_wilds
  bundle install
  bundle exec rspec
  git rev-parse HEAD > REVISION
popd

cp -R perilous_wilds/* "workspace"
