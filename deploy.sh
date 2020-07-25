#!/bin/sh     
# ssh userName@development-server-ip <<EOF       
echo "Project Folder"
cd /var/www/test-angular-cicd
git pull      
rm -rf dist/pwa-example
mkdir dist/pwa-example
scp -r dist/ dist/pwa-example/
sudo systemctl restart nginx
exit      
