#complete removal of jenkins on CentOs/RHEL
#!/bin/bash

# Stop Jenkins service
sudo systemctl stop jenkins

# Uninstall Jenkins
sudo yum remove -y jenkins

# Remove Jenkins data and configuration files
sudo rm -rf /var/lib/jenkins
sudo rm -rf /etc/sysconfig/jenkins
sudo rm -rf /etc/init.d/jenkins
sudo rm -rf /etc/systemd/system/jenkins.service

# Remove Jenkins user and group (if not needed for other purposes)
sudo userdel jenkins
sudo groupdel jenkins

# Clean up any residual packages
sudo yum autoremove -y