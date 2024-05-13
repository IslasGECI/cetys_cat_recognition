FROM python:3

WORKDIR /workdir
COPY . .

RUN apt update && apt install --yes make

RUN pip install \
    ultralytics

#RUN make init
