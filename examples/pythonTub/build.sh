#!/usr/bin/bash
echo Preparing to run web-app...
echo . /container/env.sh
. /container/env.sh
echo Installing python 2.7...
echo apt-get install -y python
apt-get install -y python
echo Installing java7...
echo apt-get install -y openjdk-7-jre openjdk-7-jdk maven ant
apt-get install -y openjdk-7-jre openjdk-7-jdk maven ant
echo Installing nodejs...
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install stable
echo Installing ruby...
sudo apt-get install -y ruby
echo Installing bundle...
gem install bundle

cd ./app
echo Installing dependencies...
pip install -r req.txt
echo python install.py
python install.py
echo Building...
python build.py
