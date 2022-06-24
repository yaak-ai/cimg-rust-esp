# vim:set ft=dockerfile:

FROM cimg/rust:1.61.0

LABEL maintainer="Maxime Borges <maxime@yaak.ai>"

ENV RUST_VERSION=1.61.0 \
	PATH=/home/circleci/.cargo/bin:$PATH

RUN rustup target add aarch64-unknown-linux-gnu