FROM oven/bun:1.2.0

# Install git for cloning
RUN apk add --no-cache git

# Set the working directory
WORKDIR /app

# Install project dependencies
RUN bun install && bun db:dependencies

# Expose the default port
EXPOSE 3000

# Start the dev server
CMD ["bun", "dev"]
