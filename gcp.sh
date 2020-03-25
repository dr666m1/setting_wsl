#!/bin/bash
cd $(dirname $0)

#===== prepare =====
#ver='2.7.0' # it seems not necessary
read -p '
input your project
: ' proj
read -p '
input your zone
e.g. us-west1-a
: ' zone
read -p '
input your sync directory
e.g. /mnt/c/Users/username/Documents/drive
: ' dir
read -p '
input the name of your compute engine
: ' gce
echo "#===== gcp =====" >> ~/.bashrc
#echo "export CLOUDSDK_PYTHON='$HOME/.pyenv/versions/$ver/bin/python'" >> ~/.bashrc # it seems not necessary
echo "alias mygce='gcloud compute ssh --project $proj --zone $zone $gce'" >> ~/.bashrc
echo "alias myscp_up='gcloud compute scp --recurse --project $proj --zone $zone $dir/sync $gce:~/'" >> ~/.bashrc
echo "alias myscp_down='gcloud compute scp --recurse --project $proj --zone $zone $gce:~/sync/ $dir'" >> ~/.bashrc
echo "export GCP_PROJECT=$proj" >> ~/.bashrc
echo "export GCP_ZONE=$zone" >> ~/.bashrc

#===== install =====
#pyenv install $ver
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install google-cloud-sdk=272.0.0-0 # something is wrong with the latest version
gcloud init
