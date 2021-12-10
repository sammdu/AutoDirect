#!/bin/bash

echo "> Stopping tomcat.service..."
sudo systemctl stop tomcat.service
echo "> Copying autodirect.war to the relevant directory..."
sudo rm -rf /opt/tomcat/webapps/autodirect*
sudo cp ./autodirect.war /opt/tomcat/webapps/
sudo chown tomcat:tomcat /opt/tomcat/webapps/autodirect.war
sudo chmod 755 /opt/tomcat/webapps/autodirect.war
echo "> Starting tomcat.service..."
sudo systemctl start tomcat.service
sudo systemctl status tomcat.service
