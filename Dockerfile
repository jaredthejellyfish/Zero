FROM oven/bun:1.2.0

# Set the working directory
WORKDIR /app

# Install project dependencies
RUN bun install && bun db:dependencies

# Expose the default port
EXPOSE 3000

# Start the dev server
CMD ["bun", "dev"]
