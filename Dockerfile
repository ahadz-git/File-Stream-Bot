FROM ubuntu:20.04

RUN apt-get -y update && apt-get -y upgrade && \
        apt-get install -y python3 python3-pip

RUN git clone https://github.com/ahadz-git/TG-FileStreamBot.git /root/bot

WORKDIR /root/bot

RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
