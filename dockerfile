FROM debian

COPY . /app
RUN apt-get -y update
RUN apt-get install -y python3 python3-pip wget
RUN apt install -y firefox-esr
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.30.0/geckodriver-v0.30.0-linux64.tar.gz
RUN tar -C /usr/local/bin/ -xvf geckodriver-v0.30.0-linux64.tar.gz
RUN pip install -U selenium
CMD ["python3", "--version"]
