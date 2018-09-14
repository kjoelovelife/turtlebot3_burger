#!/bin/bash


# This shell contains commands that install gedit and ssh , then create ssh key in ~/.ssh/username@hostname 


if [[ `id -u` -eq 0 ]] ; then
    echo "Do not run this with sudo (do not run random things with sudo!)." ;
    exit 1 ;
fi


sudo apt-get install -y gedit
sudo apt-get install -y 'ssh'

mkdir ~/.ssh
sudo chmod 0700 ~/.ssh 
echo "HostKeyAlgorithms ssh-rsa" >> ~/.ssh/config

ssh-keygen -P "" -h -f $HOME/.ssh/$USER@$HOSTNAME

echo "IdentityFile ~/.ssh/$USER@$HOSTNAME" >> ~/.ssh/config

sudo service ssh restart

# None of this should be needed. Next time you think you need it, let me know and we figure it out. -AC
# sudo pip install --upgrade pip setuptools wheel
