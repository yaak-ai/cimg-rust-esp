# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

FROM cimg/base:2022.04

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV RUST_VERSION=1.61.0 \
	PATH=/home/circleci/.cargo/bin:$PATH

RUN curl -O https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init && \
	chmod +x rustup-init && \
	./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION && \
	rm rustup-init && \
	rustc --version && \
	cargo --version

RUN rustup component add rustfmt

RUN rustup target add aarch64-unknown-linux-gnu

RUN curl -LO https://github.com/esp-rs/rust-build/releases/download/v${RUST_VERSION}.0/install-rust-toolchain.sh && \
	chmod a+x install-rust-toolchain.sh && \
	./install-rust-toolchain.sh --toolchain-version ${RUST_VERSION}.0
