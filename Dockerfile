# C++ project development, testing and deployment template

FROM debian:12

# Install dependencies
RUN apt-get update && \
        apt-get upgrade -y && \
        apt-get install -y --no-install-recommends \
        build-essential \
        cmake \
        g++ \
        gcc \
        make

ENV CC=/usr/bin/gcc
ENV CXX=/usr/bin/g++

# Create project directory
WORKDIR /work

# Copy project files
COPY . .

# # Build project
RUN cmake -B/build && cmake --build /build

# # Set the entrypoint for the container
ENTRYPOINT ["/build/temp"]

