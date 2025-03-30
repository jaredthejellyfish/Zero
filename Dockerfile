FROM oven/bun:1.2.0

# ✅ Use apt instead of apk for Debian-based image
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Clone the repo
RUN git clone https://github.com/your-username/Zero.git .

# Install deps
RUN bun install && bun db:dependencies

EXPOSE 3000

CMD ["bun", "dev"]
