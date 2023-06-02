##syntax=docker/dockerfile:1
FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y python3 python-pip
RUN pip3 install flask
COPY /hello.py /bin/hello.py
CMD [ "/bin/hello.py"]
ENTRYPOINT ["python3"] -D FOREGROUND
