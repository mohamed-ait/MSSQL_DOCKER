#!/bin/bash

set -x
#--------------------->  Deploy process
# Get The password : 
echo "Enter your mssql server password !"
read -s MSSQL_PASS

# Deploy the server using docker compose command 
MSSQL_PASS="$MSSQL_PASS" docker compose -f ./docker-compose.yaml up -d
