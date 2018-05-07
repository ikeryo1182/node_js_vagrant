# install wget
sudo yum update -y
sudo yum install wget -y

# install git
cd /etc/yum.repos.d/
yes | sudo wget http://wing-repo.net/wing/6/EL6.wing.repo
yes | sudo yum install git

# cloning nvm
cd ~/
git clone https://github.com/creationix/nvm.git ~/.nvm
source ~/.nvm/nvm.sh
nvm install v8.9.4

# export nvm path
echo '
# nvm設定
[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh
nvm use default
npm_dir=${NVM_PATH}_modules
export NODE_PATH=$npm_dir
' >> ~/.bash_profile
source ~/.bash_profile

# install yarn
npm install -g yarn


# show vesrion
node -v
npm -v
yarn -v
