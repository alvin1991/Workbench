
#install gdebi
sudo apt-get install gdebi


# install git
sudo apt-get install git -y
git config --global user.name "pengwei"
git config --global user.email "alvin.pengw@gmail.com"

#install sogo input

#install sublime https://blog.csdn.net/qq_30164225/article/details/53308666
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https 
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

#install chrome
sudo wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt-get update
sudo apt-get install google-chrome-stable

#install filezilla
sudo apt-get install filezilla -y


#install genromfs
sudo apt-get install genromfs -y

