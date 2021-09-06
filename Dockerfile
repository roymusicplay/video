FROM python:3.9.7-slim-buster
RUN apt update && apt upgrade -y
RUN apt-get install python3-pip -y
RUN apt-get install ffmpeg -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g npm@7.22.0
WORKDIR /app
COPY . /app
RUN pip3 install --upgrade pip
RUN pip3 install -U -r requirements.txt
CMD python3 -m vcbot
