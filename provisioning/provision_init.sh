# install wget
yum update -y
sudo yum install wget -y

# install git
cd /etc/yum.repos.d/
yes | sudo wget http://wing-repo.net/wing/6/EL6.wing.repo
yes | sudo yum install git

# cloning nvm
cd ~/
git clone https://github.com/creationix/nvm.git ~/.nvm
source ~/.nvm/nvm.sh
nvm install v5.11.0

# export nvm path
echo "
# nvm設定
[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh
nvm use default
npm_dir=${NVM_PATH}_modules
export NODE_PATH=$npm_dir
" >> ~/.bash_profile

# setting default version
nvm alias default v0.10.26 /* default Node.js setting */
