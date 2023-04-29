FROM scratch AS build
LABEL org.opencontainers.image.source=https://github.com/soltybeans/spin-server-rust
WORKDIR /home/bhavani/spin-server-rust
COPY . .

FROM scratch
COPY --from=build /home/bhavani/spin-server-rust/spin.toml .
COPY --from=build /home/bhavani/spin-server-rust/target/wasm32-wasi/release/spin_server_rust.wasm ./target/wasm32-wasi/release/spin_server_rust.wasm
