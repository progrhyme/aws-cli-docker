FROM python:3.6.3-alpine3.6
MAINTAINER progrhyme <progrhyme@gmail.com>

RUN apk -v --update add groff less && \
    rm /var/cache/apk/*

# Versions: https://pypi.python.org/pypi/awscli#downloads
ENV AWS_CLI_VERSION 1.12.1

RUN pip --no-cache-dir install awscli==${AWS_CLI_VERSION}

ENTRYPOINT ["aws"]
CMD ["help"]
