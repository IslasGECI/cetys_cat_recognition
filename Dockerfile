FROM ultralytics/ultralytics:latest-python

COPY . .

RUN apt update && apt install --yes make

RUN pip install dill
