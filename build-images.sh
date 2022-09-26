#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.61/cargo-deb/Dockerfile -t yaaktech/cimg-rust-esp:1.61.0--cargo-deb -t yaaktech/cimg-rust-esp:1.61--cargo-deb .
