#!/bin/bash
# SHELL SCRIPT TO INSTALL DOCKER AND JENKINS

# Install Docker
sudo yum update
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER

# Install Jenkins
# Jenkins requires Java to run, so first install Java
sudo yum update
sudo yum install java-11-openjdk -y

# Long-Term Support release of Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade

# Add required dependencies for the jenkins package
sudo yum install java-11-openjdk -y 
sudo yum install jenkins -y
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Verify installations
docker --version
java -version
jenkins --version
sudo systemctl status jenkins
