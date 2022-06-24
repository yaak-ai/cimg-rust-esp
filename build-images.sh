#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.61/Dockerfile -t yaaktech/cimg-rust-esp:1.61.0 -t yaaktech/cimg-rust-esp:1.61 .
docker build --file 1.61/esp/Dockerfile -t yaaktech/cimg-rust-esp:1.61.0-esp -t yaaktech/cimg-rust-esp:1.61-esp .
docker build --file 1.61/aarch64/Dockerfile -t yaaktech/cimg-rust-esp:1.61.0-aarch64 -t yaaktech/cimg-rust-esp:1.61-aarch64 .
