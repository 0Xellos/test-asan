docker build . -t test-asan
docker run -v $(pwd):/root/test-asan --entrypoint=/root/entrypoint.sh -it test-asan
