# speedtest

[![Build and Push Docker Image](https://github.com/rweijnen/speedtest/actions/workflows/docker-image.yml/badge.svg)](https://github.com/rweijnen/speedtest/actions/workflows/docker-image.yml)

Builds docker container for a speedtest cli alternative from https://github.com/taganaka/SpeedTest

Current platforms: AMD64 and ARM64

Images are on [DockerHub](https://hub.docker.com/r/rweijnen/speedtest).

Recommend to run with `network=host` 

### How to Pull and Run the `rweijnen/speedtest` Docker Image

This Docker image allows you to run a speed test directly on your machine or server.

#### 1. Pull the Docker Image

To download the latest version of the Docker image, run the following command:

```bash
docker pull rweijnen/speedtest:latest
```

#### 2. Run the Docker Container

To run the speed test using the Docker container, use the following command. This command runs the container and removes it after the test completes, using the host's networking stack for accurate speed results:

```bash
docker run --rm --network=host rweijnen/speedtest
```

- `--rm`: This flag removes the container after it has finished running.
- `--network=host`: This ensures that the container uses the host's network interface, giving more accurate speed test results.

#### Example Output

When you run the container, it will execute the speed test and print the results directly in your terminal.

```
$ docker run --rm --network=host rweijnen/speedtest
SpeedTest++ version 1.15
Speedtest.net command line interface
Info: https://github.com/taganaka/SpeedTest
Fixed: https://github.com/gglluukk/SpeedTest
Author: Francesco Laurita <francesco.laurita@gmail.com>

IP: "77.175.182.36" ("KPN B.V.") Location: [52.0767, 4.29861]
Finding fastest server... 10 Servers online

Server: Amsterdam speedtest.ams1.hivelocity.net:8080 by Hivelocity (52.1365 km from you): 5 ms
Ping: 5 ms.
Jitter: 0 ms.
Determine line type (2) ........................
Fiber / Lan line type detected: profile selected fiber

Testing download speed (32) ......................................................................................................................................................................................................................................................................................
Download: 963.14 Mbit/s
Testing upload speed (12) ..................................................................................................................................................................................................................................................................................................................................................................................................................................
Upload: 950.49 Mbit/s
```


