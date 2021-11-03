# fetch debian package
FROM debian

# copy python script to the package
COPY . /app

# update packages and install requiered packages
RUN apt-get -y update
RUN apt-get install -y python3 python3-pip wget
RUN apt install -y firefox-esr

# install firefox driver ( for selenium usage )
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.30.0/geckodriver-v0.30.0-linux64.tar.gz
RUN tar -C /usr/local/bin/ -xvf geckodriver-v0.30.0-linux64.tar.gz

# download and install selenium package for Python
RUN pip install -U selenium
