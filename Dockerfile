FROM python:3.7
USER root

COPY requirements.txt  .

RUN apt-get update && apt-get install -y \
    vim
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
RUN pip install --upgrade pip && \
    pip install --upgrade setuptools && \
    pip install -r requirements.txt
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm