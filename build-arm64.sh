TAG=20241201
docker buildx build --no-cache --push --platform linux/arm64 \
  --tag kooriii/dev-env-cpp:latest-arm64 \
  --tag kooriii/dev-env-cpp:${TAG}-arm64 \
  -f ./.docker/Dockerfile .
