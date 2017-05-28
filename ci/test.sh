#!/bin/bash

set -e -x

pushd perilous_wilds
  git rev-parse HEAD > REVISION
  bundle install
  bundle exec rspec
popd
