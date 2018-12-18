##Install Azure CLI
sudo apt-get install apt-transport-https lsb-release software-properties-common -y
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \
    sudo tee /etc/apt/sources.list.d/azure-cli.list

 sudo apt-key --keyring /etc/apt/trusted.gpg.d/Microsoft.gpg adv \
     --keyserver packages.microsoft.com \
     --recv-keys BC528686B50D79E339D3721CEB3E94ADBE1229CF

sudo apt-get update
sudo apt-get install azure-cli

## Install Curl
sudo apt-get install curl

## Install Terrafrom
sudo apt-get install unzip
wget https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip
unzip terraform_0.11.10_linux_amd64.zip
sudo mv terraform /usr/local/bin/

## Install Kubernetes helm
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get > get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh
helm init

## Install ZSH
sudo apt-get install zsh
sudo apt-get install git-core
sudo wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
sudo chsh -s `which zsh`
sudo shutdown -r 0