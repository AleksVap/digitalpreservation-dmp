FROM ubuntu:16.04
RUN apt-get -yqq update
RUN apt-get install -yqq python3
RUN apt-get install -yqq python3-pip

ADD . /app
WORKDIR /app

RUN pip3 install -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "notebook", "--port=8888", "--allow-root", "--no-browser", "--ip=0.0.0.0"]