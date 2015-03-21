apt-get install ruby-dev
apt-get install gem
apt-get install make
apt-get install git





gem install knife-solo




new

sudo apt-get update
sudo apt-get install curl git-core build-essential zlib1g-dev libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libcurl4-openssl-dev libxml2-dev libxslt1-dev python-software-properties

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 2.1.5
rbenv global 2.1.5
gem install knife-solo

be knife solo prepare root@45.55.152.108

