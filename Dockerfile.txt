FROM ubuntu:latest
COPY . .
RUN apt update && apt install --yes make
