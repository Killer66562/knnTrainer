FROM python:3.11-slim

COPY src/datasets /mnt/datasets

WORKDIR /opt
RUN mkdir knn

COPY src/train.py knn
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "python", "knn/train.py" ]