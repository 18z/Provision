apt-get update

apt-get install -y vim git tig python-dev python-pip tmux mongodb

git config --global user.name "name"
git config --globla user.email "email"

git clone https://github.com/deanboole/provision.git

mv provision/tmux.conf /root/tmux.conf

pip install virtualenv pymongo flask

