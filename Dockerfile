FROM scratch AS build
WORKDIR /home/bhavani/spin-server-rust
COPY . .

FROM scratch
COPY --from=build /home/bhavani/spin-server-rust/spin.toml .
COPY --from=build /home/bhavani/spin-server-rust/target/wasm32-wasi/release/spin_server_rust.wasm ./target/wasm32-wasi/release/spin_server_rust.wasm
