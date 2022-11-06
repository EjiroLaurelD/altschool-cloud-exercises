#!/bin/bash
#update server
apt update

#install postgressql
apt install postgresql postgresql-contrib -y

#add PostgreSQL repo and GPG key
#sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
#wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

#update repository
#apt-get update -y

#install postgresql
#apt-get install postgresql-14 -y

#start and enable postgresql
systemctl start postgresql
systemctl enable postgresql

#log in to postgres
su - postgres

#open postgress
pgsl

#create database
CREATE DATABASE laureldb;

#create user
create user laureluser with encrypted password 'laurele';


#grant privilege
grant all privileges on database laureldb to laureluser;

