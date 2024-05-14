FROM ultralytics/ultralytics

COPY . .

RUN apt update && apt install --yes make
