sudo apt update -y
sudo apt upgrade -y

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927

echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

sudo apt update -y
sudo apt upgrade -y

sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20
sudo systemctl start mongod

sudo sed -i 's/^\(\s*bindIp:\).*/\1 0.0.0.0/' /etc/mongod.conf
sudo systemctl restart mongod
sudo systemctl enable mongod
# C:\Users\Mateusz\Documents\tech221\virtualisation\environment\db_script\scriptdb.sh
