#!/bin/bash

set -e -x

pushd perilous_wilds
  bundle install
  bundle exec rspec
popd
