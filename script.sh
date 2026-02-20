#!/bin/bash
# Copy new files from artifact directory to Apache web root
cp -r /home/ssm-user/codepipeline-artifact/* /var/www/html/

# Fix ownership and permissions
chown -R apache:apache /var/www/html/
chmod -R 755 /var/www/html/

# Restart Apache to apply changes
systemctl restart httpd
