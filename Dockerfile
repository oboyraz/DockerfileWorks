FROM ubuntu
RUN apt-get update
RUN apt-get install -y nano
RUN apt-get install -y nginx
RUN apt-get install -y python3
WORKDIR /app
COPY app.py /app
ENTRYPOINT [ "python3","app.py"]
CMD ['-p', "80"]

