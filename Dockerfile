FROM microsoft/dotnet:2.1-sdk-alpine

# Versions: https://pypi.python.org/pypi/awscli#downloads
ENV AWS_CLI_VERSION 1.18.91

ENV DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1 
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1

RUN apk --no-cache update
RUN apk --no-cache add python3 py-pip py-setuptools ca-certificates groff less 
RUN pip3 --no-cache-dir install awscli==${AWS_CLI_VERSION} 
RUN apk add --no-cache jq 
RUN apk add --no-cache docker 
RUN rm -rf /var/cache/apk/*

RUN dotnet tool install --global Amazon.Lambda.Tools 

