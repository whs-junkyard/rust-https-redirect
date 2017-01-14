FROM scratch
COPY target/x86_64-unknown-linux-musl/release/rust-https-redirect /app
USER 1000
EXPOSE 8080
CMD ["/app"]
