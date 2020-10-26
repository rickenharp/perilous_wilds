git rev-parse HEAD > REVISION
DOCKER_BUILDKIT=1 docker build --build-arg bundle_without="test development" -t perilous_wilds .
rm REVISION
