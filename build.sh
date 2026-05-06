docker build "$@" --platform linux/arm64 -t rpi64-builder .
docker run --rm --platform linux/arm64 -v "$(pwd):/workspace" -w /workspace rpi64-builder bash -c "mkdir -p /build && cp -r . /build/src && cd /build/src && dpkg-buildpackage -us -uc -b && cp ../*.deb /workspace/"
