#!/bin/sh     
ssh ubuntu@$DEPLOY_SERVER <<EOF       
echo "Project Folder"
cd /var/www/test-angular-cicd
git pull origin/master  
rm -rf dist/pwa-example
mkdir dist/pwa-example
scp -r dist/ dist/pwa-example/
sudo systemctl restart nginx
exit      
EOF