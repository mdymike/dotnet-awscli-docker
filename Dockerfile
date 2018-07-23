FROM microsoft/dotnet:2.1-sdk-alpine

# Versions: https://pypi.python.org/pypi/awscli#downloads
ENV AWS_CLI_VERSION 1.15.63

ENV DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1 
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less && \
    pip --no-cache-dir install awscli==${AWS_CLI_VERSION} && \
    rm -rf /var/cache/apk/*

RUN apk add --no-cache docker