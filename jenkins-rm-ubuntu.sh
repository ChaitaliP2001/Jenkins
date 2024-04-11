#complete removal of jenkins on ubuntu
#!/bin/bash

# Stop Jenkins service
sudo systemctl stop jenkins

# Uninstall Jenkins
sudo apt-get purge --auto-remove -y jenkins

# Remove Jenkins data and configuration files
sudo rm -rf /var/lib/jenkins
sudo rm -rf /etc/default/jenkins
sudo rm -rf /etc/init.d/jenkins
sudo rm -rf /etc/systemd/system/jenkins.service

# Remove Jenkins user and group (if not needed for other purposes)
sudo deluser jenkins
sudo delgroup jenkins

# Clean up any residual packages
sudo apt-get autoremove -y
