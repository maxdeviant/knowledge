#!/bin/sh

MDBOOK_VERSION=0.4.8

yum install wget

wget -q -O - "https://github.com/rust-lang/mdBook/releases/download/v$MDBOOK_VERSION/mdbook-v$MDBOOK_VERSION-x86_64-unknown-linux-gnu.tar.gz" | tar xzf - -C /usr/local/bin

mdbook build
