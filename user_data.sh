#!/bin/bash

sudo yum update -y
#sudo yum install httpd -y
#sudo service httpd on
#sudo service httpd start

# HOMEPATH="/home/ec2-user"
# cd $HOMEPATH
# curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.26.4/2023-05-11/bin/linux/amd64/kubectl
# chmod +x ./kubectl
# mkdir -p $HOMEPATH/bin && cp ./kubectl $HOMEPATH/bin/kubectl && export PATH=$HOMEPATH/bin:$PATH

# echo 'export PATH=$HOMEPATH/bin:$PATH' >> ~/.bashrc

# for ARM systems, set ARCH to: `arm64`, `armv6` or `armv7`
ARCH=amd64
PLATFORM=$(uname -s)_$ARCH

# Download kubectl and eksctl
curl -sLO https://s3.us-west-2.amazonaws.com/amazon-eks/1.26.4/2023-05-11/bin/linux/amd64/kubectl
chmod +x ./kubectl

curl -sLO "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$PLATFORM.tar.gz"
tar -xzf eksctl_$PLATFORM.tar.gz -C /tmp && rm eksctl_$PLATFORM.tar.gz

sudo mv kubectl /usr/local/bin
sudo mv /tmp/eksctl /usr/local/bin