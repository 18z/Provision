apt-get update

apt-get install -y vim git tig python-dev python-pip tmux mongodb

git clone https://github.com/deanboole/provision.git

mv provision/tmux.conf /root/.tmux.conf
mv provision/gitconfig /root/.gitconfig

pip install virtualenv pymongo flask

