#!/bin/bash

# Function to install JDK-11
install_jdk11() {
    # Add the JDK-11 repository
    sudo add-apt-repository ppa:openjdk-r/ppa -y
    sudo apt-get update
    # Install JDK-11
    sudo apt-get install openjdk-11-jdk -y
    # Verify the installation
    java -version
}

# Function to install tomcat 10 
install_tomcat10(){
    sudo apt install -y curl
    sudo apt install -y tomcat10
    sudo systemctl start tomcat10
    sudo systemctl enable tomcat10
    sudo systemctl status tomcat10
}

# Call the function to install JDK-11
install_jdk11
install_tomcat10
az login --service-principal -u 4683468e3te8c2qvt482348qg2 -p q3284ryq82c348q723cg48623 --tenant w346826482634623846