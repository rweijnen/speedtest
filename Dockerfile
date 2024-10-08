FROM alpine:latest AS builder

# Set environment variables for non-interactive apk
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install dependencies
RUN apk -U update && \
    apk -U upgrade && \
    apk -U add --no-cache \
    build-base \
    cmake \
    curl-dev \
    libxml2-dev \
    openssl-dev \
    git

# Clone the SpeedTest repository
RUN git clone https://github.com/taganaka/SpeedTest /opt/SpeedTest

# Change directory to the cloned repository
WORKDIR /opt/SpeedTest

# Build the SpeedTest project
RUN cmake -DCMAKE_BUILD_TYPE=Release . && \
    make && \
    make install

# Clean up unnecessary files
RUN apk del --no-cache git

ENTRYPOINT ["SpeedTest"]
