yum install nginx -y
systemctl enable nginx
systemctl start nginx

curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"

cd /usr/share/nginx/html
rm -rf *
unzip -o /tmp/frontend.zip
mv frontend-main/* .
mv static/* .
rm -rf frontend-main README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf

sed -i -e '/catalogue/ s/localhost/catalogue.roboshop.internal' -e '/catalogue/ s/localhost/user.roboshop.internal' -e '/catalogue/ s/localhost/cart.roboshop.internal'

systemctl restart nginx


