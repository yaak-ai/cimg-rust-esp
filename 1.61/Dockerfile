# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

FROM cimg/rust:1.61.0

LABEL maintainer="Maxime Borges <maxiem@yaak.ai>"

ENV RUST_VERSION=1.61.0 \
	PATH=/home/circleci/.cargo/bin:$PATH

RUN curl -LO https://github.com/esp-rs/rust-build/releases/download/v${RUST_VERSION}.0/install-rust-toolchain.sh && \
	chmod a+x install-rust-toolchain.sh && \
	./install-rust-toolchain.sh --toolchain-version ${RUST_VERSION}.0

RUN rustup target add aarch64-unknown-linux-gnu
RUN rustup target add aarch64-unknown-linux-musl

RUN curl -L https://github.com/ryankurte/cargo-binstall/releases/latest/download/cargo-binstall-x86_64-unknown-linux-musl.tgz | tar xz -C ~/.cargo/bin
RUN cargo binstall --no-confirm espflash

COPY sources-ports.list /etc/apt/sources.list.d/ports.list
RUN sudo dpkg --add-architecture arm64 && \
	sudo sed -i 's#deb http://archive.ubuntu.com/ubuntu/#deb [arch=amd64] http://archive.ubuntu.com/ubuntu/#' /etc/apt/sources.list && \
	sudo sed -i 's#deb http://security.ubuntu.com/ubuntu/#deb [arch=amd64] http://security.ubuntu.com/ubuntu/#' /etc/apt/sources.list

RUN sudo apt-get update && \
	sudo apt-get install --assume-yes pkg-config libudev-dev:arm64 gcc-aarch64-linux-gnu libuv1-dev libudev-dev python3-pip
