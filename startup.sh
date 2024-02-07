echo "Creating storage folder"
mkdir ./data
sudo chmod 777 ./data

echo "Creating logs folder"
mkdir ./logs
sudo chmod 777 ./logs

echo "Creating postgres database folder"
mkdir ./postgres
sudo chmod 777 ./postgres

echo "Creating postgres pgadmin folder"
mkdir ./pgadmin
sudo chmod 777 ./pgadmin

echo "Running docker compose up -d" 
docker compose up -d

