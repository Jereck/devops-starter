#!/bin/bash
yum update -y
yum install -y docker git
service docker start
usermod -a -G docker ec2-user

# Install docker-compose
curl -L "https://github.com/docker/compose/releases/download/v2.24.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Login to ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 412381774179.dkr.ecr.us-east-1.amazonaws.com

# Create docker-compose.yml
cat <<EOF > /home/ec2-user/docker-compose.yml
version: '3'
services:
  backend:
    image: 412381774179.dkr.ecr.us-east-1.amazonaws.com/devops-backend:latest
    ports:
      - "5001:5001"
  frontend:
    image: 412381774179.dkr.ecr.us-east-1.amazonaws.com/devops-frontend:latest
    ports:
      - "80:80"
EOF

# Start the containers
cd /home/ec2-user
docker-compose up -d