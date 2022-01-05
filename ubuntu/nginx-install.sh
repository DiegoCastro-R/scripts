#Step 1 – Installing Nginx
sudo apt update
sudo apt install nginx

#Step 2 – Adjusting the Firewall
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw status

#Step 3 – Checking your Web Server
systemctl status nginx
curl -4 icanhazip.com

#if have a default domain to connect
#sudo touch /etc/nginx/sites-available/your_domain 
#sudo ln -s /etc/nginx/sites-available/your_domain /etc/nginx/sites-enabled/

