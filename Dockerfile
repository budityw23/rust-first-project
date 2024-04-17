# Use the official Rust image as the base
FROM rust:latest

# Create a working directory inside the container
WORKDIR /app

# Copy your Rust project files into the container
COPY . .

# Install any required dependencies (if needed)
RUN cargo install --path . 

# Build the Rust project
RUN cargo build --release

# Define the command to execute when the container runs
CMD ["./target/release/my-rust-project"] 