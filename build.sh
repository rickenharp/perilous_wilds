git rev-parse HEAD > REVISION
docker build --build-arg bundle_without="test development" -t perilous_wilds .
rm REVISION
