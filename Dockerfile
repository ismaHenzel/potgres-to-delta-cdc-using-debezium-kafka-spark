FROM apache/spark-py:v3.4.0
MAINTAINER Ismael Henzel <ismaelhenzel33@gmail.com>
USER root

COPY src /app/src/
COPY requirements.txt requirements.txt

RUN chmod +x requirements.txt
RUN pip install -r requirements.txt 


