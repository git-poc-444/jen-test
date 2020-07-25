#!/bin/sh     
sshpass -p Lets@1118 ssh ubuntu@$DEPLOY_SERVER <<EOF       
echo "Project Folder"
cd /var/www/test-angular-cicd
sudo git pull origin/master  
sudo rm -rf dist/pwa-example
sudo mkdir dist/pwa-example
sudo scp -r dist/ dist/pwa-example/
sudo systemctl restart nginx
exit      
EOF