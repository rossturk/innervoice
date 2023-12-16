# Start with the latest flox image
FROM ghcr.io/flox/flox:latest

# We have to warm up the environment, this makes sure `.flox/run` exists
RUN ["/bin/sh", "-c", "flox activate", "--", "./build.sh"]

# Our entrypoint is the mud driver
ENTRYPOINT ["./build/bin/driver", "config.insidevoice"]
