TAG=20241201

docker manifest create kooriii/dev-env-cpp:latest --amend kooriii/dev-env-cpp:latest-arm64 --amend kooriii/dev-env-cpp:latest-amd64
docker manifest annotate kooriii/dev-env-cpp:latest kooriii/dev-env-cpp:latest-amd64 --arch amd64
docker manifest annotate kooriii/dev-env-cpp:latest kooriii/dev-env-cpp:latest-arm64 --arch arm64
docker manifest push kooriii/dev-env-cpp:latest

docker manifest create kooriii/dev-env-cpp:${TAG} --amend kooriii/dev-env-cpp:${TAG}-arm64 --amend kooriii/dev-env-cpp:${TAG}-amd64
docker manifest annotate kooriii/dev-env-cpp:${TAG} kooriii/dev-env-cpp:${TAG}-amd64 --arch amd64
docker manifest annotate kooriii/dev-env-cpp:${TAG} kooriii/dev-env-cpp:${TAG}-arm64 --arch arm64
docker manifest push kooriii/dev-env-cpp:${TAG}