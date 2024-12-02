TAG=20241201
docker buildx build --no-cache --push --platform linux/amd64 \
  --tag kooriii/dev-env-cpp:latest-amd64 \
  --tag kooriii/dev-env-cpp:${TAG}-amd64 \
  -f ./.docker/Dockerfile .
