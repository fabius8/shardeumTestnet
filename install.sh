sudo apt update
sudo apt-get install curl -y
sudo apt install docker.io -y
docker --version
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
curl -O https://gitlab.com/shardeum/validator/dashboard/-/raw/main/installer.sh && chmod +x installer.sh
echo "y" | echo "y" | echo "wudi1234"| echo "" | echo ""| echo ""| echo ""|./installer.sh
docker exec shardeum-dashboard /bin/bash -c "operator-cli gui start"

