# Rust HTTPS redirector

Use [Tokio](https://tokio.rs)'s minihttp to redirect HTTP to HTTPS.

## Usage

Compile with `cargo build --release` and run the resulting binary. It will run on port 8080.

To make it listen on port 80, another webserver is required or you can use Docker.

To run with Docker, issue `sudo docker run -p 80:8080 willwill/https-redirect`.

## Speed?

ab reported 72k req/s using the Docker container. [CoreOS's HTTPS redirector](quay.io/coreos/nginx-https-redirect) is 22k req/s.
The test is performed on Arch Linux, i5-6500 3.2GHz, 8GB RAM.

Note that minihttp is really benchmark oriented, it might not be suitable for real world web application use.
For example, keep alive is not supported. However redirecting everything to HTTPS doesn't require that (as you will always
get redirected to other port, so why keep the connection).

The resulting binary is only 558kB statically linked with musl, which saves a few bytes.

## License

MIT
