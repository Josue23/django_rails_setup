# Before run this script, istall sudo and add your user to sudoers group
# apt-get sudo
# usermod -a -G sudo your_user

# Make sure the system is up to date
sudo apt-get update
sudo apt-get upgrade

# Install some dependencies
sudo apt-get install -y build-essential autoconf bison libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-sudo apt-get install -y build-essential autoconf bison libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-devsudo apt-get install -y build-essential autoconf bison libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev

# Heroku toobelt, for deploy in heroku...
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
# After run the command above, git and ruby also will be

# rbenv: A Ruby version manager
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# Add rbenv to PATH
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

# rbenv plugins...
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

# Install MySQL
sudo apt-get install mysql-client mysql-server libmysqlclient-dev

#Install PostgreSQL
sudo apt-get install postgresql postgresql-contrib libpq-dev

# For ruby on rails developers..
gem install rails
rbenv rehash

# For Python/Django developers...
wget -c https://bootstrap.pypa.io/get-pip.py && sudo python get-pip.py && rm get-pip.py
sudo pip install virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
mkdir -p $mkdir -p $WORKON_HOME
source /usr/local/bin/virtualenvwrapper.sh

## If you want/need python3.5, ucomment following lines...
# touch /etc/apt/sources.list.d/deadsnakes.list
# echo "deb http://ppa.launchpad.net/fkrull/deadsnakes/ubuntu trusty main" >> /etc/apt/sources.list.d/deadsnakes.list
# echo "deb-src http://ppa.launchpad.net/fkrull/deadsnakes/ubuntu trusty main" >> /etc/apt/sources.list.d/deadsnakes.list
# gpg --keyserver keyserver.ubuntu.com --recv-keys DB82666C
# gpg --export DB82666C | sudo apt-key add -
# apt-get update
# sudo apt-get install python3.5
