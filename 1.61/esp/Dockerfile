# vim:set ft=dockerfile:

FROM cimg/rust:1.61.0

LABEL maintainer="Maxime Borges <maxime@yaak.ai>"

ENV RUST_VERSION=1.61.0 \
	PATH=/home/circleci/.cargo/bin:$PATH

RUN curl -LO https://github.com/esp-rs/rust-build/releases/download/v${RUST_VERSION}.0/install-rust-toolchain.sh && \
	chmod a+x install-rust-toolchain.sh && \
	./install-rust-toolchain.sh --toolchain-version ${RUST_VERSION}.0
