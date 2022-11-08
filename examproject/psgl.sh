#!/bin/bash

# Check update
sudo apt -y update

# Add Keys
sudo apt install vim curl gpg gnupg2 software-properties-common apt-transport-https lsb-release ca-certificates

# Curl PGSQL
curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/postgresql.gpg

# Add repo
echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list

# Update
sudo apt -y update

# Install PGSQL 15
sudo apt install -y postgresql-15

# Create database
sudo -i -u postgres psql -c "CREATE DATABASE laurel  WITH ENCODING 'UTF8' TEMPLATE template0"

# Create User
sudo -i -u postgres psql -c "CREATE USER ejiro WITH ENCRYPTED PASSWORD 'laurele'"

# Grant user privilege on database
sudo -i -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE laurel to ejiro"

# Configure user login method in pg_hba.conf
echo -e 'local\tall\t\tgod\t\t\t\t\tmd5' >> /etc/postgresql/15/main/pg_hba.conf

# Restart PostgreSQL
sudo systemctl restart postgresql

# Login as user
psql -h localhost -U ejiro -d laurel
