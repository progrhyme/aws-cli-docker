# aws-cli-docker

Dockerfile for container to run Amazon [AWS CLI](https://aws.amazon.com/cli/).

Images are available on https://hub.docker.com/r/progrhyme/aws-cli/ .

# Usage

```sh
docker run -it progrhyme/aws-cli <ARGS...>
```

This runs `aws` command through the container.

To specify your credentials to `aws` command, pass as environment variables:

```sh
docker run -it \
  -e AWS_ACCESS_KEY_ID="<id>" \
  -e AWS_SECRET_ACCESS_KEY="<key>" \
  -e AWS_DEFAULT_REGION="<region>" \
  progrhyme/aws-cli <ARGS...>
```

# Alternatives

- https://hub.docker.com/r/mesosphere/aws-cli/
