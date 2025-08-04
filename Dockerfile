FROM ubuntu:latest
LABEL authors="devendra"

ENTRYPOINT ["top", "-b"]