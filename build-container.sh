#!/bin/bash
set -e
cargo build --release --target=x86_64-unknown-linux-musl
strip -s target/x86_64-unknown-linux-musl/release/rust-https-redirect
sudo docker build -t willwill/https-redirect .
